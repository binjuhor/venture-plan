import React, { useEffect } from "react";
import { renderToStaticMarkup } from "react-dom/server";
import { withLocalize } from "react-localize-redux";
import en from "./translations/en.json";
import fr from "./translations/fr.json";

const AppLocalize = ({ children, initialize, addTranslationForLanguage }) => {
  useEffect(() => {
    initialize({
      languages: [
        { name: "English", code: "en" },
        { name: "France", code: "fr" },
      ],
      options: {
        renderToStaticMarkup,
        defaultLanguage: "en",
        onMissingTranslation: () => ""
      }
    })

    addTranslationForLanguage(en, "en")
    addTranslationForLanguage(fr, "fr")
  }, [])

  return (
      <>
        {children}
      </>
  )
}

export default withLocalize(AppLocalize)