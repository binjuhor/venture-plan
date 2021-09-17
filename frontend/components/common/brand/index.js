import React, { useState, useEffect } from 'react'
import Logo from './Logo'
import {fetchAPI} from '../../../lib/api'

const Brand = () => {
  const [brands, setBrands] = useState([])

  useEffect(() => {
    _fetchBrands()
  }, [])

  const _fetchBrands = async () => {
    try {
      const data = await fetchAPI('/brands')

      setBrands(data)
    } catch (err) {
      setBrands([])
    }
  }

  return (
      <section className="brand">
        <div className="container">
          <div className="brand__list">
            {brands.map((brand, index) => <Logo {...brand} key={index}/>)}
          </div>
        </div>
      </section>
  )
}

export default Brand