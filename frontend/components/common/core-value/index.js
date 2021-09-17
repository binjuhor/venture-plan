import React, { useState, useEffect } from 'react'
import Value from './Value'
import {fetchAPI} from '../../../lib/api'
import { withLocalize } from 'react-localize-redux'

const CoreValue = ({ translate }) => {
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
      <section className="core-value">
        <div className="container">
          <div className="section__title">
            <h3><u>{translate("t.our")} <span>{translate("t.core_values")}</span></u></h3>
          </div>
          <div className="core-value__list">
            {coreValues.map((value, index) => <Value {...value} index={index} key={value.Title}/>)}
          </div>
          <p>
            <a href="#" className="btn-select">{translate("t.read_more")}</a>
          </p>
        </div>
      </section>
  )
}

export default withLocalize(CoreValue)