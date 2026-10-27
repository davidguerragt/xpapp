# Graph Report - xpapp  (2026-10-22)

## Corpus Check
- cluster-only mode — file stats not available

## Summary
- 2262 nodes · 3788 edges · 135 communities (121 shown, 14 thin omitted)
- Extraction: 100% EXTRACTED · 0% INFERRED · 0% AMBIGUOUS · INFERRED: 17 edges (avg confidence: 0.85)
- Token cost: 0 input · 0 output

## Graph Freshness
- Built from commit: `390773a6`
- Run `git rev-parse HEAD` and compare to check if the graph is stale.
- Run `graphify update .` after code changes (no API cost).

## Community Hubs (Navigation)
- payment_process_response_model.dart
- section_model.dart
- GeneratedPluginRegistrant.swift
- router.dart
- credit_card_payment_model.dart
- return
- package:flutter/material.dart
- product_edit_state.dart
- section_edit_state.dart
- section_abc_state.dart
- product_edit_view.dart
- product_abc_state.dart
- user_info_entity.dart
- api_consts.dart
- my_application.cc
- checkout_state.dart
- transaction_list_stream_state.dart
- transaction_detail_state.dart
- transaction_list_paged_state.dart
- local_user_info_use_case.dart
- user_info_model.dart
- package:freezed_annotation/freezed_annotation.dart
- admin_product_model.dart
- admin_product_entity.dart
- bag_product_entity.dart
- package:image_picker/image_picker.dart
- loginProvider
- package:xpapp/features/ecommerce/domain/entities/product_entity.dart
- onboarding_view.dart
- notifications_service.dart
- payment_process_entity.dart
- section_entity.dart
- assets.dart
- checkout_view.dart
- int get
- bag_product_model.dart
- transaction_model.dart
- is_logged_in_use_case.dart
- product_abc_view.dart
- admin_product_image_model.dart
- admin_section_model.dart
- product_entity.dart
- user_model.dart
- ConsumerWidget
- package:xpapp/features/administrator/domain/entities/admin_product_entity.dart
- payment_method_entity.dart
- transaction_entity.dart
- transaction_detail_get_use_case.dart
- trasaction_detail_view.dart
- your_bag_notifier.dart
- payment_method_model.dart
- T
- product_edit_notifier.dart
- transaction_list_paged_view.dart
- login_notifier.dart
- win32_window.cpp
- authentication_impl_repository.dart
- FlutterWindow
- bag_item_widget.dart
- section_edit_notifier.dart
- StatelessWidget
- admin_product_repository_impl.dart
- section_edit_view.dart
- package:xpapp/features/ecommerce/domain/entities/bag_product_entity.dart
- package:xpapp/features/ecommerce/domain/entities/payment_method_entity.dart
- item_view.dart
- env.dart
- AdminProductState
- SectionEditState
- personalise_view.dart
- firebase_storage_product_data_source.dart
- local_your_bag_data_source.dart
- pick_image_repository_impl.dart
- product_abc_notifier.dart
- transaction_list_stream_view.dart
- utils.cpp
- form_widgets.dart
- home_notifier.dart
- Win32Window
- transaction_list_stream_notifier.dart
- payment_method_notifier.dart
- yourBagProvider
- your_bag_repository_impl.dart
- checkout_notifier.dart
- option_item.dart
- manifest.json
- transaction_list_paged_notifier.dart
- admin_section_add_use_case.dart
- .MessageHandler
- firebase_admin_product_data_source.dart
- admin_section_repository_impl.dart
- home_view.dart
- user_info_repository_impl.dart
- @freezed
- local_storage_login_datasource.dart
- local_payment_method_data_source.dart
- firebase_admin_section_data_source.dart
- admin_section_repository.dart
- payment_method_repository_impl.dart
- firebase_transaction_data_source.dart
- item_view_notifier.dart
- firebase_options.dart
- Point
- StateNotifier
- firebase_products_data_source.dart
- transaction_repository_impl.dart
- home_state.dart
- item_view_state.dart
- transaction_detail_notifier.dart
- firebase_user_info_datasource.dart
- logout_notifier.dart
- subscription_view.dart
- checkbox_item.dart
- admin_product_repository.dart
- credit_cards_get_cards_data_source.dart
- package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart
- authentication_repository.dart
- PaymentMethodEntity
- firebase_sections_data_source.dart
- flutter-dart-specialist.agent.md
- admin_section_get_use_case.dart
- package:xpapp/features/administrator/domain/entities/admin_section_entity.dart
- MainActivity.kt
- PaymentMethodModel
- xpapp
- _AuthRouterRefreshNotifier
- LaunchImage.imageset/README.md

