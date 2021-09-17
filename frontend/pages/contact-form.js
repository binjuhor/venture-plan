import React from 'react'
import Layout from '../components/layout'
import ContactForm from '../components/common/contact-form'
import useUpdateRecentlyVisitedPages
  from '../components/custom-hooks/useUpdateRecentlyVisitedPages'

const ContactFormPage = () => {
  useUpdateRecentlyVisitedPages('/contact-form', 'Contact Form')

  return (
      <Layout>
        <div className="contact-page">
          <ContactForm />
        </div>
      </Layout>
  )
}

export default ContactFormPage