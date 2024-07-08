# TestApp

TestApp is a Flutter application that uses the BLOC state management pattern and follows the clean architecture principles. It integrates with the iTunes Music API to enable search, filtering, and adding items to a favorites list.

## Features

- **Search**: Users can search for music, podcasts, audiobooks, and more using the iTunes Music API.
- **Filtering**: Users can filter the search results by media type (e.g., movies, podcasts, music, etc.).
- **Favorites**: Users can add items to a favorites list, which is stored locally.
- **Routing**: The app uses the `go_router` package for navigation and routing.
- **State Management**: The app utilizes the BLOC pattern, with `bloc` and `cubit` components, along with `freezed` for data modeling.
- **Localization**: The app supports localization using the `gen_l10n` package.
- **Reusable Widgets**: The app has a collection of reusable widgets to ensure consistent UI and UX.
- **Responsive Design**: The app is designed to be responsive, with features like infinite scrolling and pull-to-refresh.

## Architecture

The app follows the clean architecture principles, with the following layers:

1. **Presentation Layer**: This layer contains the UI components, including pages, widgets, and the navigation logic.
2. **Business Logic Layer**: This layer contains the BLOC/Cubit components that handle the application's state and business logic.
3. **Domain Layer**: This layer contains the use cases and entities that represent the core business logic of the application.
4. **Data Layer**: This layer contains the repositories and data sources that interact with external APIs and local storage.

## Technologies Used

- **Flutter**: The core framework for building the app.
- **go_router**: For handling navigation and routing.
- **bloc**, **cubit**, **freezed**: For state management and data modeling.
- **gen_l10n**: For localization.
- **iTunes Music API**: For fetching music, podcast, and audiobook data.
- **get_it**: For dependency injection.

## Getting Started

To run the app, follow these steps:

1. Clone the repository:

```
git clone url..
```

2. Navigate to the project directory:

```
cd TestApp
```

3. Install the dependencies:

```
flutter pub get
```

4. Run the app:

```
flutter run
```

## Implementation

Paging, Load More, and Refresh
The app uses a dynamic BLOC approach to handle paging, load more, and refresh functionality. The DynamicBloc class is responsible for managing the general fetch data and load more operations with parameters like offset and limit.
When creating a specific BLOC for fetching iTunes records, the DynamicBloc is used, and a custom fetchData function is provided. This fetchData function is responsible for fetching the data from the iTunes Music API and returning the appropriate data model.
This approach allows for reusability, as the DynamicBloc can be used across different UI components that require paging, load more, and refresh functionality. The only customization needed is the fetchData function, which is specific to the data source being used.

Favorites
The app stores the user's favorite items locally using the shared_preferences package. When an item is added to the favorites list, it is saved to the shared preferences. When the app is launched, the favorites list is loaded from the shared preferences and displayed to the user. The app uses a FavoritesBloc to manage the state of the favorites list, and a FavoritesCubit to handle the UI-related state changes for favoriting/unfavoriting items.

State Management
The app uses a combination of BLOCs and Cubits for state management:

- **BLOCs** are used for data-related state management, such as fetching data from the iTunes Music API and handling paging/load more functionality.
- **Cubits** are used for UI-related state management, such as handling the state of the favorites list and updating the UI accordingly.

The Favorites functionality uses a stream to sink data and subscribe in the FavoritesCubit for cross-UI editing purposes.
