import React from 'react'
import { withLocalize } from 'react-localize-redux'

const PassionResults = ({ PassionResults, translate }) => {

  return (
      <section className="passion-results">
        <div className="anchorSection" id={'our-passion'}></div>
        <div className="container">
          <div className="section__heading" style={{marginBottom: '0 !important'}} >
            <h3 style={{fontSize: '26px'}}>{translate("t.passion_for")} <span>{translate("t.results")}</span></h3>
          </div>

          <div className="passion-results__inner">
            {PassionResults.map(({ id, Title, Content}) => (
              <p style={{fontSize: '20px'}} key={id}>
                <strong>{Title}</strong><br />{Content}
              </p>
            ))}
          </div>

          <div className="passion-results__bottom">
            <a href="#" className="btn">{translate('t.get_a_free_consultation')}</a>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(PassionResults)