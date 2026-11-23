package com.byazt.yx;

import org.apache.http.client.methods.HttpDeleteHC4;
import org.apache.http.client.methods.HttpOptionsHC4;
import org.apache.http.client.methods.HttpPutHC4;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 252, 34})
public final class a {
    public static boolean c(String str) {
        return "POST".equals(str) || "PATCH".equals(str) || HttpPutHC4.METHOD_NAME.equals(str) || HttpDeleteHC4.METHOD_NAME.equals(str) || "MOVE".equals(str);
    }

    public static boolean n(String str) {
        return !"PROPFIND".equals(str);
    }

    public static boolean tt(String str) {
        return "POST".equals(str) || HttpPutHC4.METHOD_NAME.equals(str) || "PATCH".equals(str) || "PROPPATCH".equals(str) || "REPORT".equals(str);
    }

    public static boolean uj(String str) {
        return "PROPFIND".equals(str);
    }

    public static boolean ve(String str) {
        return tt(str) || HttpOptionsHC4.METHOD_NAME.equals(str) || HttpDeleteHC4.METHOD_NAME.equals(str) || "PROPFIND".equals(str) || "MKCOL".equals(str) || "LOCK".equals(str);
    }
}
