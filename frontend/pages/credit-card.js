import React, { useState } from 'react'
import Layout from '../components/layout'
import CallCreditCardButton from '../components/common/call-credit-card-button'
import CreditCard from '../components/common/credit-card'
import {Elements} from '@stripe/react-stripe-js'
import { loadStripe } from "@stripe/stripe-js"

const promise = loadStripe("pk_test_1rVnlc2HT4zddJIBHqu6PkmR00oyLQSofC")

const CreditCardPage = () => {
  const [showCreditCard, setShowCreditCard] = useState(false)

  return (
    <Layout>
      <Elements stripe={promise}>
        <div className={`credit-card-page ${showCreditCard ? 'credit-card-shown' : ''}`}>
          <CallCreditCardButton onShowCreditCard={() => setShowCreditCard(true)}/>
          <CreditCard showCreditCard={showCreditCard} onClose={() => setShowCreditCard(false)}/>
        </div>
      </Elements>
    </Layout>
  )
}

export default CreditCardPage