## God Nodes (most connected - your core abstractions)
1. `Win32Window` - 21 edges
2. `AdminProductState` - 18 edges
3. `SectionEditState` - 18 edges
4. `homeProvider` - 16 edges
5. `loginProvider` - 15 edges
6. `ProductAbcState` - 14 edges
7. `CheckoutState` - 14 edges
8. `build` - 14 edges
9. `SectionAbcState` - 14 edges
10. `yourBagProvider` - 12 edges

## Surprising Connections (you probably didn't know these)
- `wWinMain()` --calls--> `CreateAndAttachConsole()`  [INFERRED]
  windows/runner/main.cpp → windows/runner/utils.cpp
- `FlutterWindow` --inherits--> `Win32Window`  [EXTRACTED]
  windows/runner/flutter_window.h → windows/runner/win32_window.h
- `my_application_activate()` --calls--> `fl_register_plugins()`  [INFERRED]
  linux/runner/my_application.cc → linux/flutter/generated_plugin_registrant.cc
- `main()` --calls--> `my_application_new()`  [INFERRED]
  linux/runner/main.cc → linux/runner/my_application.cc
- `wWinMain()` --calls--> `GetCommandLineArguments()`  [INFERRED]
  windows/runner/main.cpp → windows/runner/utils.cpp

## Import Cycles
- None detected.

## Communities (135 total, 14 thin omitted)

### Community 0 - "payment_process_response_model.dart"
Cohesion: 0.06
Nodes (46): _, class, CreditCardPaymentResponseModelPatterns, hashCode, identical, null, operator, orElse (+38 more)

### Community 1 - "section_model.dart"
Cohesion: 0.06
Nodes (37): _, class, hashCode, id, identical, null, operator, orElse (+29 more)

### Community 2 - "GeneratedPluginRegistrant.swift"
Cohesion: 0.05
Nodes (21): cloud_firestore, Cocoa, file_selector_macos, firebase_auth, firebase_core, firebase_messaging, firebase_storage, Flutter (+13 more)

### Community 3 - "router.dart"
Cohesion: 0.04
Nodes (28): checkout, dispose, ecommerceHome, explore, _getUserRoleUseCase, itemView, login, logout (+20 more)

### Community 4 - "credit_card_payment_model.dart"
Cohesion: 0.07
Nodes (30): _, cardNumber, class, CreditCardPaymentModelPatterns, hashCode, identical, null, operator (+22 more)

### Community 5 - "return"
Cohesion: 0.08
Nodes (38): _, class, _colors, hashCode, id, identical, null, operator (+30 more)

### Community 6 - "package:flutter/material.dart"
Cohesion: 0.07
Nodes (23): AdminAppBarBackButton, build, getProductsBySection, GetProductsDataSource, logoutProvider, emailController, LoginView, passwordController (+15 more)

### Community 7 - "product_edit_state.dart"
Cohesion: 0.08
Nodes (30): _, hashCode, identical, image, isCapturing, isDeleting, isLoading, isPicking (+22 more)

### Community 8 - "section_edit_state.dart"
Cohesion: 0.08
Nodes (30): _, hashCode, identical, image, isCapturing, isDeleting, isLoading, isPicking (+22 more)

### Community 9 - "section_abc_state.dart"
Cohesion: 0.10
Nodes (33): _, hashCode, identical, isLoading, isSaving, isSelecting, null, operator (+25 more)

### Community 10 - "product_edit_view.dart"
Cohesion: 0.06
Nodes (31): _addProduct, ButtonWithIcon, _colors, context, controller, createState, _descriptionController, dispose (+23 more)

### Community 11 - "product_abc_state.dart"
Cohesion: 0.10
Nodes (32): _, hashCode, identical, isSaving, _IsSelecting, null, operator, orElse (+24 more)

