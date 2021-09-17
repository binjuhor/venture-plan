import React from 'react'
import { withLocalize } from 'react-localize-redux'

const ContactSection = ({ translate, HelpContent, PhoneNumber, Email }) => {

  return (
      <section className="contact-section">
        <div className="container">
          <div className="contact-section__inner">
            <div className="contact-section__left">
              <h3><u>{translate("t.what_can_we")} <span>{translate("t.help_you_with")}</span></u></h3>
              <p>{HelpContent}</p>
            </div>
            <div className="contact-section__right">
              <div className="contact-section__info">
                <h4>{translate("t.need_assistance")}</h4>
                <div className="contact-section__info--detail">
                  <a href="tel:0123456789">
                    <svg xmlns="http://www.w3.org/2000/svg" width="19.07"
                         height="19.116" viewBox="0 0 19.07 19.116">
                      <path id="phone"
                            d="M1.282.707c.763-.765,3.07-.893,3.087-.488s2.077,4.891,2.1,5.3S5.107,7.3,4.7,7.7s2.692,3.9,2.75,3.967,3.559,3.157,3.958,2.757,1.779-1.782,2.181-1.764,4.88,2.082,5.284,2.1.276,2.329-.487,3.094c-.653.654-4.032,3.028-9.907-1.212A18.631,18.631,0,0,1,5.271,13.87l0,0,0,0,0,0,0,0a18.7,18.7,0,0,1-2.768-3.22C-1.739,4.748.63,1.361,1.282.707Z"
                            transform="translate(-0.032 0.006)" fill="#00a1f1"/>
                    </svg>
                    {PhoneNumber}
                  </a>
                  <a href="mailto:info@ventureplans.net">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24.237"
                         height="16.157" viewBox="0 0 24.237 16.157">
                      <path id="mail"
                            d="M2.372,8.132l10.1,5.425a2.916,2.916,0,0,0,2.441,0l10.1-5.425c.658-.354,1.281-1.732.072-1.732H2.3c-1.208,0-.586,1.378.072,1.732ZM25.316,11.1c-.747.389-9.946,5.182-10.4,5.422a2.293,2.293,0,0,1-1.22.268,2.3,2.3,0,0,1-1.22-.268c-.458-.239-9.6-5.034-10.352-5.424-.525-.274-.52.047-.52.295v9.82a1.639,1.639,0,0,0,1.346,1.346H24.489a1.639,1.639,0,0,0,1.346-1.346V11.392c0-.247.005-.57-.521-.295Z"
                            transform="translate(-1.599 -6.4)" fill="#919191"/>
                    </svg>
                    {Email}
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(ContactSection)