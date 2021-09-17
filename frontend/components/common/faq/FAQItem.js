import React, { useState } from 'react'

const FAQItem = ({ Question, Answer }) => {
  const [isOpen, setIsOpen] = useState(false)

  return (
      <div className={`faq__item ${isOpen ? 'shown' : ''}`}>
        <h3 onClick={() => setIsOpen(!isOpen)}>{Question}</h3>
        <div className={`faq__item--content`} style={{ display: isOpen ? 'block' : 'none' }}>
          <p>{Answer}</p>
        </div>
      </div>
  )
}

export default FAQItem