### Community 12 - "user_info_entity.dart"
Cohesion: 0.10
Nodes (32): _, class, hashCode, identical, null, operator, orElse, _self (+24 more)

### Community 13 - "api_consts.dart"
Cohesion: 0.06
Nodes (23): ApiConsts, cards, cardsBase, FireStoreCollections, getCards, paymentBase, processPayment, products (+15 more)

### Community 14 - "my_application.cc"
Cohesion: 0.08
Nodes (14): fl_register_plugins(), main(), first_frame_cb(), my_application_activate(), my_application_class_init(), my_application_dispose(), my_application_init(), my_application_local_command_line() (+6 more)

### Community 15 - "checkout_state.dart"
Cohesion: 0.11
Nodes (28): _, CheckoutStatePatterns, hashCode, identical, null, operator, orElse, _self (+20 more)

### Community 16 - "transaction_list_stream_state.dart"
Cohesion: 0.12
Nodes (26): _, hashCode, identical, message, null, operator, orElse, _self (+18 more)

### Community 17 - "transaction_detail_state.dart"
Cohesion: 0.13
Nodes (26): _, hashCode, identical, message, null, operator, orElse, _self (+18 more)

### Community 18 - "transaction_list_paged_state.dart"
Cohesion: 0.13
Nodes (26): _, hashCode, identical, message, null, operator, orElse, _self (+18 more)

### Community 19 - "local_user_info_use_case.dart"
Cohesion: 0.10
Nodes (18): UserInfoRepositoryImpl, getUserInfo, getUserInfoFromLocalStorage, saveUserInfo, saveUserInfoToLocalStorage, UserInfoRepository, getUserInfo, GetUserInfoUseCase (+10 more)

### Community 20 - "user_info_model.dart"
Cohesion: 0.14
Nodes (22): _, class, hashCode, identical, null, operator, orElse, _self (+14 more)

### Community 21 - "package:freezed_annotation/freezed_annotation.dart"
Cohesion: 0.14
Nodes (22): _, hashCode, identical, LogoutStatePatterns, message, null, operator, orElse (+14 more)

### Community 22 - "admin_product_model.dart"
Cohesion: 0.15
Nodes (21): _, AdminProductModelPatterns, class, _colors, hashCode, id, identical, null (+13 more)

### Community 23 - "admin_product_entity.dart"
Cohesion: 0.16
Nodes (22): _, AdminProductEntityPatterns, class, _colors, hashCode, id, identical, null (+14 more)

### Community 24 - "bag_product_entity.dart"
Cohesion: 0.14
Nodes (21): _, BagProductEntityPatterns, class, hashCode, id, identical, null, operator (+13 more)

### Community 25 - "package:image_picker/image_picker.dart"
Cohesion: 0.10
Nodes (14): captureImageFromCamera, _imagePicker, LocalCaptureImageDataSource, _imagePicker, LocalProductoStorageDataSource, pickImageFromGallery, captureImageFromCamera, CaptureImageRepositoryImpl (+6 more)

### Community 26 - "loginProvider"
Cohesion: 0.12
Nodes (16): productEditProvider, _BodyWidget, build, bottomNavProvider, _processPayment, _BottomButtonsBar, build, _WelcomeGreeting (+8 more)

### Community 27 - "package:xpapp/features/ecommerce/domain/entities/product_entity.dart"
Cohesion: 0.11
Nodes (16): getAllProducts, getProductsBySection, _productsDataSource, ProductsRepositoryImpl, saveProduct, getAllProducts, getProductsBySection, ProductsRepository (+8 more)

### Community 28 - "onboarding_view.dart"
Cohesion: 0.09
Nodes (15): _animationController, _BottomCard, _BottomCardState, build, _ButtonSection, createState, dispose, _DotIndicator (+7 more)

### Community 29 - "notifications_service.dart"
Cohesion: 0.09
Nodes (16): _extractTransactionId, _extractView, _firebaseMessaging, firebaseMessagingBackgroundHandler, _foregroundMessageHandler, _handleOpenedMessage, init, initializeApp (+8 more)

### Community 30 - "payment_process_entity.dart"
Cohesion: 0.15
Nodes (20): _, _bagProducts, cardNumber, class, hashCode, identical, null, operator (+12 more)

