package com.efs.sdk.base.core.a;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.efs.sdk.base.BuildConfig;
import com.efs.sdk.base.EfsConstant;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.util.Log;
import com.efs.sdk.base.core.util.PackageUtil;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.tencent.stat.DeviceInfo;
import com.umeng.analytics.pro.bm;
import io.netty.handler.codec.rtsp.RtspHeaders;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes9.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f26232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f26233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f26234c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f26235d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f26236e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f26237f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f26238g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f26239h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    String f26240i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f26241j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    String f26242k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    String f26243l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f26244m = 0;

    public static c a() {
        c cVar = new c();
        cVar.f26232a = ControllerCenter.getGlobalEnvStruct().getAppid();
        cVar.f26233b = ControllerCenter.getGlobalEnvStruct().getSecret();
        cVar.f26243l = ControllerCenter.getGlobalEnvStruct().getUid();
        cVar.f26241j = BuildConfig.VERSION_NAME;
        cVar.f26234c = PackageUtil.getAppVersionName(ControllerCenter.getGlobalEnvStruct().mAppContext);
        cVar.f26240i = String.valueOf(com.efs.sdk.base.core.config.a.c.a().f26314d.f26302a);
        cVar.f26242k = EfsConstant.UM_SDK_VERSION;
        return cVar;
    }

    public final String b() {
        a.a();
        String strValueOf = String.valueOf(a.b() / 1000);
        String strA = com.efs.sdk.base.core.util.b.b.a(com.efs.sdk.base.core.util.b.a.a(this.f26243l + strValueOf, this.f26233b));
        TreeMap treeMap = new TreeMap();
        treeMap.put("app", this.f26232a);
        treeMap.put(LiveConfigKey.STANDARD, strA);
        String strA2 = a(ControllerCenter.getGlobalEnvStruct().mAppContext);
        if (!TextUtils.isEmpty(strA2)) {
            treeMap.put("wl_dd", com.efs.sdk.base.core.util.b.b.a(com.efs.sdk.base.core.util.b.a.a(strA2 + "_" + strValueOf, this.f26233b)));
        }
        if (!TextUtils.isEmpty(this.f26235d)) {
            treeMap.put(com.alipay.sdk.app.statistic.c.f7067m, this.f26235d);
        }
        if (this.f26238g != 0) {
            treeMap.put("de", String.valueOf(this.f26236e));
            treeMap.put("type", this.f26239h);
            String str = this.f26237f;
            if (TextUtils.isEmpty(str)) {
                a.a();
                long jB = a.b();
                str = String.format(Locale.SIMPLIFIED_CHINESE, "%d%04d", Long.valueOf(jB), Integer.valueOf(new Random(jB).nextInt(10000)));
            }
            treeMap.put(RtspHeaders.Values.SEQ, str);
        }
        treeMap.put("cver", this.f26240i);
        treeMap.put(bm.f84421x, "android");
        treeMap.put("sver", this.f26240i);
        treeMap.put("tm", strValueOf);
        treeMap.put(DeviceInfo.TAG_VERSION, this.f26234c);
        treeMap.put("um_sdk_ver", this.f26242k);
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        for (Map.Entry entry : treeMap.entrySet()) {
            String str2 = ((String) entry.getKey()) + SimpleComparison.EQUAL_TO_OPERATION + ((String) entry.getValue());
            sb3.append(str2);
            sb2.append(str2);
            sb2.append(x.a.f97576d);
        }
        String strA3 = com.efs.sdk.base.core.util.b.b.a(sb3.toString() + this.f26233b);
        sb2.append("sign=");
        sb2.append(strA3);
        Log.d("efs.config", sb2.toString());
        return com.efs.sdk.base.core.util.b.b.b(sb2.toString());
    }

    private static String a(Context context) {
        Class<?> cls;
        Method method;
        if (context == null) {
            return null;
        }
        try {
            cls = Class.forName("com.umeng.commonsdk.UMConfigure");
        } catch (ClassNotFoundException unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            method = cls.getMethod("getUMIDString", Context.class);
        } catch (NoSuchMethodException unused2) {
            method = null;
        }
        if (method == null) {
            return null;
        }
        try {
            Object objInvoke = method.invoke(null, context);
            if (objInvoke != null) {
                return objInvoke.toString();
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException unused3) {
            return null;
        }
    }
}
