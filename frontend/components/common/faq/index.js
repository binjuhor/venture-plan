import React, { useState, useEffect } from 'react'
import FAQItem from './FAQItem'
import { withLocalize } from 'react-localize-redux'
import {fetchAPI} from '../../../lib/api'

const FAQ = ({ translate }) => {
  const [FAQs, setFAQs] = useState([])

  useEffect(() => {
    _fetchFAQ()
  }, [])

  const _fetchFAQ = async () => {
    try {
      const data = await fetchAPI('/faqs')

      if(data) setFAQs(data)
    } catch (err) {
      setFAQs([])
    }
  }

  return (
      <section className="faq">
        <div className="container">
          <div className="section__heading section__heading--medium">
            <h3><u>{translate("t.faq")}</u></h3>
            <h4>{translate("t.faq_sub")}</h4>
          </div>

          <div className="faq__inner">
            {FAQs.map(faq => <FAQItem {...faq} key={faq.id}/>)}
          </div>
        </div>
      </section>
  )
}

export default withLocalize(FAQ)
