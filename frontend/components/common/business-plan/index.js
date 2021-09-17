import React, { useState } from 'react'
import { withLocalize } from 'react-localize-redux'
import {getFileSource} from '../../../utils/functions'

const BusinessPlan = ({ translate, SamplePlan }) => {
  const [readMore, setReadMore] = useState(false)

  return (
      <div className="business-plans">
        <div className="container">
          <div className="business-plans__inner">
            <div className="business-plans__left">
              <div className="section__heading">
                <h3><u><span>{translate("t.sample")}</span> {translate("t.business_plans")}</u></h3>
              </div>

              <div className={`business-plans__text content-more ${readMore ? 'active' : ''}`}>
                <div className="content-more__inner">
                  <p style={{ whiteSpace: "pre-wrap" }}>{SamplePlan.Content}</p>
                </div>

                <a href="#"
                   className={`btn-read-more ${readMore ? 'active' : ''}`}
                   tabIndex="0"
                   onClick={(e) => {
                     e.preventDefault()

                      setReadMore(!readMore)
                   }}
                >{translate("t.read")} <span>{translate("t.more")}</span><span>{translate("t.less")}</span></a>
              </div>

              <a href="#" className="btn hide-sp">{translate("t.download_our_sample")}</a>
            </div>

            <div className="business-plans__right">
              <figure>
                <img src={getFileSource(SamplePlan.Image)} alt="" />
              </figure>

              <a href="#" className="btn hide-pc">{translate("t.download_our_sample")}</a>
            </div>
          </div>
        </div>
      </div>
  )
}

export default withLocalize(BusinessPlan)