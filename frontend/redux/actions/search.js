import * as types from '../types'

export const updateRecentSearches = (search) => dispatch => {
  dispatch({
    type: types.UPDATE_RECENT_SEARCHES,
    search,
  })
}

export const updateRecentlyVisitedPages = (name, link) => dispatch => {
  dispatch({
    type: types.UPDATE_RECENTLY_VISITED_PAGES,
    name,
    link
  })
}