package com.windmill.gromore;

import android.content.Context;
import android.content.SharedPreferences;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.base.WMLogUtil;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile b f86231a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SharedPreferences f86232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SharedPreferences.Editor f86233c;

    private b() {
        Context applicationContext = WindMillAd.sharedAds().getContext().getApplicationContext();
        if (applicationContext == null) {
            WMLogUtil.e("GmPricePathsSpUtil GmPricePathsSpUtil: context is null in constructor");
            return;
        }
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("gm_price_paths", 0);
        this.f86232b = sharedPreferences;
        this.f86233c = sharedPreferences.edit();
    }

    public static b a() {
        if (f86231a == null) {
            synchronized (b.class) {
                if (f86231a == null) {
                    f86231a = new b();
                }
            }
        }
        return f86231a;
    }

    private synchronized boolean c() {
        if (this.f86232b != null && this.f86233c != null) {
            return true;
        }
        Context applicationContext = WindMillAd.sharedAds().getContext().getApplicationContext();
        if (applicationContext == null) {
            WMLogUtil.e("GmPricePathsSpUtil GmPricePathsSpUtil: context is null");
            return false;
        }
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("gm_price_paths", 0);
        this.f86232b = sharedPreferences;
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        this.f86233c = editorEdit;
        return (this.f86232b == null || editorEdit == null) ? false : true;
    }

    public final Map<String, String> b() {
        if (!c()) {
            return new HashMap();
        }
        Map<String, ?> all = this.f86232b.getAll();
        HashMap map = new HashMap();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            if (entry.getValue() instanceof String) {
                map.put(entry.getKey(), (String) entry.getValue());
            }
        }
        WMLogUtil.d("GmPricePathsSpUtil getAllPricePaths success: count=" + map.size());
        return map;
    }

    public final synchronized void a(String str) {
        try {
            if (str == null) {
                WMLogUtil.e("GmPricePathsSpUtil removePricePath: key is null");
            } else if (c()) {
                this.f86233c.remove(str);
                this.f86233c.apply();
                WMLogUtil.d("GmPricePathsSpUtil removePricePath success: key=".concat(str));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void a(String str, String str2) {
        if (str == null || str2 == null) {
            WMLogUtil.e("GmPricePathsSpUtil savePricePath: key or value is null");
            return;
        }
        if (c()) {
            synchronized (this) {
                this.f86233c.putString(str, str2);
                this.f86233c.apply();
            }
            WMLogUtil.d("GmPricePathsSpUtil savePricePath success: key=" + str + ", value=" + str2);
        }
    }
}
