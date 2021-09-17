import React, { useState, useEffect} from 'react'
import ContactBanner from '../components/common/contact-banner'
import ContactSection from '../components/common/contact-section'
import ThankyouSection from '../components/common/thankyou-section'
import Consultation from '../components/common/consultation'
import ContactInfo from '../components/common/contact-info'
import Talk from '../components/common/talk'
import Layout from '../components/layout'
import OurServices from '../components/common/our-services'
import {fetchAPI} from '../lib/api'
import useGlobalData from '../components/custom-hooks/useGlobalData'
import useUpdateRecentlyVisitedPages
  from '../components/custom-hooks/useUpdateRecentlyVisitedPages'

const initializeData = {
  BannerDesktop: null,
  BannerMobile: null,
  Title: "",
  HelpContent: "",
  ThanksContent: ""
}


const Contact = () => {
  useUpdateRecentlyVisitedPages('/contact', 'Contact')

  const [data, setData] = useState(initializeData)
  const globalData = useGlobalData()

  useEffect(() => {
    _fetchContactData()
  }, [])

  const _fetchContactData = async () => {
    try {
      const contactData = await fetchAPI("/contact-page")

      if(contactData) setData(contactData)
    } catch (err) {
      setData(initializeData)
    }
  }

  return (
    <Layout>
      <div className="contact-page">
        <ContactBanner {...data}/>
        <ContactSection {...data} {...globalData}/>
        <ThankyouSection {...data}/>
        <OurServices />
        <Consultation includeHeading={false}/>
        <ContactInfo {...globalData}/>
        <Talk />
      </div>
    </Layout>
  )
}

export default Contact