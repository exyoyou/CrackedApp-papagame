package com.sdk.m;

import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.base.module.manager.SDKManager;
import com.sdk.f.d;
import java.util.Properties;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f78549a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f78550b = d.f78521a;

    public static String a(String str, String str2) {
        if (com.sdk.r.a.a(str2).booleanValue()) {
            return null;
        }
        Properties properties = new Properties();
        try {
            properties.load(SDKManager.getContext().getAssets().open(str));
        } catch (Exception unused) {
            LogUtils.e(f78549a, "域名读取失败！《" + str2 + "+》", Boolean.valueOf(f78550b));
        }
        return properties.getProperty(str2);
    }
}
