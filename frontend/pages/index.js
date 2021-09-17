import React, { useEffect, useState } from 'react'
import { withLocalize } from 'react-localize-redux'
import { useSelector } from 'react-redux'
import Hero from '../components/common/hero'
import Accelerate from '../components/common/accelerate'
import CoreValue from '../components/common/core-value'
import Overview from '../components/common/overview'
import Testimonial from '../components/common/testimonial'
import Talk from '../components/common/talk'
import Consultation from '../components/common/consultation'
import Insights from '../components/common/insights'
import Subscribe from '../components/common/subscribe'
import Careers from '../components/common/careers'
import Brand from '../components/common/brand'
import Layout from '../components/layout'
import Sectors from '../components/common/sectors'
import {fetchAPI} from '../lib/api'
import Cookie from '../components/common/cookie'
import OurServices from '../components/common/our-services'
import useUpdateRecentlyVisitedPages
  from '../components/custom-hooks/useUpdateRecentlyVisitedPages'
import ScrollPopup from '../components/common/scroll-popup'
import useScrollPopup from '../components/custom-hooks/useScrollPopup'

const Home = () => {
  const [insights, setInsights] = useState([])
  const [data, setData] = useState(null)
  const [accelerate, setAccelerate] = useState(null)
  const scrollPopup = useSelector(state => state.layout.scrollPopup)

  useScrollPopup()
  useUpdateRecentlyVisitedPages('/', 'Homepage')

  useEffect(() => {
    _fetchInsights()
    _fetchHomeData()
    _fetchHomeAccelerate()
  }, [])

  const _fetchInsights = async () => {
    const insights = await fetchAPI('/insights?_sort=id:DESC&_limit=4')

    if(insights) setInsights(insights)
  }

  const _fetchHomeData = async () => {
    const homepage = await fetchAPI('/homepage')

    if(homepage) setData(homepage)
  }

  const _fetchHomeAccelerate = async () => {
    const accelerate = await fetchAPI('/accelerates?key=home')

    if(accelerate) setAccelerate(accelerate[0])
  }

  return (
    <Layout headerWhite={false}>
      <div className={`home-page ${scrollPopup ? 'popup-shown' : ''}`}>
        <Hero {...data}/>
        {!!accelerate && <Accelerate {...accelerate}/>}
        <CoreValue/>
        <Overview {...data}/>
        <OurServices includeHeading={false}/>
        <Testimonial/>
        <Talk/>
        <Consultation bgBottom={false} headingLarge={false}/>
        <Sectors showButton={true} />
        <Insights insights={insights}/>
        <Subscribe/>
        <Careers/>
        <Brand/>
        <Cookie />
        <ScrollPopup />
      </div>
    </Layout>
  )
}

export default withLocalize(Home)
