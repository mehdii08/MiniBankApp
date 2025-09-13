## Mini Banking App

A simplified banking mobile application demonstrating UI, navigation, state management, local persistence, and mock API integration.

### Features
- Login with validation (hardcoded: `user@test.com` / `123456`).
- Dashboard shows current balance and last 5 transactions.
- Transfer screen to send money (beneficiary, account number, amount):
  - Deducts from balance, adds a transaction, shows confirmation.
- Transaction history with infinite scroll, search, and type filter (credit/debit).
- Settings with Light/Dark theme toggle. (Optional biometric toggle placeholder.)

### Architecture
- Clean-ish modular feature structure:
  - `core/`: common blocs, router, DI, theme, widgets, utils.
  - `features/`: `auth`, `account`, `transactions`, `transfer`, `settings`, `home`.
  - `i18n/`: localization using `slang` (`t.*`).
- State management: BLoC (flutter_bloc)
  - `AuthBloc`, `AccountBloc`, `TransactionsBloc` (single-state with Freezed), `TransferFormCubit`, `ThemeCubit`.
- Navigation: `go_router`.
- DI: `get_it` + `injectable` (see `core/di`).
- Persistence: `Hive` for balance, transactions, and settings (theme).
- Localization: `slang` (`lib/i18n`) replaces legacy gen_l10n.

### Data Flow
- Auth: mock login validates credentials and updates `AuthBloc`.
- Account: balance stored in Hive; `AccountBloc` watches updates.
- Transactions:
  - Repository: `TransactionRepositoryHive` sorts by date, pages results, and applies query/type filters.
  - Use cases: `GetRecentTransactions`, `GetTransactionsPage`.
  - Bloc: `TransactionsBloc` holds `page`, `items`, `query`, `selectedType`, `hasMore`; loads next page on scroll end; resets on query/type changes.
- Transfer: `TransferFormCubit` validates fields, ensures sufficient balance, updates balance and saves a new transaction.

### Libraries
- flutter_bloc, freezed_annotation (Freezed), go_router, hive, hive_flutter, injectable, get_it, slang, slang_flutter.

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

### Mock API Integration (Optional)
You can plug a mock API for seeding transactions. Currently, initial data is persisted in Hive; repository methods can be adapted to fetch/seed from a mock endpoint (e.g., `jsonplaceholder.typicode.com`) before caching.

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
