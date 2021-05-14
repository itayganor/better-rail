import { Instance, SnapshotOut, types } from "mobx-state-tree"
import { updateApplicationContext, getIsWatchAppInstalled } from "react-native-watch-connectivity"

let isWatchInstalled = false

getIsWatchAppInstalled().then((result) => {
  if (result === true) {
    isWatchInstalled = true
  }
})

export const favoriteRouteSchema = {
  id: types.string,
  originId: types.string,
  destinationId: types.string,
  order: types.number,
}

/**
 * Favorite routes store.
 */
export const FavoritesModel = types
  .model("Favorites")
  .props({
    routes: types.array(types.model(favoriteRouteSchema)),
  })
  .actions((self) => ({
    add(route: FavoriteRoute) {
      console.log(self.routes.length)
      self.routes.push({ ...route, order: self.routes.length || 0 })
    },
    remove(route: FavoriteRoute) {
      const filteredFavorites = self.routes.filter((favorite) => favorite.id !== route.id)
      self.routes.replace(filteredFavorites)
    },
  }))

type FavoritesType = Instance<typeof FavoritesModel>
export interface Favorites extends FavoritesType {}
type FavoritesSnapshotType = SnapshotOut<typeof FavoritesModel>
export interface FavoritesSnapshot extends FavoritesSnapshotType {}
export const createFavoritesDefaultModel = () => types.optional(FavoritesModel, {})

export type FavoriteRoute = {
  id: string
  originId: string
  destinationId: string
}
