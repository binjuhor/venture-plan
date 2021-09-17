import React, { useState } from 'react'
import { withLocalize } from 'react-localize-redux'
import {getStrapiURL} from '../../../lib/api'

const ProcessItem = ({ step, Title, Content, Image, translate }) => {
  const [readMore, setReadMore] = useState(false)

  return (
      <div className="process__item">
        <div className="process__item--content">
          <span>{step}</span>
          <h3>{Title}</h3>
          <div className={`process__item--text content-more ${readMore ? 'active' : ''}`}>
            <div className="content-more__inner">
              <p>{Content}</p>
            </div>

            <a href="#" className={`btn-read-more ${readMore ? 'active' : ''}`} tabIndex="0" onClick={(e) => {
              e.preventDefault()

              setReadMore(!readMore)
            }}>{translate("t.read")} <span>{translate("t.more")}</span><span>{translate("t.less")}</span></a>
          </div>
        </div>
        <figure>
          <img src={`${getStrapiURL()}${Image.url}`} alt="" />
        </figure>
      </div>
  )
}

export default withLocalize(ProcessItem)