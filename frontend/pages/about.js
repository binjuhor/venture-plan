import React, { useState, useEffect } from 'react'
import AboutBanner from '../components/common/about-banner'
import AboutScrollMenu from '../components/common/about-scroll-menu'
import AboutOverview from '../components/common/about-overview'
import Culture from '../components/common/culture'
import Environment from '../components/common/environment'
import PassionResults from '../components/common/passion-results'
import OurFirm from '../components/common/our-firm'
import BestPlace from '../components/common/best-place'
import Talk from '../components/common/talk'
import Layout from '../components/layout'
import {fetchAPI} from '../lib/api'
import useUpdateRecentlyVisitedPages
  from '../components/custom-hooks/useUpdateRecentlyVisitedPages'

const initializeData = {
  Title: "",
  Subtitle: "",
  Description: "",
  AboutUs: "",
  BestPlaceContent: "",
  PassionResults: [],
  EnvironmentVideo: null,
  BannerDesktop: null,
  BannerMobile: null
}

const About = () => {
  useUpdateRecentlyVisitedPages('/about', 'About')

  const [data, setData] = useState(initializeData)

  useEffect(() => {
    _fetchAboutData()
  }, [])

  const _fetchAboutData = async () => {
    try {
      const aboutData = await fetchAPI("/about-page")

      setData(aboutData)
    } catch (err) {
      setData(initializeData)
    }
  }

  return (
    <Layout>
      <div className="about-page">
        <AboutBanner {...data}/>
        <AboutScrollMenu />
        <AboutOverview {...data}/>
        <Culture />
        <Environment {...data}/>
        <PassionResults {...data}/>
        <OurFirm />
        <BestPlace {...data}/>
        <Talk />
      </div>
    </Layout>
  )
}

export default About