### Community 31 - "section_entity.dart"
Cohesion: 0.15
Nodes (19): _, class, hashCode, id, identical, null, operator, orElse (+11 more)

### Community 32 - "assets.dart"
Cohesion: 0.09
Nodes (21): Assets, beachBall, beachTowel, bestSellersSection, boots, fill, forThisSummerSection, hat (+13 more)

### Community 33 - "checkout_view.dart"
Cohesion: 0.11
Nodes (20): paymentMethodProvider, build, _cardBrand, createState, initState, isActive, isCompleted, label (+12 more)

### Community 34 - "int get"
Cohesion: 0.15
Nodes (18): _, AdminSectionEntityPatterns, class, hashCode, id, identical, null, operator (+10 more)

### Community 35 - "bag_product_model.dart"
Cohesion: 0.16
Nodes (19): _, BagProductModelPatterns, class, hashCode, id, identical, null, operator (+11 more)

### Community 36 - "transaction_model.dart"
Cohesion: 0.16
Nodes (19): _, _bagProducts, class, hashCode, id, identical, null, operator (+11 more)

### Community 37 - "is_logged_in_use_case.dart"
Cohesion: 0.13
Nodes (15): AuthenticationImplRepository, AuthenticationRepository, call, getCurrentUser, IsLoggedInUseCase, _repository, call, LogOutUseCase (+7 more)

### Community 38 - "product_abc_view.dart"
Cohesion: 0.10
Nodes (14): _ProductEditFormStateful, _ProductEditFormStatefulState, _AddProductButton, build, color, createState, _InfoTag, label (+6 more)

### Community 39 - "admin_product_image_model.dart"
Cohesion: 0.17
Nodes (18): _, AdminProductImageModelPatterns, class, hashCode, id, identical, null, operator (+10 more)

### Community 40 - "admin_section_model.dart"
Cohesion: 0.17
Nodes (18): _, AdminSectionModelPatterns, class, hashCode, id, identical, null, operator (+10 more)

### Community 41 - "product_entity.dart"
Cohesion: 0.18
Nodes (19): _, class, _colors, hashCode, id, identical, null, operator (+11 more)

### Community 42 - "user_model.dart"
Cohesion: 0.17
Nodes (18): _, class, hashCode, id, identical, null, operator, orElse (+10 more)

### Community 43 - "ConsumerWidget"
Cohesion: 0.14
Nodes (16): ProductEditView, bannerProvider, homeProvider, CheckoutView, initState, _MainCarrouselSection, _SuggerencesSection, _BodyWidget (+8 more)

### Community 44 - "package:xpapp/features/administrator/domain/entities/admin_product_entity.dart"
Cohesion: 0.14
Nodes (14): AdminProductRepositoryImpl, AdminProductRepository, addAdminProduct, AdminProductAddUseCase, repository, AdminProductDelUseCase, deleteAdminProduct, repository (+6 more)

### Community 45 - "payment_method_entity.dart"
Cohesion: 0.17
Nodes (17): _, class, debugFillProperties, hashCode, identical, null, number, operator (+9 more)

### Community 46 - "transaction_entity.dart"
Cohesion: 0.18
Nodes (18): _, _bagProducts, class, hashCode, id, identical, null, operator (+10 more)

### Community 47 - "transaction_detail_get_use_case.dart"
Cohesion: 0.13
Nodes (14): TransactionRepositoryImpl, TransactionRepository, execute, _repository, TransactionDetailGetUseCase, execute, repository, TransactionPagesGetUseCase (+6 more)

### Community 48 - "trasaction_detail_view.dart"
Cohesion: 0.11
Nodes (17): transactionDetailProvider, _BackHomeButtonSection, _BagDetailsSection, bagProducts, _BlueBigButton, build, buttonText, createState (+9 more)

### Community 49 - "your_bag_notifier.dart"
Cohesion: 0.11
Nodes (14): addItemToBag, _bagProducts, clearBag, _getBagProductsUseCase, loadBag, removeItemFromBag, saveBag, _saveYourBagUseCase (+6 more)

### Community 50 - "payment_method_model.dart"
Cohesion: 0.18
Nodes (16): _, class, hashCode, identical, null, number, operator, orElse (+8 more)

### Community 51 - "T"
Cohesion: 0.19
Nodes (15): _, class, hashCode, id, identical, null, operator, orElse (+7 more)

