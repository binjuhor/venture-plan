import React from 'react'
import Link from 'next/link'

const BookConsultation = ({linkText, URL}) => {
    
    return (
        <>
            <Link href={URL} class="btn">{linkText}</Link>
        </>
    )
}

export default BookConsultation