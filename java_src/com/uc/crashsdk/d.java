package com.uc.crashsdk;

import android.os.Bundle;
import android.webkit.ValueCallback;
import com.join.mgps.activity.QuarkInstallAppActivity_;
import com.uc.crashsdk.export.ICrashClient;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ICrashClient f84089a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f84090b = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile List<ValueCallback<Bundle>> f84091c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile List<ValueCallback<Bundle>> f84092d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile List<ValueCallback<Bundle>> f84093e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile List<ValueCallback<Bundle>> f84094f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Object f84095g = new Object();

    public static void a(ICrashClient iCrashClient) {
        f84089a = iCrashClient;
    }

    public static boolean b(ValueCallback<Bundle> valueCallback) {
        if (f84092d == null) {
            synchronized (f84095g) {
                if (f84092d == null) {
                    f84092d = new ArrayList();
                }
            }
        }
        synchronized (f84092d) {
            if (f84092d.size() >= f84090b) {
                return false;
            }
            f84092d.add(valueCallback);
            return true;
        }
    }

    public static boolean c(ValueCallback<Bundle> valueCallback) {
        if (f84093e == null) {
            synchronized (f84095g) {
                if (f84093e == null) {
                    f84093e = new ArrayList();
                }
            }
        }
        synchronized (f84093e) {
            if (f84093e.size() >= f84090b) {
                return false;
            }
            f84093e.add(valueCallback);
            return true;
        }
    }

    public static boolean d(ValueCallback<Bundle> valueCallback) {
        if (f84094f == null) {
            synchronized (f84095g) {
                if (f84094f == null) {
                    f84094f = new ArrayList();
                }
            }
        }
        synchronized (f84094f) {
            if (f84094f.size() >= f84090b) {
                return false;
            }
            f84094f.add(valueCallback);
            return true;
        }
    }

    public static void a(String str, String str2, String str3) {
        if (com.uc.crashsdk.a.g.a(str)) {
            com.uc.crashsdk.a.a.a("crashsdk", "onLogGenerated file name is null!", null);
            return;
        }
        boolean zEquals = e.h().equals(str2);
        if (f84089a != null) {
            File file = new File(str);
            try {
                if (zEquals) {
                    f84089a.onLogGenerated(file, str3);
                } else {
                    f84089a.onClientProcessLogGenerated(str2, file, str3);
                }
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
        }
        List<ValueCallback<Bundle>> list = f84091c;
        if (!zEquals) {
            list = f84092d;
        }
        if (list != null) {
            synchronized (list) {
                for (ValueCallback<Bundle> valueCallback : list) {
                    try {
                        Bundle bundle = new Bundle();
                        bundle.putString("filePathName", str);
                        if (!zEquals) {
                            bundle.putString("processName", str2);
                        }
                        bundle.putString("logType", str3);
                        valueCallback.onReceiveValue(bundle);
                    } catch (Throwable th2) {
                        com.uc.crashsdk.a.g.a(th2);
                    }
                }
            }
        }
    }

    public static File a(File file) {
        ICrashClient iCrashClient = f84089a;
        if (iCrashClient != null) {
            try {
                return iCrashClient.onBeforeUploadLog(file);
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
        }
        return file;
    }

    public static void a(boolean z10) {
        ICrashClient iCrashClient = f84089a;
        if (iCrashClient != null) {
            try {
                iCrashClient.onCrashRestarting(z10);
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
        }
        if (f84093e != null) {
            synchronized (f84093e) {
                for (ValueCallback<Bundle> valueCallback : f84093e) {
                    try {
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("isJava", z10);
                        valueCallback.onReceiveValue(bundle);
                    } catch (Throwable th2) {
                        com.uc.crashsdk.a.g.a(th2);
                    }
                }
            }
        }
    }

    public static void a(String str, int i10, int i11) {
        ICrashClient iCrashClient = f84089a;
        if (iCrashClient != null) {
            iCrashClient.onAddCrashStats(str, i10, i11);
        }
        if (f84094f != null) {
            synchronized (f84094f) {
                for (ValueCallback<Bundle> valueCallback : f84094f) {
                    try {
                        Bundle bundle = new Bundle();
                        bundle.putString("processName", str);
                        bundle.putInt("key", i10);
                        bundle.putInt(QuarkInstallAppActivity_.COUNT_EXTRA, i11);
                        valueCallback.onReceiveValue(bundle);
                    } catch (Throwable th) {
                        com.uc.crashsdk.a.g.a(th);
                    }
                }
            }
        }
    }

    public static String a(String str, boolean z10) {
        ICrashClient iCrashClient = f84089a;
        return iCrashClient != null ? iCrashClient.onGetCallbackInfo(str, z10) : "";
    }

    public static boolean a(ValueCallback<Bundle> valueCallback) {
        if (f84091c == null) {
            synchronized (f84095g) {
                if (f84091c == null) {
                    f84091c = new ArrayList();
                }
            }
        }
        synchronized (f84091c) {
            if (f84091c.size() >= f84090b) {
                return false;
            }
            f84091c.add(valueCallback);
            return true;
        }
    }
}