### Community 52 - "product_edit_notifier.dart"
Cohesion: 0.11
Nodes (12): _addAdminProductUseCase, addProduct, captureImage, _captureImageUseCase, _delAdminProductUseCase, deleteProduct, _getAdminProductsUseCase, getProductById (+4 more)

### Community 53 - "transaction_list_paged_view.dart"
Cohesion: 0.11
Nodes (17): amount, bagProducts, cardNumber, createState, date, _hasRequestedLoadAfterLogin, holderName, NextPageButton (+9 more)

### Community 54 - "login_notifier.dart"
Cohesion: 0.11
Nodes (13): _firebaseMessaging, _getUserInfoUseCase, isAdmin, isLoggedIn, _isLoggedInUseCase, _localUserInfoUseCase, login, _loginUseCase (+5 more)

### Community 55 - "win32_window.cpp"
Cohesion: 0.18
Nodes (5): Scale(), Win32Window::Win32Window(), WindowClassRegistrar, class_registered_, instance_

### Community 56 - "authentication_impl_repository.dart"
Cohesion: 0.12
Nodes (13): _firebaseAuth, FirebaseLoginDataSource, getCurrentUser, isLoggedIn, login, logout, register, _dataSource (+5 more)

### Community 57 - "FlutterWindow"
Cohesion: 0.12
Nodes (4): FlutterWindow, flutter_controller_, FlutterWindow::FlutterWindow(), project_

### Community 58 - "bag_item_widget.dart"
Cohesion: 0.11
Nodes (14): BlueBigButton, build, buttonText, onTap, route, BagItemWidget, build, image (+6 more)

### Community 59 - "section_edit_notifier.dart"
Cohesion: 0.11
Nodes (12): addSection, _addUseCase, captureImage, _captureImageUseCase, deleteSection, _deleteUseCase, _getUseCase, loadSection (+4 more)

### Community 60 - "StatelessWidget"
Cohesion: 0.18
Nodes (16): FormField, activeSession, AppBarBackButton, AppBarCartButton, AppBarFavoriteButton, AppBarLogoutButton, AppBarProductABCButton, AppBarSearchButton (+8 more)

### Community 61 - "admin_product_repository_impl.dart"
Cohesion: 0.12
Nodes (13): FirebaseStorageProductDataSource, addAdminProduct, _adminProductDataSource, deleteAdminProduct, _firebaseStorageProductDataSource, getAdminProductById, getAdminProducts, updateAdminProduct (+5 more)

### Community 62 - "section_edit_view.dart"
Cohesion: 0.12
Nodes (12): sectionEditProvider, _BodyWidget, build, _descriptionController, dispose, _imageFile, _imageUrlController, _nameController (+4 more)

### Community 63 - "package:xpapp/features/ecommerce/domain/entities/bag_product_entity.dart"
Cohesion: 0.14
Nodes (11): YourBagRepositoryImpl, clearYourBag, getYourBag, saveYourBag, YourBagRepository, getBagProducts, _getBagProductsRepository, GetBagProductsUseCase (+3 more)

### Community 64 - "package:xpapp/features/ecommerce/domain/entities/payment_method_entity.dart"
Cohesion: 0.16
Nodes (10): PaymentMethodRepositoryImpl, getPaymentMethods, PaymentMethodRepository, savePaymentMethods, call, GetPaymentMethodsUseCase, _repository, call (+2 more)

### Community 65 - "item_view.dart"
Cohesion: 0.18
Nodes (13): selectedColorProvider, selectedProductProvider, selectedSizeProvider, _ProductSection, _AddToBagButtonSection, build, _colorFromName, ECommerceItemView (+5 more)

### Community 66 - "env.dart"
Cohesion: 0.13
Nodes (9): apiBaseUrl, apiKey, cardsApiUrl, Env, Environment, initialize, _instance, load (+1 more)

### Community 67 - "AdminProductState"
Cohesion: 0.14
Nodes (14): AdminProductStatePatterns, AdminProductState, _CapturingImage, _Deleted, _Deleting, _Error, _ImageCaptured, _ImagePicked (+6 more)

