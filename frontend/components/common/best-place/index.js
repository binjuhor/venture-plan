import React from 'react'
import { withLocalize } from 'react-localize-redux'

const BestPlace = ({ translate, BestPlaceContent }) => {
  
  return (
      <section className="best-place">
        <div className="anchorSection" id={'employment-at-venture-plans'}></div>
        <div className="container">
          <div className="best-place__inner">
            <div className="best-place__left">
              <div className="section__heading">
                <h3>{translate('t.work_at_the')} <span>{translate('t.best_place')}</span></h3>
              </div>
              <p>{BestPlaceContent}</p>
              <a href="#" className="btn">{translate("t.check_available_positions")}</a>
            </div>

            <div className="best-place__right">
              <figure>
                <img src="/images/about/best-place.jpg" alt="" />
              </figure>
            </div>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(BestPlace)