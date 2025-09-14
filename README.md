## Mini Banking App

A simplified banking mobile application demonstrating UI, navigation, state management, local persistence, and mock API integration.

Built with Flutter SDK 3.35.0 and up-to-date libraries.

Timeboxing and Trade-offs
- To reduce implementation time for this demo, I intentionally simplified some parts that would be more elaborate in production:
  - Data layer could separate local/remote data sources with richer caching/strategy logic.
  - `ApiHelper` could be extended with interceptors, retries, structured error bodies, and logging.
  - UI design could be refined with more polish, states, and accessibility.
  - Unit and widget tests are not included here but I can add comprehensive tests on request.
  - Additional security hardening (e.g., secure storage, token refresh) can be implemented as needed.

If you want any of the above production-grade enhancements, I can implement them.

### Features
- Login with validation (hardcoded: `user@test.com` / `123456`).
- Dashboard shows current balance and last 5 transactions.
- Transfer screen to send money (beneficiary, account number, amount):
  - Deducts from balance, adds a transaction, shows confirmation.
- Transaction history with infinite scroll, search, and type filter (credit/debit).
- Settings with Light/Dark theme toggle and a biometric login toggle (mocked via local_auth capability checks).
- Remote Transactions page that fetches a list from an API (via Dio + ApiHelper).

### Architecture
- Clean-ish modular feature structure:
  - `core/`: common blocs, router, DI, theme, widgets, utils.
  - `features/`: `auth`, `account`, `transactions`, `transfer`, `settings`, `home`.
  - `i18n/`: localization using `slang` (`t.*`).
- State management: BLoC (flutter_bloc)
  - `AuthBloc`, `AccountBloc`, `TransactionsBloc` (single-state with Freezed), `TransferFormCubit`, `ThemeCubit`, `BiometricCubit`.
- Navigation: `go_router`.
- DI: `get_it` + `injectable` (see `core/di`).
- Persistence: `Hive` for balance, transactions, and settings (theme).
- Localization: `slang` (`lib/i18n`) replaces legacy gen_l10n.
- Networking: `dio` with a lightweight `ApiHelper` and error mapping to domain `Failure`.

Why Clean Architecture
- Chosen because it is a known and popular approach in Flutter that enforces separation of concerns, leading to a codebase that is more maintainable, scalable, and testable.
- Clear boundaries (presentation / domain / data) keep UI, business logic, and IO independent and easier to evolve.

Why BLoC for State Management
- BLoC provides explicit event → state flows, excellent testability, and composability across feature boundaries.
- Strong typing and predictable transitions simplify debugging and onboarding.
- Alternatives like simple Provider/Riverpod or setState are great, but for this app I preferred BLoC’s explicitness and consistency across features. (I also use Cubit where a lighter abstraction fits, e.g., forms and settings.)

### Data Flow
- Auth: mock login validates credentials and updates `AuthBloc`.
- Account: balance stored in Hive; `AccountBloc` watches updates.
- Transactions:
  - Repository: `TransactionRepositoryHive` sorts by date, pages results, and applies query/type filters.
  - Use cases: `GetRecentTransactions`, `GetTransactionsPage`, `GetRemoteTransactions` (for remote list view).
  - Bloc: `TransactionsBloc` holds `page`, `items`, `query`, `selectedType`, `hasMore`; loads next page on scroll end; resets on query/type changes.
- Transfer: `TransferFormCubit` validates fields, ensures sufficient balance, updates balance and saves a new transaction.
- Remote transactions: `RemoteTransactionsRepositoryImpl` calls API through `ApiHelper` (Dio), errors are mapped to `Failure` and surfaced to UI.

### Libraries
- flutter_bloc, freezed_annotation (Freezed), go_router, hive, hive_flutter, injectable, get_it, slang, slang_flutter, dio, local_auth.

### Project Structure (high-level)
- `lib/`
  - `core/`
  - `features/`
  - `i18n/`
  - `main.dart`

### Setup
1) Flutter SDK installed.
2) Install dependencies:
```
flutter pub get
```
3) (iOS/macOS) Install pods if needed:
```
cd ios && pod install && cd ..
```
4) Run the app:
```
flutter run
```

### API Integration
Remote Transactions page demonstrates fetching data via `dio`. `ApiHelper` standardizes timeouts and maps errors (400/500/connectivity) to domain `Failure` for the repositories to consume.

### Notes / Decisions
- Chosen BLoC for explicit state transitions and testability.
- Hive chosen for its simplicity and speed for local persistence.
- `slang` used for i18n with `t.*` convenience. Legacy `l10n/` removed.
- Infinite scrolling replaces the explicit "Load more" button.

### Credentials
- Email: `user@test.com`
- Password: `123456`

### Testing Hints
- Login, navigate to Dashboard.
- Perform a transfer; verify balance decreases and a new transaction appears.
- Open Transactions; try search and filter, scroll to load more.
- Toggle Dark Mode in Settings.
