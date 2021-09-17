import React, { useState, useEffect } from 'react'
import { useRouter } from 'next/router'
import { withLocalize } from 'react-localize-redux'
import Layout from '../../components/layout'
import {fetchAPI} from '../../lib/api'
import {getFileSource} from '../../utils/functions'
import ReactMarkdown from "react-markdown"

const initializePageData = {
  Title: "",
  Content: "",
  FeatureImage: {}
}

const StaticPage = ({ page, translate }) => {
  const router = useRouter()
  const { slug } = router.query
  const [pageData, setPageData] = useState(initializePageData)
  const [pageNotFound, setPageNotFound] = useState(false)

  useEffect(() => {
    if(slug) _fetchPageBySlug()
  }, [slug])

  const _fetchPageBySlug = async () => {
    try {
      const data = await fetchAPI(`/pages?Slug=${slug}`)

      if(data.length > 0) {
        setPageData(data[0])
      } else {
        setPageNotFound(true)
      }
    } catch (err) {
      setPageNotFound(true)
      setPageData(initializePageData)
    }
  }

  return (
      <Layout>
        <div className="static-page">
          {pageNotFound
            ? (
              <div className="not-found-container">
                <p>{translate('t.page_not_found')}</p>
              </div>
            ) : (

              <div className="page-container">
                <div className="page-banner line-top">
                  <figure>
                    <img src={getFileSource(pageData.FeatureImage)} alt={pageData.Title}/>
                  </figure>
                  
                  <div className="container">
                    <div className="page-banner__inner">
                      <h1>{pageData.Title}</h1>
                      <p>{pageData.Description}</p>
                    </div>
                  </div>
                </div>
                <div className="container">
                  <div className={'page-content'}>
                    <ReactMarkdown source={pageData.Content} escapeHtml={false} />
                  </div>
                </div>
              </div>
            )
          }
        </div>
      </Layout>
  )
}

export default withLocalize(StaticPage)