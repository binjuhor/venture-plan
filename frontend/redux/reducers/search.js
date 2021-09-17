import * as types from '../types'

const initializeState = {
  recentSearches: [],
  recentlyVisitedPages: []
}

const language = (state = initializeState, action) => {
  switch (action.type) {
    case types.UPDATE_RECENT_SEARCHES:
      if(state.recentSearches.length >= 3) state.recentSearches.pop()

      return {
        ...state,
        recentSearches: [action.search, ...state.recentSearches]
      }
    case types.UPDATE_RECENTLY_VISITED_PAGES:
      if(state.recentlyVisitedPages.filter(page => page.name === action.name).length > 0) return state
      if(state.recentlyVisitedPages.length >= 4) state.recentlyVisitedPages.pop()

      return {
        ...state,
        recentlyVisitedPages: [{ link: action.link, name: action.name }, ...state.recentlyVisitedPages]
      }
    default:
      return state
  }
}

export default language