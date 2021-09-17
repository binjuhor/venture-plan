import React, { useState, useEffect } from 'react'
import { withLocalize } from 'react-localize-redux'
import {fetchAPI} from '../../../lib/api'
import ServiceItem from './ServiceItem'

const Services = ({ translate }) => {
  const [services, setServices] = useState([])

  useEffect(() => {
    _fetchServices()
  }, [])

  const _fetchServices = async () => {
    try {
      const data = await fetchAPI('/services')

      setServices(data)
    } catch (err) {
      setServices([])
    }
  }

  return (
      <section className="services-section">
        <div className="container">
          <div className="services-section__inner">
            <div className="services-section__list">
              {services.map((service, index) => <ServiceItem {...service}  key={index} index={index+1}/>)}
            </div>
            <a href="#" className="btn btn-primary">{translate("t.book_free_consultation")}</a>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(Services)