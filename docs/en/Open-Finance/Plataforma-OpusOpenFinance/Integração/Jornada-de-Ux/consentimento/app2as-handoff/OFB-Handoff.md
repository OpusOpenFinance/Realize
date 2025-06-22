---
layout: default
title: "Handoff"
parent: "Mobile App and Web"
nav_order: 3
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Plataforma-OpusOpenFinance/Integração/Jornada-de-Ux/consentimento/app2as-handoff/OFB-Handoff/"
---

# *Hybrid-flow* with *Handoff*

Institutions that authenticate users only through mobile apps need to support the *Hybrid-flow* with *Handoff* to allow consents initiated on devices that do not support app execution, typically a desktop or a laptop.

The Opus Open Finance Authorization Server (AS) supports the *handoff* flow and provides a *Javascript* library that allows the institution to fully customize the webpage that will be displayed to the client.

The *handoff* library was created to allow the institution to obtain all the information related to the *handoff* consent flow, from the data to display the QR code to the events related to the flow.

The Opus Open Finance Authorization Server hosts the library at the URL `https://as.instituicao.com.br/auth/handoff/v1/oob-handoff.js` and it should be referenced directly instead of being copied and hosted on another web server.

## Opus Open Finance Flow with *Handoff*

The caller (the data-receiving institution or the payment transaction initiator) is unaware if the Open Finance installation they are calling uses *handoff*, and this is not their responsibility. The OIDC flow initiated by them redirects the client's browser to the Opus Open Finance Authorization Server, which in turn redirects the browser to the *handoff* page created by the institution.

The Authorization Server has a configuration that defines the *handoff* URL template created by the institution. This way, the consent intent identifier that will be processed by the *handoff* page can be embedded in the URL in any way the institution desires.

The embedding allows the institution to receive the identifier through the `query-string`, `fragment`, or `url`, as shown in the table below:

| Format       | Example URL                                                        |
| ------------ | ------------------------------------------------------------------ |
| Query string | `https://ev.instituicao.com.br/handoff.html?codigo=<IDENTIFIER>`   |
| Fragment     | `https://ev.instituicao.com.br/handoff.html#<IDENTIFIER>`          |
| URL          | `https://ev.instituicao.com.br/<IDENTIFIER>/handoff.html`          |

The *handoff* page must obtain the identifier and use it when initializing the library as shown below. The example provided in the documentation passes the identifier through the `fragment` of the URL, and it should be the preferred format if possible. It also removes the identifier from the browser history, preventing any confusion when the client tries to use an old consent URL.

The page must also point to the Authorization Server installation (public address) when initializing the library through the configuration **oobAsPublicUrl** as shown below.

## How to use the library

After importing the library into the HTML page, the variable `oobHandoff` will contain the entry point to the library, and it must be initialized through the `init` method by passing the identifier received during the Authorization Server redirect and the event handlers that will be triggered.

```Javascript
oobHandoff.init({
    oobStartCode: '<IDENTIFIER>',
    oobAsPublicUrl: '<OOB_AS_PUBLIC_URL>',
    onHandoffReady: function(handoffReady) {
        // Text for QR and alternative code for typing ready
    },
    onHandoffQRRead: function() {
        // User has read the QR or entered the alternative code
    },
    onHandoffTimedOut: function(handoffError) {
        // Timeout for completing the consent expired
    },
    onHandoffCompleted: function(handoffCompleted) {
        // Consent completed successfully
    },
    onHandoffError: function(handoffError) {
        // An error occurred during consent
    }
});
```

The event parameters contain necessary information for each moment. The objects are detailed below.

### handoffReady

Schema:

```json
{
    "qrCode": "<string>",
    "timeoutSeconds": <int>,
    "typeCode": "<string>",
    "tppName": "<string>",
    "tppLogoUrl": "<string>"
}
```

| Property        | Description                                                                                                          |
| --------------- | -------------------------------------------------------------------------------------------------------------------- |
| `qrCode`        | Value to generate the QR code to be displayed to the user                                                           |
| `timeoutSeconds`| Total time available for completing the consent                                                                     |
| `typeCode`      | Alternative code for the client to enter in case of QR-Code reading failure. Only present if enabled in installation |
| `tppName`       | Name of the initiating payment institution                                                                            |
| `tppLogoUrl`    | Logo URL of the initiating payment institution                                                                       |

### handoffCompleted

