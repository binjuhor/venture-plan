import React, {useEffect, useState} from 'react'
import {fetchAPI} from '../../../lib/api'
import CertificateItem from './CertificateItem'

const TrustCertificate = () => {
  const [trustCertificates, setTrustCertificates] = useState([])

  useEffect(() => {
    _fetchTrustCertificates()
  }, [])

  const _fetchTrustCertificates = async () => {
    try {
      const data = await fetchAPI('/trust-certificates')

      setTrustCertificates(data)
    } catch (err) {
      setTrustCertificates([])
    }
  }

  return (
      <section className="certificate-trust">
        <div className="container">
          <div className="certificate-trust__inner">
            {trustCertificates.map(certificate => <CertificateItem {...certificate} key={certificate.id}/>)}
          </div>
        </div>
      </section>
  )
}

export default TrustCertificate