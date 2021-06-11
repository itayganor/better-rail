import { Instance, SnapshotOut, types } from "mobx-state-tree"
import { watchEvents, updateApplicationContext, getIsWatchAppInstalled } from "react-native-watch-connectivity"

updateApplicationContext({ test: "value" })

watchEvents.addListener("application-context", (context) => {
  console.log("Context updated:", context)
})

export const favoriteRouteSchema = {
  id: types.string,
  originId: types.string,
  destinationId: types.string,
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
      self.routes.push({ ...route })
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
