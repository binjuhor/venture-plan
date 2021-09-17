import React, { useState } from 'react'
import { withLocalize } from 'react-localize-redux'

const Cookie = ({ translate }) => {

  const [showCookieContent, setShowCookieContent] = useState(false)
  const [showCookiePreference, setShowCookiePreference] = useState(false)
  const [acceptCookie, setAcceptCookie] = useState(false)

  return !acceptCookie && (
      <div className={showCookiePreference ? 'shown-cookie-preferences' : ''}>
        <section className="cookie">
          <div className="container">
            <div className="cookie__content">
              <div className="cookie__content--left">
                <h3>{translate("t.cookie_title")}</h3>
                <div className={`cookie__content--inner`} style={{ display: showCookieContent ? 'none' : 'block' }}>
                  <p>{translate("t.cookie_content_1")} <a href="#">{translate("t.cookie_policy")}</a> {translate("t.cookie_content_2")} <a href="#">{translate("t.privacy_policy")}</a> {translate("t.cookie_content_3")}</p>
                </div>
                <a href="#" className={`cookie__content--more ${showCookieContent ? 'active' : ''}`} onClick={(e) => {
                  e.preventDefault()

                  setShowCookieContent(!showCookieContent)
                }}>{translate("t.how_use_cookies")}</a>
              </div>

              <div className="cookie__content--right">
                <a href="#" className="btn-outline call-cookie-preferences" onClick={(e) => {
                  e.preventDefault()

                  setShowCookiePreference(true)
                }}>{translate("t.cookie_preferences")}</a>
                <a href="#" className="btn btn-primary accept-cookie" onClick={(e) => {
                  e.preventDefault()

                  setAcceptCookie(true)
                }}>{translate("t.cookie_accept")}</a>
              </div>
            </div>

            <div className="cookie__how-do-use" style={{ display: showCookieContent ? 'block' : 'none' }}>
              <div className="cookie__how-do-use--inner">
                <div className="cookie__how-do-use--col">
                  <h5>{translate("t.how_use_cookies_title_1")}</h5>
                  <p>{translate("t.how_use_cookies_content_1")}</p>
                </div>

                <div className="cookie__how-do-use--col">
                  <h5>{translate("t.how_use_cookies_title_2")}</h5>
                  <p>{translate("t.how_use_cookies_content_2")}</p>
                </div>

                <div className="cookie__how-do-use--col">
                  <h5>{translate("t.how_use_cookies_title_3")}</h5>
                  <p>{translate("t.how_use_cookies_content_3")}</p>
                </div>

                <div className="cookie__how-do-use--col">
                  <h5>{translate("t.how_use_cookies_title_4")}</h5>
                  <p>{translate("t.how_use_cookies_content_4")}</p>
                </div>
              </div>
            </div>
          </div>
        </section>

        <section className="cookie-preferences">
          <div className="cookie-preferences__inner">
            <div className="cookie-preferences__heading">
              <h3>{translate("t.cookie_preferences_title")}</h3>
              <p>{translate("t.cookie_preferences_content")} <a href="#">{translate("t.cookie_policy")}</a>.</p>
            </div>

            <div className="cookie-preferences__config">
              <div className="cookie-preferences__config--inner">
                <ul>
                  <li>
                    <h4>{translate("t.cookie_preferences_1")}</h4>
                    <a href="#">{translate("t.details")}</a>
                    <label className="switch">
                      <input type="checkbox" />
                      <span className="slider round" />
                    </label>
                  </li>
                  <li>
                    <h4>{translate("t.cookie_preferences_2")}</h4>
                    <a href="#">{translate("t.details")}</a>
                    <label className="switch">
                      <input type="checkbox" />
                      <span className="slider round" />
                    </label>
                  </li>
                  <li>
                    <h4>{translate("t.cookie_preferences_3")}</h4>
                    <a href="#">{translate("t.details")}</a>
                    <label className="switch">
                      <input type="checkbox" />
                      <span className="slider round" />
                    </label>
                  </li>
                  <li>
                    <h4>{translate("t.cookie_preferences_4")}</h4>
                    <a href="#">{translate("t.details")}</a>
                    <label className="switch">
                      <input type="checkbox" />
                      <span className="slider round" />
                    </label>
                  </li>
                  <li>
                    <h4>{translate("t.cookie_preferences_5")}</h4>
                    <a href="#">{translate("t.details")}</a>
                    <label className="switch">
                      <input type="checkbox" />
                      <span className="slider round" />
                    </label>
                  </li>
                  <li>
                    <h4>{translate("t.cookie_preferences_6")}</h4>
                    <a href="#">{translate("t.details")}</a>
                    <label className="switch">
                      <input type="checkbox" />
                      <span className="slider round" />
                    </label>
                  </li>
                </ul>
              </div>
            </div>

            <div className="cookie-preferences__bottom">
              <a href="#" className="btn btn-primary" onClick={(e) => {
                e.preventDefault()

                setShowCookiePreference(false)
              }}>{translate("t.accept")}</a>
            </div>

            <a href="#" className="cookie-preferences__close" onClick={(e) => {
              e.preventDefault()

              setShowCookiePreference(false)
            }}>
              <svg xmlns="http://www.w3.org/2000/svg" width="12.869"
                   height="12.869" viewBox="0 0 12.869 12.869">
                <g id="Group_1523" data-name="Group 1523"
                   transform="translate(-1050.293 -177.293)">
                  <g id="Group_1522" data-name="Group 1522"
                     transform="translate(-1.5 -0.5)">
                    <path id="Path_8023" data-name="Path 8023"
                          d="M-3714.41,1769.81l11.454-11.454"
                          transform="translate(4766.91 -1579.855)" fill="none"
                          stroke="#a7a7a7" strokeWidth="2"/>
                    <path id="Path_8024" data-name="Path 8024"
                          d="M-3714.41,1769.81l11.454-11.454"
                          transform="translate(2822.31 3892.91) rotate(90)"
                          fill="none" stroke="#a7a7a7" strokeWidth="2"/>
                  </g>
                </g>
              </svg>
            </a>
          </div>
        </section>
      </div>
  )
}

export default withLocalize(Cookie)
