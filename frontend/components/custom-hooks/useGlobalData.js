import React, { useState, useEffect } from 'react'
import {fetchAPI} from '../../lib/api'

const useGlobalData = () => {
  const [globalData, setGlobalData] = useState({
    Address: "9255 Sunset Blvd. #1100 Beverly Hills, CA 90069",
    PhoneNumber: "1-800-VENTURE",
    Email: "info@ventureplans.com"
  })

  useEffect(() => {
    _fetchGlobalData()
  }, [])

  const _fetchGlobalData = async () => {
    try {
      const data = await fetchAPI('/global')

      if(data) setGlobalData(data)
    } catch (err) {
      console.log(err)
    }
  }

  return globalData
}

export default useGlobalData