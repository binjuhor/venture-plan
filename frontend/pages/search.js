import React, { useEffect, useState } from 'react'
import { useRouter } from 'next/router'
import _ from 'lodash'
import Link from 'next/link'
import Layout from '../components/layout'
import {fetchAPI, postAPI, putAPI} from '../lib/api'
import {withLocalize} from "react-localize-redux";

const fixedPages = [
  {link: '/', name: "Homepage"},
  {link: '/about', name: "About"},
  {link: '/business', name: "Business"},
  {link: '/contact', name: "Contact"},
  {link: '/contact-form', name: "Contact Form"},
  {link: '/grants', name: "Grants"},
  {link: '/insights', name: "Insights"}
]

const Search = ({translate}) => {
  const router = useRouter()

  const [querySearch, setQuerySearch] = useState("")
  const [searchResults, setSearchResults] = useState([])

  useEffect(() => {
    const querySearch = _.get(router, 'query.search')

    if(!!querySearch) setQuerySearch(querySearch)
  }, [router])

  useEffect(() => {
    if(!!querySearch) {
      _fetchSearchResults()
      _increaseSearchEntriesCount()
    }
  }, [querySearch])

  const _increaseSearchEntriesCount = async () => {
    try {
      const data = await fetchAPI(`/search-entries?Keyword=${querySearch}`)

      if(data.length > 0) {
        const existEntries = data[0]

        await putAPI(`/search-entries/${existEntries.id}`, { Keyword: querySearch, Count: parseInt(existEntries.Count) + 1 })
      } else {
        await postAPI(`/search-entries`, { Keyword: querySearch, Count: 1 })
      }
    } catch (err) {
    }
  }

  const _fetchSearchResults = async () => {
    try {
      const matchFixedPages = fixedPages.filter(page => page.name.includes(querySearch))
                                   .map(page => ({ link: page.link, title: page.name, content: ''}))
      const matchInsights = await fetchAPI(`/insights?Title_contains=${querySearch}&Content_contains=${querySearch}`)
      const matchInsightsFormatted = matchInsights.map(insight => ({ link: `/insight/${insight.id}`, title: insight.Title, content: insight.Content }))
      const matchPages = await fetchAPI(`/pages?Title_contains=${querySearch}`)
      const matchPagesFormatted = matchPages.map(page => ({ link: `/pages/${page.Slug}`, title: page.Title, content: '' }))

      setSearchResults([...matchInsightsFormatted, ...matchPagesFormatted, ...matchFixedPages])
    } catch (err) {
      setSearchResults([])
    }
  }

  return (
      <Layout>
        <div className="search-page">
          <div className="container">
            <form className={'search-page__form'} action="" method={'GET'}>
              <input type="text" 
                    name={'search'} 
                    value={querySearch}
                    onChange={(e) => {
                      setQuerySearch(e.target.value)
                    }}
                    />
              <button>
                <svg xmlns="http://www.w3.org/2000/svg" width="21.237" height="21.889" viewBox="0 0 21.237 21.889">
                  <path id="Path_111" data-name="Path 111" d="M21.941,14.289a8.4,8.4,0,1,0-1.143,1.04l6.329,6.329a.76.76,0,0,0,.539.231.739.739,0,0,0,.539-.231.783.783,0,0,0,0-1.091ZM8.731,8.512A6.971,6.971,0,1,1,15.7,15.483,6.977,6.977,0,0,1,8.731,8.512Z" transform="translate(-7.19)" fill="#00A1F1"></path></svg>
              </button>
            </form>
            <p className="search-query">{translate("t.your_search_keyword")} <strong>{querySearch}</strong></p>
            <div className="search-results">

              {searchResults.length > 0 ?
                searchResults.map(searchResult => (
                  <div className="search-result">
                    <Link href={searchResult.link}>
                      <a className="search-title">{searchResult.title}</a>
                    </Link>
                    <p className="search-content">{searchResult.content}</p>
                  </div>
                ))  : <div className="no-result">{translate("t.no_result")}</div>
              }

            </div>
          </div>
        </div>
      </Layout>
  )
}

export default withLocalize(Search)