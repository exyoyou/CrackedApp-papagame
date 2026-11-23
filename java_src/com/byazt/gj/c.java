package com.byazt.gj;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.ds.i;
import com.byazt.yv.da;
import com.byazt.za.Collector;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 150, 20})
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f14545a = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static i f14546c = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static volatile com.byazt.ds.x f14547n = null;
    public static boolean sp = false;
    public static boolean tt = true;
    public static tt uj;
    public static ConcurrentHashMap<String, String> ve = new ConcurrentHashMap<>(4);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static volatile uj f14548x;

    @Nullable
    public static JSONObject a() {
        if (f14547n != null) {
            return f14547n.gt();
        }
        return null;
    }

    public static void c(@NonNull Context context, @NonNull x xVar) {
        if (f14547n != null) {
            da.tt(new RuntimeException("Init Twice!"));
            return;
        }
        if (xVar.eo() == null) {
            da.tt(new RuntimeException("need to involve setSensitiveInfoProvider!"));
            return;
        }
        Application application = (Application) context.getApplicationContext();
        com.byazt.lu.uj ujVarN = com.byazt.lu.uj.n();
        com.byazt.ds.x xVar2 = new com.byazt.ds.x(application, xVar);
        f14547n = xVar2;
        i iVar = new i(application, xVar2);
        ujVarN.c(application, xVar2, iVar, new com.byazt.za.c(xVar.i()));
        f14546c = iVar;
        if (f14547n.nu()) {
            application.registerReceiver(new Collector(), new IntentFilter());
        }
        da.uj("Inited", null);
    }

    public static String da() {
        i iVar = f14546c;
        return iVar != null ? iVar.da() : "";
    }

    public static String i() {
        i iVar = f14546c;
        return iVar != null ? iVar.sp() : "";
    }

    public static String n() {
        i iVar = f14546c;
        if (iVar != null) {
            return iVar.yp();
        }
        return null;
    }

    public static String sl() {
        i iVar = f14546c;
        return iVar != null ? iVar.sl() : "";
    }

    public static String sp() {
        i iVar = f14546c;
        return iVar != null ? iVar.x() : "";
    }

    @NonNull
    public static ve t() {
        return com.byazt.yv.tt.c();
    }

    public static void tt() {
        com.byazt.lu.uj.c();
    }

    public static x u() {
        if (f14547n != null) {
            return f14547n.bm();
        }
        return null;
    }

    public static tt uj() {
        return uj;
    }

    public static uj ve() {
        return f14548x;
    }

    public static boolean x() {
        return true;
    }

    public static void yp() {
        com.byazt.lu.uj.n().i();
    }

    public static void z() {
        com.byazt.lu.uj.n().da();
    }

    public static void tt(@NonNull String str, @NonNull JSONObject jSONObject) {
        if (TextUtils.isEmpty(str) || jSONObject == null || jSONObject.length() <= 0) {
            da.tt("call onEventData with invalid params, return", null);
            return;
        }
        try {
            com.byazt.lu.uj.c(new com.byazt.tv.uj(str, jSONObject));
        } catch (Exception e10) {
            da.ve("call onEventData get exception: ", e10);
        }
    }

    public static void c(boolean z10) {
        tt = z10;
    }

    public static void c() {
        i iVar;
        if (!tt || (iVar = f14546c) == null) {
            return;
        }
        iVar.uj();
    }

    public static void c(HashMap<String, Object> map) {
        i iVar = f14546c;
        if (iVar != null) {
            iVar.c(map);
        }
    }

    public static <T> T c(String str, T t10) {
        i iVar = f14546c;
        if (iVar != null) {
            return (T) iVar.c(str, t10);
        }
        return null;
    }

    public static void c(@NonNull String str, @Nullable JSONObject jSONObject) {
        com.byazt.lu.uj.c(new com.byazt.tv.n(str, false, jSONObject != null ? jSONObject.toString() : null));
    }

    public static void c(@NonNull String str, @Nullable JSONObject jSONObject, int i10) {
        com.byazt.lu.uj.c(new com.byazt.tv.n(str, false, jSONObject != null ? jSONObject.toString() : null, i10));
    }

    public static void c(@NonNull String str, @Nullable Bundle bundle) {
        JSONObject jSONObject = null;
        if (bundle != null) {
            try {
                if (!bundle.isEmpty()) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        for (String str2 : bundle.keySet()) {
                            jSONObject2.put(str2, bundle.get(str2));
                        }
                        jSONObject = jSONObject2;
                    } catch (Throwable th) {
                        th = th;
                        jSONObject = jSONObject2;
                        da.tt(th);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        c(str, jSONObject);
    }

    public static void c(@NonNull String str, @Nullable Bundle bundle, int i10) {
        JSONObject jSONObject = null;
        if (bundle != null) {
            try {
                if (!bundle.isEmpty()) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        for (String str2 : bundle.keySet()) {
                            jSONObject2.put(str2, bundle.get(str2));
                        }
                        jSONObject = jSONObject2;
                    } catch (Throwable th) {
                        th = th;
                        jSONObject = jSONObject2;
                        da.tt(th);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        c(str, jSONObject, i10);
    }

    @AnyThread
    public static void c(@Nullable n nVar) {
        com.byazt.vm.sp.c(nVar);
    }
}