Schema based on the `completedCommand` from the APP2AS interface:


```json
{
    "tpp": {
        "name": "<string>",
        "logoUrl": "<string>"
    },
    "completedCommand": {
        "redirect": {
            "redirectTo": "<string>"
        }
    }
}
```

| Property                             | Description                                                               |
| ------------------------------------ | ------------------------------------------------------------------------- |
| `tpp.name`                           | Name of the calling institution (TPP) to be displayed on the return screen |
| `tpp.logoUrl`                        | URL with the TPP logo to be displayed on the return screen                |
| `completedCommand.redirect.redirectTo`| URL for redirection after displaying the return screen to the user        |

### handoffError

Schema based on the `errorCommand` from the APP2AS interface:


```json
{
    "tpp": {
        "name": "<string>",
        "logoUrl": "<string>"
    },
    "errorCommand": {
        "type": "<string>",
        "message": "<string>",
        "redirect": {
            "redirectTo": "<string>"
        }
    }
}
```

| Property                            | Description                                                                                                                                                                                                                                  |
| ----------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `tpp.name`                          | Name of the TPP to be displayed on the return screen.                                                                                                                                                                                          |
| `tpp.logoUrl`                       | URL with the TPP logo to be displayed on the return screen                                                                                                                                                                                     |
| `errorCommand.type`                 | Type of error. Same `enum` from APP2AS: `CPF_MISMATCH`, `CNPJ_MISMATCH`, `EXPIRED_CONSENT`, `RESOURCE_MUST_CONTAIN_ID`, `GENERIC_ERROR`, `OIDC_ERROR`, `DISCOVERY_ERROR`, `RESOURCE_MUST_CONTAIN_ID_SELECTABLE_PRODUCTS`, `DISCOVERY_TIMEOUT`, `INVALID_STATUS_CONFIRMATION`, `INVALID_ENROLLMENT_INFORMATION` |
| `errorCommand.message`              | Error message to be displayed to the user on the return screen                                                                                                                                                                               |
| `errorCommand.redirect.redirectTo`  | URL for redirection after displaying the return screen to the user                                                                                                                                                                            |

The information `tpp.name`, `tpp.logoUrl`, `errorCommand.message`, and `errorCommand.redirect.redirectTo` may not be present in the response.

## Cancellation

The *handoff* screen reacts passively to events occurring in the flow. At any time, the user can actively abort the *handoff* flow. To do this, a "Cancel" button must be available on the screen.

To cancel the flow, a request must be made to the API `https://as.instituicao.com.br/auth/handoff/v1/<oobStartCode>/abort`, where **oobStartCode** is the same code used to start the library.

After cancellation, the screen should redirect the user back to the calling institution, and the app should inform the user (e.g., with an error message), interrupting the *handoff* flow.

## Example

A functional example application is available. There is an example *handoff* page that handles all the flow events. This example page is the one that the institution should create, host, and configure the URL for in the **Plataforma Opus Open Finance** installation.

The example application is using the *mocked* version of the library, which simulates 3 different scenarios through the identifiers listed in the table below.

| Identifier             | Scenario                                      |
| ---------------------- | --------------------------------------------- |
| L3YxL21vY2svc3VjY2Vzcw== | Consent successfully completed                |
| L3YxL21vY2svY3BmLWVycm9y | CPF_MISMATCH error                           |
| L3YxL21vY2svdGltZW91dA== | Timeout for consent completion                |

You can run the example application by hosting the `src` directory on a web server. To run it locally, we suggest using the package [`http-server`](https://www.npmjs.com/package/http-server) from [Node.js](https://nodejs.org/en/download/):

```bash
cd /src
npx http-server -p 3030 --cors -c-1

```

It is possible to start the mocked scenarios using the following URLs:

| Scenario    | URL                                                       |
| ----------- | --------------------------------------------------------- |
| Success     | <http://lvh.me:3030/sample.html#L3YxL21vY2svc3VjY2Vzcw==> |
| CPF_MISMATCH| <http://lvh.me:3030/sample.html#L3YxL21vY2svY3BmLWVycm9y> |
| Timeout     | <http://lvh.me:3030/sample.html#L3YxL21vY2svdGltZW91dA==> |

## Customizable *handoff* Page

If the institution prefers not to implement its own *handoff* page, it is possible to use the solution provided by Opus Open Finance: a complete page that configures the main aesthetic and content characteristics to adapt to the institution's style.

