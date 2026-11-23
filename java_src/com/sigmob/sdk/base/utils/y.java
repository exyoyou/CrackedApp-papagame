package com.sigmob.sdk.base.utils;

/* JADX INFO: loaded from: classes5.dex */
public class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f79800a = "WebUtils";

    public static boolean a(String url) {
        if (t.a((CharSequence) url)) {
            return true;
        }
        try {
            return url.contains("../") || url.contains("..%2F") || url.contains("..\\") || url.contains("..%5C");
        } catch (Exception e10) {
            k.f(f79800a, "isUnsafeUrl: error = " + e10.getMessage(), new Object[0]);
        }
    }
}
