import React, {useEffect, useState} from 'react'
import { withLocalize } from 'react-localize-redux'
import {fetchAPI} from '../../../lib/api'
import Value from './Value'

const Culture = ({ translate }) => {

  const [coreValues, setCoreValues] = useState([])

  useEffect(() => {
    _fetchCoreValues()
  }, [])

  const _fetchCoreValues = async () => {
    try {
      const data = await fetchAPI('/core-values')

      setCoreValues(data)
    } catch (err) {
      console.log(err)
      setCoreValues([])
    }
  }

  return (
      <section className="culture">
        <div className="anchorSection" id={'our-culture'}></div>
        <div className="section__heading">
          <h3>{translate("t.our")} <span>{translate("t.core_values")}</span></h3>
        </div>

        <div className="culture__heading">
          <figure>
            <img className="culture__bg-pc"
                 src="/images/about/culture.jpg" alt="" />
            <img className="culture__bg-sp"
                 src="/images/about/culture-sp.jpg" alt="" />
          </figure>

          <div className="container">
            <div className="culture__heading--inner">
              <h2>{translate("t.culture_heading")}</h2>
            </div>
          </div>
        </div>

        <div className="container">
          <div className="culture__list">
            {coreValues.map(value => <Value {...value} key={value.id}/>)}
          </div>

          <div className="culture__bottom">
            <a href="#" className="btn">{translate("t.get_a_free_consultation")}</a>
          </div>
        </div>
      </section>
  )
}
  
export default withLocalize(Culture)
