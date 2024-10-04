# TestApp

TestApp is a Flutter application that uses the BLOC state management pattern and follows the clean architecture principles. It integrates with the iTunes Music API to enable search, filtering, and adding items to a favorites list.
![Screenshot_1728050750](https://github.com/user-attachments/assets/7eb6dc23-5024-4ba7-9fdc-7832ec04c814)

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

## Data Storage

This project uses a hybrid data storage approach, combining local and remote data sources:

### Local Storage (fav-list)

The app utilizes shared preferences (a key-value store) to store data locally on the user's device. This is used to cache frequently accessed data, such as user settings, preferences, and small pieces of application state. The local storage helps improve performance and provide offline functionality.

### Remote Data Source (fetch data from iTunes Music API)

For more complex and dynamic data, the app integrates with a remote data source using the Dio HTTP client library. This remote data source is typically an API that the app communicates with to fetch, update, and sync data. Examples of data stored remotely include user profiles, activity logs, and other application-specific information.

The combination of local and remote data storage allows the app to provide a seamless user experience, with fast access to frequently used data while still maintaining access to a comprehensive set of data stored on the server.

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

## Paging, Load More, and Refresh

The app uses a dynamic BLOC approach to handle paging, load more, and refresh functionality. The DynamicBloc class is responsible for managing the general fetch data and load more operations with parameters like offset and limit.
When creating a specific BLOC for fetching iTunes records, the DynamicBloc is used, and a custom fetchData function is provided. This fetchData function is responsible for fetching the data from the iTunes Music API and returning the appropriate data model.
This approach allows for reusability, as the DynamicBloc can be used across different UI components that require paging, load more, and refresh functionality. The only customization needed is the fetchData function, which is specific to the data source being used.

## Favorites
The app stores the user's favorite items locally using the shared_preferences package. When an item is added to the favorites list, it is saved to the shared preferences. When the app is launched, the favorites list is loaded from the shared preferences and displayed to the user. The app uses a FavoritesBloc to manage the state of the favorites list, and a FavoritesCubit to handle the UI-related state changes for favoriting/unfavoriting items.

## State Management
The app uses a combination of BLOCs and Cubits for state management:

- **BLOCs** are used for data-related state management, such as fetching data from the iTunes Music API and handling paging/load more functionality.
- **Cubits** are used for UI-related state management, such as handling the state of the favorites list and updating the UI accordingly.

The Favorites functionality uses a stream to sink data and subscribe in the FavoritesCubit for cross-UI editing purposes.

## Code Documentation

### `FetchListBloc`

The `FetchListBloc` is a Bloc implementation that handles the fetching of a list of data from a future function. It provides two main events:

1. `GetDataEvent`: This event initializes the data fetch and emits the `FetchListLoaded` state with the fetched data.
2. `LoadMoreEvent`: This event fetches more data and appends it to the existing data in the `FetchListLoaded` state.

The bloc also provides the following states:

- `FetchListInitial`: The initial state of the bloc.
- `FetchListLoading`: The state emitted when the data is being fetched.
- `FetchListLoaded`: The state emitted when the data is successfully fetched.
- `FetchListError`: The state emitted when an error occurs during the data fetch.

The `FetchListBloc` is designed to be reusable for different types of data, as the `futureFunction` parameter is a generic function that can be customized for each use case.

Code snippet for  `FetchListBloc`:

```dart
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/utils/logger.dart';

part 'fetch_list_event.dart';
part 'fetch_list_state.dart';
part 'fetch_list_bloc.freezed.dart';

class FetchListBloc<T> extends Bloc<FetchListEvent, FetchListState<T>> {
  FetchListBloc(
    Future<List<T>> Function(int offset, int limit, String terms, String entity)
        futureFunction,
  ) : super(FetchListInitial()) {
    // Implementation ...
  }
}
```

### `ScrollLoaderCubit`

The `ScrollLoaderCubit` is a Cubit implementation that tracks the scrolling status of a widget. It provides two main states:

1. `ScrollingStatus.endScroll`: Emitted when the user has reached the end of the scroll view.
2. `ScrollingStatus.overScroll`: Emitted when the user has scrolled past the end of the scroll view.

The `handleScrollNotification` function is a helper function that can be used to detect the scrolling status and update the cubit accordingly.

The `ScrollLoaderCubit` is designed to be used in conjunction with a `NotificationListener` widget to detect the scrolling events.

Code snippet for `ScrollLoaderCubit`:

```dart
import 'package:bloc/bloc.dart';
import 'package:test_app/presentation/cubits/widgets/scroll_loader_state.dart';
import 'package:test_app/utils/logger.dart';

class ScrollLoaderCubit extends Cubit<ScrollLoaderState> {
  ScrollLoaderCubit() : super(const ScrollLoaderState());

  Future<void> onScrollEnd() async {
    logD('onScrollEnd...');
    emit(state.copyWith(scrollingStatus: ScrollingStatus.endScroll));
  }

  void onOverScroll() {
    logD('onOverScroll...');
    emit(state.copyWith(scrollingStatus: ScrollingStatus.overScroll));
  }
}

bool handleScrollNotification(
    ScrollNotification notification, BuildContext context, {
    required Function overScroll,
    required Function scrollEnd,
}) {
    if (notification is ScrollUpdateNotification &&
        notification.metrics.pixels >
            notification.metrics.maxScrollExtent + 50) {
      overScroll();
    } else if (notification is ScrollEndNotification) {
      scrollEnd();
    }
    return false;
}
```
## Update:
updated sound track preview on 4/10/2024

## Let's Talk About It!

If you've got any questions or just want to chat about this project, head on over to the [Discussions section](https://github.com/kingstonsin/app_test/discussions). I'm happy to hang out and help however I can. Feel free to share your thoughts, ideas, or anything else you'd like to discuss. I'am all ears!

