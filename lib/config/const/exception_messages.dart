class AppErrorMessages {
  AppErrorMessages._();

  // --- Network & Connection (اتصال الشبكة) ---
  static const String requestCancelled = 'تم إلغاء الطلب، يرجى المحاولة مرة أخرى.';
  static const String requestTimeout = 'انتهت مهلة الاتصال، يرجى التأكد من جودة الإنترنت.';
  static const String receiveTimeout = 'استغرق الخادم وقتاً طويلاً للرد، يرجى المحاولة لاحقاً.';
  static const String sendTimeout = 'فشل في إرسال البيانات، يرجى التحقق من الاتصال.';
  static const String connectionError = 'تعذر الاتصال بالخادم، يرجى التحقق من اتصالك بالإنترنت.';
  static const String connectionTimeoutError = 'انتهت مهلة الاتصال، يرجى المحاولة مرة أخرى.';
  static const String badCertificate = 'فشل الاتصال الآمن، يرجى التحقق من إعدادات الشبكة.';
  static const String verifyInternetConnection = 'يرجى التحقق من اتصال الإنترنت والمحاولة مرة أخرى.';
  static const String unexpectedNetworkError = 'حدث خطأ غير متوقع في الشبكة، يرجى المحاولة لاحقاً.';

  // --- HTTP & General Platform (أخطاء المنصة العامة) ---
  static const String badRequest = 'الطلب غير صالح، يرجى التأكد من البيانات والمحاولة.';
  static const String authenticationFailure = 'فشل التحقق من الهوية، يرجى تسجيل الدخول مرة أخرى.';
  static const String notAuthorized = 'ليس لديك الصلاحية للقيام بهذا الإجراء.';
  static const String notFound404 = 'المورد المطلوب غير موجود.';
  static const String notAllowed = 'هذا الإجراء غير مسموح به.';
  static const String unsupported = 'هذا النوع من الطلبات غير مدعوم حالياً.';
  static const String validationFailure = 'بعض البيانات المدخلة غير صحيحة، يرجى مراجعتها.';
  static const String tooManyRequests = 'طلبات كثيرة جداً، يرجى الانتظار قليلاً قبل المحاولة.';
  static const String internalServerError = 'حدث خطأ في الخادم، نحن نعمل على إصلاحه.';
  static const String serviceUnavailable = 'الخدمة غير متوفرة حالياً، يرجى المحاولة لاحقاً.';
  static const String paymentRequired = 'مطلوب إتمام الدفع أو تم تجاوز الحصة المتاحة.';
  static const String projectPaused = 'المشروع متوقف حالياً، يرجى التواصل مع الدعم.';
  static const String gatewayTimeout = 'انتهت مهلة بوابة الاستجابة، يرجى المحاولة لاحقاً.';

  // --- Supabase Auth (أخطاء تسجيل الدخول) ---
  static const String invalidCredentials = 'البريد الإلكتروني أو كلمة المرور غير صحيحة.';
  static const String emailExists = 'البريد الإلكتروني مسجل بالفعل، يرجى تسجيل الدخول.';
  static const String emailNotConfirmed = 'لم يتم تأكيد البريد الإلكتروني بعد، يرجى تفعيل حسابك.';
  static const String providerDisabled = 'مزود تسجيل الدخول هذا غير متاح حالياً.';
  static const String badJwt = 'جلسة العمل منتهية الصلاحية، يرجى تسجيل الدخول مجدداً.';
  static const String captchaFailed = 'فشل التحقق من "كابتشا"، يرجى المحاولة مرة أخرى.';
  static const String reauthNeeded = 'يتطلب الإجراء إعادة تسجيل الدخول لتأكيد الهوية.';
  static const String ssoNotFound = 'مزود تسجيل الدخول الموحد غير موجود.';

  // --- Supabase Storage (أخطاء التخزين) ---
  static const String bucketNotFound = 'مساحة التخزين المطلوبة غير موجودة.';
  static const String fileNotFound = 'الملف المطلوب غير موجود.';
  static const String uploadNotFound = 'لم يتم العثور على عملية الرفع.';
  static const String entityTooLarge = 'حجم الملف كبير جداً، يرجى رفع ملف أصغر.';
  static const String resourceExists = 'الملف أو المجلد موجود بالفعل.';
  static const String malformedRequest = 'طلب التخزين غير صحيح.';
  static const String invalidFormat = 'خطأ في تنسيق البيانات المدخلة، يرجى التأكد من صحة الحقول.';

  // --- Supabase Realtime (أخطاء التزامن الفوري) ---
  static const String rateLimitReached = 'تم تجاوز حد القنوات المسموح به حالياً.';
  static const String joinLimitReached = 'تم تجاوز حد الانضمام المسموح به، حاول لاحقاً.';
  static const String dbConnectionIssue = 'حدثت مشكلة في الاتصال بقاعدة البيانات.';
  static const String unauthorizedRealtime = 'غير مسموح لك بالوصول للتزامن الفوري.';

  // --- Local Storage & General (أخطاء محلية وعامة) ---
  static const String readError = 'تعذر قراءة البيانات المحفوظة.';
  static const String writeError = 'فشل حفظ البيانات.';
  static const String deleteError = 'تعذر حذف البيانات.';
  static const String notFoundLocal = 'لم يتم العثور على بيانات محفوظة.';
  static const String permissionDenied = 'تم رفض الوصول، يرجى منح الإذن من الإعدادات.';
  static const String formatError = 'البيانات المحفوظة تالفة أو غير صالحة.';
  static const String unexpectedError = 'حدث خطأ غير متوقع، يرجى المحاولة لاحقاً.';
  static const String unknownError = 'حدث خطأ ما، يرجى المحاولة لاحقاً.';
}
