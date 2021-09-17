import React, { useState } from 'react'
import { withLocalize } from 'react-localize-redux'

const Overview = ({ CompanyOverview = "", translate }) => {
  const [readMore, setReadMore] = useState(false)

  const _onReadMore = (e) => {
    e.preventDefault()

    setReadMore(!readMore)
  }

  return (
    <section className="overview hide-sp">
      <div className="container">
        <div className="section__title">
          <h3><u>{translate("t.our_company")} <span>{translate("t.overview")}</span></u></h3>
        </div>
        <div className={`overview__detail ${readMore ? 'active' : ''}`}>
          <p style={{ whiteSpace: "pre-wrap" }}>{CompanyOverview}</p>

          <div className="readmore-p">
            <a href="#" className={`readmore btn-select ${readMore ? 'active' : ''}`} onClick={_onReadMore}>{translate('t.read_more')}</a>
          </div>
        </div>
      </div>
    </section>
  )
}

export default withLocalize(Overview)