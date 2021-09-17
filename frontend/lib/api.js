import {delay} from '../utils/functions'
import axios from 'axios'

export function getStrapiURL(path = "") {
  return `${
    process.env.NEXT_PUBLIC_STRAPI_API_URL || "http://localhost:1337"
  }${path}`;
}

// Helper to make GET requests to Strapi
export async function fetchAPI(path) {
  const requestUrl = getStrapiURL(path);
  const response = await fetch(requestUrl);
  const data = await response.json();
  return data;
}

export async function postAPI(path, params = {}) {
  const requestUrl = getStrapiURL(path);
  const response = await axios.post(requestUrl, params);

  return response;
}

export async function putAPI(path, params = {}) {
  const requestUrl = getStrapiURL(path);
  const response = await axios.put(requestUrl, params);

  return response;
}

export async function sampleAPI(path, sampleData) {
  await delay()

  return sampleData
}
