import React from 'react'
import { withLocalize } from 'react-localize-redux'

const Consultation = ({ bgBottom = true, headingLarge = true, includeHeading = true, translate }) => {

  return (
      <section className={`consultation ${bgBottom ? 'bg-bottom' : ''} ${headingLarge ? 'heading-large' : ''}`}>
        <div className="container">
          {!!includeHeading && (
              <div className="consultation__heading">
                <h3>{translate("t.consultation_title")}</h3>
                <h4>{translate("t.consultation_subtitle")}</h4>
                {/* @todo: need options for show and hide this button */}
                <a href="#" className="btn">{translate("t.book_free_consultation")}</a>
              </div>
          )}
          <div className="featured-in">
            <h3>{translate('t.as')} <span className="text-pc">{translate("t.featured")}</span><span
                className="text-sp">{translate("t.seen")}</span> {translate("t.in")}</h3>
            <div className="featured-in__list">
              <figure>
                <img src="/images/home/bbc-logo_2x.png" alt=""/>
              </figure>
              <figure>
                <img src="/images/home/lat-logo_2x.png" alt=""/>
              </figure>
              <figure>
                <img src="/images/home/cbs-logo_2x.png" alt=""/>
              </figure>
              <figure>
                <img src="/images/home/nbc-logo_2x.png" alt=""/>
              </figure>
              <figure>
                <img src="/images/home/fox-logo_2x.png" alt=""/>
              </figure>
            </div>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(Consultation)