import React, { useState, useEffect } from 'react'
import PageBanner from '../components/common/page-banner'
import ScrollMenu from '../components/common/scroll-menu'
import GrantsOverview from '../components/common/grants-overview'
import Consultation from '../components/common/consultation'
import Statistic from '../components/common/statistic'
import TrustCertificate from '../components/common/trust-certificate'
import Talk from '../components/common/talk'
import Brand from '../components/common/brand'
import ClientWords from '../components/common/client-words'
import Services from '../components/common/services'
import Process from '../components/common/process'
import Accelerate from '../components/common/accelerate'
import OurTeam from '../components/common/our-team'
import FAQ from '../components/common/faq'
import Download from '../components/common/download'
import Layout from '../components/layout'
import {fetchAPI} from '../lib/api'
import OurServices from '../components/common/our-services'
import useUpdateRecentlyVisitedPages
  from '../components/custom-hooks/useUpdateRecentlyVisitedPages'

const initializeData = {
  BannerDesktop: null,
  BannerMobile: null,
  Title: "",
  Subtitle: "",
  Description: "",
  Overview: "",
  SamplePlans: [],
  SamplePlansTitle: "",
  SamplePlansDescription: "",
  SamplePlansBottomText: ""
}

const Grants = () => {
  useUpdateRecentlyVisitedPages('/grants', 'Grants')

  const [accelerate, setAccelerate] = useState(null)
  const [data, setData] = useState(initializeData)

  useEffect(() => {
    _fetchGrantsAccelerate()
    _fetchGrantData()
  }, [])

  const _fetchGrantsAccelerate = async () => {
    const accelerate = await fetchAPI('/accelerates?key=grants')

    if(accelerate) setAccelerate(accelerate[0])
  }

  const _fetchGrantData = async () => {
    try {
      const grantData = await fetchAPI("/grant-page")

      if(grantData) setData(grantData)
    } catch (err) {
      setData(initializeData)
    }
  }

  return (
    <Layout>
      <div className="grants-page">
        <PageBanner {...data}/>
        <ScrollMenu />
        <GrantsOverview {...data}/>
        <OurServices includeHeading={false}/>
        <Consultation />
        <Statistic />
        <TrustCertificate />
        <ClientWords />
        <Services />
        <Process />
        {!!accelerate && <Accelerate {...accelerate}/>}
        <OurTeam {...data}/>
        <FAQ />
        <Talk />
        <Download {...data}/>
        <Brand />
      </div>
    </Layout>
  )
}

export default Grants
