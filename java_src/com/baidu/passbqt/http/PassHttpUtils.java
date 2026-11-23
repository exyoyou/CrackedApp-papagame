package com.baidu.passbqt.http;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public class PassHttpUtils {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f8371b = "PassHttpUtils";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f8372c = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f8370a = false;

    public static void a(String str, String str2) {
    }

    public static boolean b(String str) {
        return f8372c.matcher(str).matches();
    }

    public static void a(String str) {
        a(f8371b, str);
    }
}
