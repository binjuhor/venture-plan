import { useEffect } from 'react'
import { useDispatch } from 'react-redux'
import { updateRecentlyVisitedPages } from '../../redux/actions/search'

const useUpdateRecentlyVisitedPages = (link, name) => {
  const dispatch = useDispatch()

  useEffect(() => {
    dispatch(updateRecentlyVisitedPages(name, link))
  }, [])
}

export default useUpdateRecentlyVisitedPages