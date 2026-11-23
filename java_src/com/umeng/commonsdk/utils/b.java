package com.umeng.commonsdk.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.umeng.commonsdk.debug.UMRTLog;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static HashMap<String, PackageInfo> f85551a = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Object f85552b = new Object();

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final b f85553a = new b();

        private a() {
        }
    }

    public static b a() {
        return a.f85553a;
    }

    private b() {
    }

    public PackageInfo a(Context context, String str, int i10) {
        PackageInfo packageInfo;
        synchronized (f85552b) {
            if (f85551a.containsKey(str)) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> pkg： " + str + ", pkgInfo缓存命中，直接返回");
                packageInfo = f85551a.get(str);
            } else {
                try {
                    packageInfo = context.getPackageManager().getPackageInfo(str, i10);
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> pkg： " + str + ", 获取pkgInfo并缓存");
                    f85551a.put(str, packageInfo);
                } catch (PackageManager.NameNotFoundException unused) {
                    f85551a.put(str, null);
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> pkg: " + str + "，目标包未安装。");
                    packageInfo = null;
                }
            }
        }
        return packageInfo;
    }
}
