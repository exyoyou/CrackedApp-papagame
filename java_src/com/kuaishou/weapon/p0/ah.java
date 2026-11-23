package com.kuaishou.weapon.p0;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import java.lang.reflect.Proxy;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class ah {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f74424a = "YW5kcm9pZC5hcHAuQWN0aXZpdHlUaHJlYWQ=";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f74425b = "YW5kcm9pZC5hcHAuQWN0aXZpdHlNYW5hZ2Vy";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f74426c = "YW5kcm9pZC5hcHAuQWN0aXZpdHlNYW5hZ2VyTmF0aXZl";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f74427d = "YW5kcm9pZC5hcHAuQWN0aXZpdHlUYXNrTWFuYWdlcg==";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f74428e = "SUFjdGl2aXR5VGFza01hbmFnZXJTaW5nbGV0b24=";

    private void b(JSONObject jSONObject, int i10) {
        try {
            Object objA = df.a(new String(c.a(f74424a.getBytes(), 2)), (Object) null, "getPackageManager", new Object[0]);
            if (objA != null) {
                a(objA, jSONObject, i10);
            }
        } catch (Exception unused) {
        }
    }

    private void c(JSONObject jSONObject, int i10) {
        Object objA;
        Object objA2;
        try {
            if (Build.VERSION.SDK_INT < 29 || (objA = df.a(new String(c.a("YW5kcm9pZC5hcHAuQWN0aXZpdHlUYXNrTWFuYWdlcg==".getBytes(), 2)), new String(c.a("SUFjdGl2aXR5VGFza01hbmFnZXJTaW5nbGV0b24=".getBytes(), 2)))) == null || (objA2 = df.a("android.util.Singleton", objA, "get", new Object[0])) == null) {
                return;
            }
            a(objA2, jSONObject, i10);
        } catch (Exception unused) {
        }
    }

    private void d(JSONObject jSONObject, int i10) {
        Object objA;
        try {
            Object objA2 = df.a(new String(c.a(f74424a.getBytes(), 2)), (Object) null, "currentActivityThread", new Object[0]);
            if (objA2 == null || (objA = df.a(objA2.getClass(), objA2, "mInstrumentation")) == null) {
                return;
            }
            a(objA, jSONObject, i10);
        } catch (Exception unused) {
        }
    }

    public JSONObject a() {
        try {
            JSONObject jSONObject = new JSONObject();
            b(jSONObject, 0);
            a(jSONObject, 1);
            c(jSONObject, 2);
            d(jSONObject, 3);
            if (jSONObject.length() > 0) {
                return jSONObject;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private void a(JSONObject jSONObject, int i10) {
        Object objA;
        Object objA2;
        try {
            String str = new String(c.a("YW5kcm9pZC5hcHAuQWN0aXZpdHlNYW5hZ2Vy".getBytes(), 2));
            String str2 = new String(c.a("YW5kcm9pZC5hcHAuQWN0aXZpdHlNYW5hZ2VyTmF0aXZl".getBytes(), 2));
            if (Build.VERSION.SDK_INT >= 26) {
                objA = df.a(str, "IActivityManagerSingleton");
            } else {
                objA = df.a(str2, "gDefault");
            }
            if (objA == null || (objA2 = df.a("android.util.Singleton", objA, "get", new Object[0])) == null) {
                return;
            }
            a(objA2, jSONObject, i10);
        } catch (Exception unused) {
        }
    }

    private boolean a(Object obj, JSONObject jSONObject, int i10) {
        if (jSONObject != null) {
            try {
                boolean zIsProxyClass = Proxy.isProxyClass(obj.getClass());
                String name = obj.getClass().getName();
                int i11 = 1;
                if (zIsProxyClass) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i10);
                    String string = sb2.toString();
                    if (!zIsProxyClass) {
                        i11 = 0;
                    }
                    jSONObject.put(string, i11);
                    jSONObject.put(i10 + "-c", name);
                } else if (i10 == 3 && !name.contains("Instrumentation")) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(i10);
                    String string2 = sb3.toString();
                    if (!zIsProxyClass) {
                        i11 = 0;
                    }
                    jSONObject.put(string2, i11);
                    jSONObject.put(i10 + "-c", name);
                }
                return zIsProxyClass;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public JSONObject a(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            PackageManager packageManager = context.getPackageManager();
            Object objA = df.a(packageManager.getClass(), packageManager, "mPM");
            if (objA == null || !a(objA, jSONObject, 0)) {
                return null;
            }
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }
}