### Community 68 - "SectionEditState"
Cohesion: 0.14
Nodes (14): SectionEditStatePatterns, _CapturingImage, _Deleted, _Deleting, _Error, _ImageCaptured, _ImagePicked, _Initial (+6 more)

### Community 69 - "personalise_view.dart"
Cohesion: 0.16
Nodes (9): personaliseNotifierProvider, build, _ButtonSection, _CheckboxSection, enabled, PersonaliseView, _ProgressSection, selectedCount (+1 more)

### Community 70 - "firebase_storage_product_data_source.dart"
Cohesion: 0.16
Nodes (9): deleteProductImage, downloadProductImage, _firebaseStorage, getProductImageUrl, uploadProductImage, _firebaseStorage, FirebaseStorageSectionDataSource, getSectionImageUrl (+1 more)

### Community 71 - "local_your_bag_data_source.dart"
Cohesion: 0.15
Nodes (7): init, _instance, prefs, clearBag, getBag, _prefs, saveBag

### Community 72 - "pick_image_repository_impl.dart"
Cohesion: 0.15
Nodes (8): _localDataSource, pickImageFromGallery, PickImageRepositoryImpl, pickImageFromGallery, PickImageRepository, call, _pickImageRepository, PickImageUseCase

### Community 73 - "product_abc_notifier.dart"
Cohesion: 0.14
Nodes (7): ProductAbcNotifier, productAbcProvider, _productSaveUseCase, saveProduct, interests, InterestsData, toggleInterests

### Community 74 - "transaction_list_stream_view.dart"
Cohesion: 0.15
Nodes (12): amount, cardNumber, createState, date, holderName, transactionId, TransactionListStreamArea, TransactionListStreamBody (+4 more)

### Community 75 - "utils.cpp"
Cohesion: 0.19
Nodes (4): wWinMain(), CreateAndAttachConsole(), GetCommandLineArguments(), Utf8FromUtf16()

### Community 76 - "form_widgets.dart"
Cohesion: 0.15
Nodes (10): build, controller, FormField, FormFieldLabel, hintText, icon, iconColor, keyboardType (+2 more)

### Community 77 - "home_notifier.dart"
Cohesion: 0.15
Nodes (9): addProduct, addSection, _getProductosUseCase, _getSectionsUseCase, loadAllProducts, loadProductsBySection, loadSections, updateSelectedColor (+1 more)

### Community 78 - "Win32Window"
Cohesion: 0.19
Nodes (5): RegisterPlugins(), Win32Window, child_content_, quit_on_close_, window_handle_

### Community 79 - "transaction_list_stream_notifier.dart"
Cohesion: 0.17
Nodes (7): dispose, _firebaseAuth, _getTransactionsUseCase, _initializeTransactions, initSubscription, _subscription, transactionListProvider

### Community 80 - "payment_method_notifier.dart"
Cohesion: 0.17
Nodes (8): addPaymentMethod, _getPaymentMethodsUseCase, loadPaymentMethods, PaymentMethodNotifier, _savePaymentMethodsUseCase, selectApplePay, selectPaymentMethod, PaymentMethodState

### Community 81 - "yourBagProvider"
Cohesion: 0.20
Nodes (7): yourBagProvider, _BagDetailsSection, _BagItemsArea, build, _CheckOutButtonSection, _TotalPriceDisplay, YourBagView

### Community 83 - "your_bag_repository_impl.dart"
Cohesion: 0.20
Nodes (8): LocalYourBagDataSource, clearYourBag, getYourBag, _localDataSource, saveYourBag, ClearYourBagUseCase, execute, _localYourBagDataSource

### Community 84 - "checkout_notifier.dart"
Cohesion: 0.18
Nodes (7): _checkoutPaymentUseCase, checkoutProvider, getPaymentMethods, _getPaymentMethodsUseCase, paymentProcess, _ref, _saveTransactionUseCase

### Community 85 - "option_item.dart"
Cohesion: 0.18
Nodes (9): build, discount, name, option, OptionItem, OptionItemData, options, price (+1 more)

### Community 86 - "manifest.json"
Cohesion: 0.18
Nodes (10): background_color, description, display, icons, name, orientation, prefer_related_applications, short_name (+2 more)

