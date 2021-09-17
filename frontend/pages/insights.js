import React, {useEffect, useState} from 'react'
import InsightBanner from '../components/common/insight-banner'
import InsightScrollMenu from '../components/common/insight-scroll-menu'
import InsightOverview from '../components/common/insight-overview'
import InsightFeaturedPost from '../components/common/insight-featured-post'
import Insights from '../components/common/insights'
import Consultation from '../components/common/consultation'
import Talk from '../components/common/talk'
import {fetchAPI} from '../lib/api'
import Layout from '../components/layout'
import useUpdateRecentlyVisitedPages
  from '../components/custom-hooks/useUpdateRecentlyVisitedPages'

const initializeData = {
  BannerDesktop: null,
  BannerMobile: null,
  Title: "",
  Subtitle: "",
  Overview: ""
}

const InsightsPage = () => {
  useUpdateRecentlyVisitedPages('/insights', 'Insights')

  const [insights, setInsights] = useState([])
  const [filterInsights, setFilterInsights] = useState([])
  const [data, setData] = useState(initializeData)
  const [filterOptions, setFilterOptions] = useState({
    Industries: [],
    Services: []
  })
  const [selectedFilterOptions, setSelectedFilterOptions] = useState([])

  useEffect(() => {
    _fetchInsightsPageData()
    _fetchInsights()
    _fetchFilterOptions()
  }, [])

  useEffect(() => {
    if(selectedFilterOptions.length > 0) {
      _fetchFilterInsights()
    } else {
      _fetchTwoLatestInsights()
    }
  }, [selectedFilterOptions])

  const _fetchFilterInsights = async () => {
    try {
      const query = selectedFilterOptions.map(option => `insight_categories.id_in=${option}`).join('&')

      const data = await fetchAPI(`/insights?${query}`)

      if(data) setFilterInsights(data)
    } catch (err) {
      setFilterInsights([])
    }
  }

  const _fetchTwoLatestInsights = async () => {
    try {
      const data = await fetchAPI('/insights?_sort=id:DESC&_limit=2')

      if(data) setFilterInsights(data)
    } catch (err) {
      setFilterInsights([])
    }
  }

  const _fetchFilterOptions = async () => {
    try {
      const servicesOptions = await fetchAPI('/insight-categories?Type=Services')
      const industriesOptions = await fetchAPI('/insight-categories?Type=Industries')

      if(servicesOptions && industriesOptions) {
        setFilterOptions({
          Industries: industriesOptions,
          Services: servicesOptions,
        })
      }
    } catch (err) {
      setFilterOptions({
        Services: [],
        Industries: []
      })
    }
  }

  const _fetchInsightsPageData = async () => {
    try {
      const insightsPageData = await fetchAPI("/insights-page")

      setData(insightsPageData)
    } catch (err) {
      setData(initializeData)
    }
  }

  const _fetchInsights = async () => {
    const insights = await fetchAPI('/insights?_sort=id:DESC&_limit=4')

    if(insights) setInsights(insights)
  }

  return (
    <Layout>
      <div className="insights-page">
        <InsightBanner {...data}/>
        <InsightScrollMenu />
        <InsightOverview
            {...data}
            filterOptions={filterOptions}
            selectedFilterOptions={selectedFilterOptions}
            setSelectedFilterOptions={setSelectedFilterOptions}
        />
        <InsightFeaturedPost insights={filterInsights}/>
        <Insights insights={insights}/>
        <Consultation includeHeading={false}/>
        <Talk />
      </div>
    </Layout>
  )
}

export default InsightsPage