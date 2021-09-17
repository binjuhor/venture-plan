import React from 'react'

const CallCreditCardButton = ({ onShowCreditCard }) => {

  return (
      <section className="call-credit-card">
        <div className="container">
          <div className="call-credit-card__inner">
            <a href="#" className="btn btn-primary btn-credit-card" onClick={(e) => {
              e.preventDefault()

              onShowCreditCard()
            }}>Credit Card</a>
          </div>
        </div>
      </section>
  )
}

export default CallCreditCardButton