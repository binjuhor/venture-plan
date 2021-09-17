import React, { useState, useEffect } from 'react'
import Layout from '../components/layout'
import BusinessContactBanner from '../components/common/business-contact-banner'
import BusinessScrollMenu from '../components/common/business-scroll-menu'
import TrustCertificate from '../components/common/trust-certificate'
import Consultation from '../components/common/consultation'
import Statistic from '../components/common/statistic'
import ClientWords from '../components/common/client-words'
import CoreValue from '../components/common/core-value'
import OurServices from '../components/common/our-services'
import Testimonial from '../components/common/testimonial'
import Brand from '../components/common/brand'
import BusinessPlan from '../components/common/business-plan'
import {fetchAPI} from '../lib/api'
import useUpdateRecentlyVisitedPages
  from '../components/custom-hooks/useUpdateRecentlyVisitedPages'

const initializeData = {
  BannerDesktop: null,
  BannerMobile: null,
  Title: "",
  Subtitle: "",
  Description: "",
  SamplePlan: null
}

const Business = () => {
  useUpdateRecentlyVisitedPages('/business', 'Business')

  const [data, setData] = useState(initializeData)

  useEffect(() => {
    _fetchBusinessData()
  }, [])

  const _fetchBusinessData = async () => {
    try {
      const businessData = await fetchAPI("/business-page")

      if(businessData) setData(businessData)
    } catch (err) {
      setData(initializeData)
    }
  }

  return (
      <Layout>
        <div className="business-page">
          <BusinessContactBanner {...data}/>
          <BusinessScrollMenu />
          <TrustCertificate />
          <Consultation />
          <Statistic />
          <ClientWords />
          <CoreValue />
          <OurServices />
          {!!data.SamplePlan && <BusinessPlan {...data}/>}
          <Testimonial />
          <Brand />
        </div>
      </Layout>
  )
}

export default Business