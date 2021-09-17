import React, { useState, useEffect } from 'react'
import { useRouter } from 'next/router'
import { withLocalize } from 'react-localize-redux'
import Layout from '../../components/layout'
import {fetchAPI} from '../../lib/api'
import {getFileSource} from '../../utils/functions'
import ReactMarkdown from "react-markdown"

const initializeInsightData = {
  Title: "",
  Subtitle: "",
  Content: "",
  Image: {}
}

const InsightDetail = ({ translate }) => {
  const router = useRouter()
  const { id } = router.query
  const [insightData, setInsightData] = useState(initializeInsightData)
  const [insightNotFound, setInsightNotFound] = useState(false)

  useEffect(() => {
    if(id) _fetchInsightById()
  }, [id])

  const _fetchInsightById = async () => {
    try {
      const data = await fetchAPI(`/insights?id=${id}`)

      if(data.length > 0) {
        setInsightData(data[0])
      } else {
        setInsightNotFound(true)
      }
    } catch (err) {
      setInsightNotFound(true)
      setInsightData(initializeInsightData)
    }
  }

  return (
      <Layout>
        <div className="static-insight">
          {insightNotFound
            ? (
              <div className="not-found-container">
                <p>{translate('t.insight_not_found')}</p>
              </div>
            ) : (
              <div className="page-container">
                <div className="page-banner line-top">
                  <figure>
                    <img src={getFileSource(insightData.Image)} alt={insightData.Title}/>
                  </figure>
                  
                  <div className="container">
                    <div className="page-banner__inner">
                      <h1>{insightData.Title}</h1>
                      <p>{insightData.Subtitle}</p>
                    </div>
                  </div>
                </div>
                <div className="container">
                  <div className={'page-content'}>
                    <ReactMarkdown source={insightData.Content} escapeHtml={false} />
                  </div>
                </div>
              </div>
            )
          }
        </div>
      </Layout>
  )
}

export default withLocalize(InsightDetail)