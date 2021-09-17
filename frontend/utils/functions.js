import {getStrapiURL} from '../lib/api'

export const delay = (miliseconds = 1000) => {
  return new Promise((resolve) => {
    setTimeout(() => {
      resolve()
    }, miliseconds)
  })
}

export const getFileSource = (file) => {
  return `${getStrapiURL()}${file.url}`
}