### Community 87 - "transaction_list_paged_notifier.dart"
Cohesion: 0.20
Nodes (6): _firebaseAuth, _getTransactionPagesUseCase, loadNextPage, loadTransactionPages, refreshTransactionListPaged, transactionListPagedProvider

### Community 88 - "admin_section_add_use_case.dart"
Cohesion: 0.22
Nodes (6): addAdminSection, AdminSectionAddUseCase, _repository, AdminSectionDelUseCase, deleteAdminSection, _repository

### Community 90 - "firebase_admin_product_data_source.dart"
Cohesion: 0.22
Nodes (7): addProduct, deleteProduct, FirebaseAdminProductDataSource, _firestore, getAllProducts, getProductById, updateProduct

### Community 91 - "admin_section_repository_impl.dart"
Cohesion: 0.22
Nodes (7): FirebaseAdminSectionDataSource, addAdminSection, _adminSectionDataSource, deleteAdminSection, getAdminSectionById, getAdminSections, updateAdminSection

### Community 92 - "home_view.dart"
Cohesion: 0.25
Nodes (7): createState, ECommerceHomeView, _ECommerceHomeViewState, imageVersion, products, title, _withCacheBuster

### Community 93 - "user_info_repository_impl.dart"
Cohesion: 0.22
Nodes (6): _datasource, getUserInfo, getUserInfoFromLocalStorage, _localStorageDatasource, saveUserInfo, saveUserInfoToLocalStorage

### Community 94 - "@freezed"
Cohesion: 0.29
Nodes (6): AdminSectionEntityX, AdminSectionEntity, _AdminSectionEntity, TransactionModel, _TransactionModel, TransactionModelX

### Community 96 - "local_storage_login_datasource.dart"
Cohesion: 0.25
Nodes (5): _getSharedPreferences, getUserInfo, LocalStorageLoginDatasource, saveUserInfo, _sharedPreferences

### Community 97 - "local_payment_method_data_source.dart"
Cohesion: 0.25
Nodes (6): LocalStorage, getPaymentMethods, LocalPaymentMethodDataSource, _localStorage, _paymentMethodsKey, savePaymentMethods

### Community 98 - "firebase_admin_section_data_source.dart"
Cohesion: 0.25
Nodes (6): addSection, deleteSection, _firestore, getSectionById, getSections, updateSection

### Community 99 - "admin_section_repository.dart"
Cohesion: 0.25
Nodes (7): AdminSectionRepositoryImpl, addAdminSection, AdminSectionRepository, deleteAdminSection, getAdminSectionById, getAdminSections, updateAdminSection

### Community 100 - "payment_method_repository_impl.dart"
Cohesion: 0.25
Nodes (5): CreditCardsGetCardsDataSource, getPaymentMethods, _localDataSource, _remoteDataSource, savePaymentMethods

### Community 101 - "firebase_transaction_data_source.dart"
Cohesion: 0.25
Nodes (6): FirebaseTransactionDataSource, _firestore, getTransactionById, getTransactionsByPage, getTransactionsStream, saveTransaction

### Community 102 - "item_view_notifier.dart"
Cohesion: 0.25
Nodes (6): selectedColor, selectedProduct, selectedSize, updateProduct, updateSelectedColor, updateSelectedSize

### Community 103 - "firebase_options.dart"
Cohesion: 0.25
Nodes (4): android, DefaultFirebaseOptions, ios, web

### Community 104 - "Point"
Cohesion: 0.21
Nodes (6): Point, x, y, Size, height, width

### Community 105 - "StateNotifier"
Cohesion: 0.29
Nodes (6): ProductEditNotifier, SectionEditNotifier, CheckoutNotifier, TransactionListPagedNotifier, TransactionListNotifier, LoginNotifier

### Community 106 - "firebase_products_data_source.dart"
Cohesion: 0.29
Nodes (6): FirebaseProductsDataSource, _firestore, getAllProducts, getProductsBySection, postProduct, updateProduct

### Community 107 - "transaction_repository_impl.dart"
Cohesion: 0.29
Nodes (5): _dataSource, getTransactionById, getTransactions, getTransactionsByPage, saveTransaction

### Community 108 - "home_state.dart"
Cohesion: 0.29
Nodes (6): HomeNotifier, copyWith, HomeState, imageVersion, products, sections

