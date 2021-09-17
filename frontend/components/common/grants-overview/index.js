import React, { useState } from 'react'
import { withLocalize } from 'react-localize-redux'

const GrantsOverview = ({ translate, Overview }) => {

  const [readMore, setReadMore] = useState(false)

  const _onReadMore = (e) => {
    e.preventDefault()

    setReadMore(!readMore)
  }

  return (
      <section className="overview">
        <div className="anchorSection" id={'overview'}></div>
        <div className="container">
          <div className="section__title">
            <h3><u>{translate("t.overview_title_1")} <span>{translate("t.overview_title_2")}</span></u></h3>
          </div>
          <div className={`overview__detail ${readMore ? 'active' : ''}`}>
            <p style={{ whiteSpace: "pre-wrap" }}>{Overview}</p>

            <div className="readmore-p">
              <a href="#" className={`readmore btn-select ${readMore ? 'active' : ''}`} onClick={_onReadMore}>{translate("t.read_more")}</a>
            </div>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(GrantsOverview)
