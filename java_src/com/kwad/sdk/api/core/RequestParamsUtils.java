package com.kwad.sdk.api.core;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class RequestParamsUtils {
    public static final String USER_AGENT_KEY = "User-Agent";
    private static String sUserAgent;

    public static String getUserAgent() {
        if (TextUtils.isEmpty(sUserAgent)) {
            sUserAgent = getUserAgentParams() + "ksad-android-5.4.10.1";
        }
        return sUserAgent;
    }

    private static String getUserAgentParams() {
        try {
            String property = System.getProperty("http.agent");
            if (TextUtils.isEmpty(property)) {
                return property;
            }
            StringBuilder sb2 = new StringBuilder();
            int length = property.length();
            for (int i10 = 0; i10 < length; i10++) {
                char cCharAt = property.charAt(i10);
                if (cCharAt <= 31 || cCharAt >= 127) {
                    sb2.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                } else {
                    sb2.append(cCharAt);
                }
            }
            sb2.append("-");
            return sb2.toString();
        } catch (Throwable unused) {
            return "";
        }
    }
}