### Community 109 - "item_view_state.dart"
Cohesion: 0.29
Nodes (6): ItemViewNotifier, copyWith, ItemViewState, product, selectedColor, selectedSize

### Community 110 - "transaction_detail_notifier.dart"
Cohesion: 0.29
Nodes (3): getTransactionDetail, _getTransactionDetailUseCase, TransactionDetailNotifier

### Community 111 - "firebase_user_info_datasource.dart"
Cohesion: 0.29
Nodes (4): FirebaseUserInfoDatasource, _firestore, getUserInfo, saveUserInfo

### Community 112 - "logout_notifier.dart"
Cohesion: 0.29
Nodes (3): _isLoggedInUseCase, logout, _logoutUseCase

### Community 113 - "subscription_view.dart"
Cohesion: 0.29
Nodes (5): build, _SubscribeBenefits, _SubscriptionContent, _SubscriptionOptions, SubscriptionView

### Community 114 - "checkbox_item.dart"
Cohesion: 0.29
Nodes (5): build, CheckboxItem, onChanged, title, value

### Community 115 - "admin_product_repository.dart"
Cohesion: 0.33
Nodes (5): addAdminProduct, deleteAdminProduct, getAdminProductById, getAdminProducts, updateAdminProduct

### Community 117 - "package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart"
Cohesion: 0.33
Nodes (4): getTransactionById, getTransactions, getTransactionsByPage, saveTransaction

### Community 118 - "authentication_repository.dart"
Cohesion: 0.33
Nodes (5): getCurrentUser, isLoggedIn, login, logout, register

### Community 119 - "PaymentMethodEntity"
Cohesion: 0.40
Nodes (4): PaymentMethodEntityPatterns, PaymentMethodEntity, _PaymentMethodEntity, PaymentMethodEntityX

### Community 120 - "firebase_sections_data_source.dart"
Cohesion: 0.40
Nodes (3): _firestore, getSections, postSection

### Community 121 - "flutter-dart-specialist.agent.md"
Cohesion: 0.40
Nodes (4): Approach, Constraints, Output Format, Preferred Technical Focus

### Community 122 - "admin_section_get_use_case.dart"
Cohesion: 0.40
Nodes (4): AdminSectionGetUseCase, getAdminSectionById, getAllSections, _repository

### Community 123 - "package:xpapp/features/administrator/domain/entities/admin_section_entity.dart"
Cohesion: 0.40
Nodes (3): AdminSectionUpdUseCase, _repository, updateAdminSection

### Community 125 - "PaymentMethodModel"
Cohesion: 0.67
Nodes (3): PaymentMethodModelPatterns, PaymentMethodModel, _PaymentMethodModel

## Knowledge Gaps
- **725 isolated node(s):** `_amountFromJson`, `fromJson`, `_dateTimeFromJson`, `toEntity`, `_amountFromJson` (+720 more)
  These have ≤1 connection - possible missing edges or undocumented components. (Counts symbols only; 975 node(s) total have ≤1 connection when file, concept and rationale nodes are included.)
- **14 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `AdminProductEntity` connect `admin_product_entity.dart` to `product_edit_view.dart`, `@freezed`, `product_edit_state.dart`?**
  _High betweenness centrality (0.009) - this node is a cross-community bridge._
- **What connects `_amountFromJson`, `fromJson`, `_dateTimeFromJson` to the rest of the system?**
  _725 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `payment_process_response_model.dart` be split into smaller, more focused modules?**
  _Cohesion score 0.05925925925925926 - nodes in this community are weakly interconnected._
- **Why does `ProductEntity` connect `product_entity.dart` to `item_view.dart`, `item_view_notifier.dart`, `product_abc_state.dart`, `item_view_state.dart`, `@freezed`?**
  _High betweenness centrality (0.008) - this node is a cross-community bridge._
- **Should `section_model.dart` be split into smaller, more focused modules?**
  _Cohesion score 0.05647058823529412 - nodes in this community are weakly interconnected._
- **Why does `UserInfoEntity` connect `user_info_entity.dart` to `@freezed`?**
  _High betweenness centrality (0.007) - this node is a cross-community bridge._
- **Should `GeneratedPluginRegistrant.swift` be split into smaller, more focused modules?**
  _Cohesion score 0.05087881591119334 - nodes in this community are weakly interconnected._