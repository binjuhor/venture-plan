import React, { useState } from 'react'
import { withLocalize } from 'react-localize-redux'

const AboutOverview = ({ translate, AboutUs }) => {
  const [readMore, setReadMore] = useState(false)

  return (
      <section className="overview" id="overview">
        <div className="anchorSection" id={'about-us'}></div>
        <div className="container">
          <div className="overview__inner">
            <div className="section__title">
              <h3><u>{translate("t.about")} <span>{translate("t.us")}</span></u></h3>
            </div>

            <div className={`overview__detail ${readMore ? 'active' : ''}`}>
              <p>{AboutUs}</p>
              <div className="readmore-p">
                <a href="#"
                   className={`readmore btn-select ${readMore ? 'active' : ''}`}
                   onClick={(e) => {
                     e.preventDefault()

                     setReadMore(!readMore)
                   }}
                >{translate("t.read")} <span>{translate("t.more")}</span><span>{translate("t.less")}</span></a>
              </div>
            </div>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(AboutOverview)