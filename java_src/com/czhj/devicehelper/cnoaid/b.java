package com.czhj.devicehelper.cnoaid;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes9.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile boolean f25273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile String f25274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile String f25275c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile String f25276d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile String f25277e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile String f25278f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile String f25279g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static volatile String f25280h;

    private b() {
    }

    public static String a() {
        return a(false);
    }

    @Deprecated
    public static String b() {
        if (f25278f == null) {
            synchronized (b.class) {
                if (f25278f == null) {
                    f25278f = a.e();
                }
            }
        }
        if (f25278f == null) {
            f25278f = "";
        }
        return f25278f;
    }

    public static String c() {
        if (f25279g == null) {
            synchronized (b.class) {
                if (f25279g == null) {
                    f25279g = a.f();
                }
            }
        }
        if (f25279g == null) {
            f25279g = "";
        }
        return f25279g;
    }

    public static String d(Context context) {
        if (f25280h == null) {
            synchronized (b.class) {
                if (f25280h == null) {
                    f25280h = a.d(context);
                }
            }
        }
        if (f25280h == null) {
            f25280h = "";
        }
        return f25280h;
    }

    public static String a(Context context) {
        if (f25275c == null) {
            synchronized (b.class) {
                if (f25275c == null) {
                    f25275c = a.b(context);
                }
            }
        }
        if (f25275c == null) {
            f25275c = "";
        }
        return f25275c;
    }

    public static String b(Context context) {
        if (TextUtils.isEmpty(f25276d)) {
            synchronized (b.class) {
                if (TextUtils.isEmpty(f25276d)) {
                    f25276d = a.d();
                    if (f25276d == null || f25276d.length() == 0) {
                        a.a(context, new c() { // from class: com.czhj.devicehelper.cnoaid.b.1
                            @Override // com.czhj.devicehelper.cnoaid.c
                            public void a(Exception exc) {
                                String unused = b.f25276d = "";
                            }

                            @Override // com.czhj.devicehelper.cnoaid.c
                            public void a(String str) {
                                String unused = b.f25276d = str;
                            }
                        });
                    }
                }
            }
        }
        if (f25276d == null) {
            f25276d = "";
        }
        return f25276d;
    }

    public static String c(Context context) {
        if (f25277e == null) {
            synchronized (b.class) {
                if (f25277e == null) {
                    f25277e = a.c(context);
                }
            }
        }
        if (f25277e == null) {
            f25277e = "";
        }
        return f25277e;
    }

    public static String a(boolean z10) {
        if (TextUtils.isEmpty(f25274b)) {
            synchronized (b.class) {
                if (TextUtils.isEmpty(f25274b)) {
                    f25274b = z10 ? a.a() : a.b();
                }
            }
        }
        if (f25274b == null) {
            f25274b = "";
        }
        return f25274b;
    }

    public static void a(Application application) {
        a(application, (e) null);
    }

    public static void a(Application application, e eVar) {
        a(application, false, eVar);
    }

    public static void a(Application application, boolean z10) {
        a(application, z10, null);
    }

    public static void a(Application application, boolean z10, e eVar) {
        if (f25273a || application == null) {
            return;
        }
        synchronized (b.class) {
            if (!f25273a) {
                a.a(application, z10, eVar);
                f25273a = true;
            }
        }
    }
}
