import App from "next/app";
import Head from "next/head";
import "../assets/css/styles.css";
import { createContext } from "react";
import { PersistGate } from 'redux-persist/integration/react'
import { LocalizeProvider } from "react-localize-redux"
import { globalData } from '../lib/sampleData'
import { wrapper, persistor } from "../redux/store"
import AppLocalize from '../AppLocalize'
import { GoogleReCaptchaProvider } from 'react-google-recaptcha-v3'
export const GlobalContext = createContext({});

const MyApp = ({ Component, pageProps }) => {
  const { global } = pageProps;

  return (
    <>
      <Head>
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
              integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
              crossOrigin="anonymous" referrerPolicy="no-referrer"/>
      </Head>
      <GlobalContext.Provider value={global}>
        <LocalizeProvider>
          <PersistGate loading={null} persistor={persistor}>
            <AppLocalize>
              <GoogleReCaptchaProvider reCaptchaKey={process.env.NEXT_PUBLIC_RECAPTCHA_SITE_KEY}>
                <Component {...pageProps} />
              </GoogleReCaptchaProvider>
            </AppLocalize>
          </PersistGate>
        </LocalizeProvider>
      </GlobalContext.Provider>
    </>
  );
};

// getInitialProps disables automatic static optimization for pages that don't
// have getStaticProps. So article, category and home pages still get SSG.
// Hopefully we can replace this with getStaticProps once this issue is fixed:
// https://github.com/vercel/next.js/discussions/10949
MyApp.getInitialProps = async (ctx) => {
  // Calls page's `getInitialProps` and fills `appProps.pageProps`
  const appProps = await App.getInitialProps(ctx);
  // Fetch global site settings from Strapi
  // const global = await fetchAPI("/global");
  const global = globalData
  // Pass the data to our page via props
  return { ...appProps, pageProps: { global } };
};

export default wrapper.withRedux(MyApp);
