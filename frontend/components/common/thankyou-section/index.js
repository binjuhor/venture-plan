import React from 'react'
import { withLocalize } from 'react-localize-redux'

const ThankyouSection = ({ ThanksContent, translate }) => {

  return (
      <section className="thankyou-section">
        <div className="container">
          <div className="thankyou-section__inner">
            <h3>{translate('t.thanks_for_your_interest')}, <span>{translate("t.select_service_need_help")}</span>
            </h3>
            <p>{ThanksContent}</p>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(ThankyouSection)