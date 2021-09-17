import React from 'react'
import { withLocalize } from 'react-localize-redux'
import Layout from '../components/layout'
import Link from "next/link"

const PageNotFound = () => {
  return (
      <Layout>
        <div className={'page404'}>
          <div className={'container'}>
            <h1>404</h1>
            <h3>Something's Wrong</h3>
            <p>Remember those old 404 pages from the 90s that said something like “Something’s gone wrong, but don’t worry, our webmasters have been notified.” But were the webmasters ever notified? I mean, were they really?</p>
            <Link href="/">Go to Home page</Link>
          </div>
        </div>
      </Layout>
  )
}

export default withLocalize(PageNotFound)