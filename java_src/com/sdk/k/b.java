package com.sdk.k;

import android.annotation.SuppressLint;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"SimpleDateFormat"})
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static SimpleDateFormat f78546a = new SimpleDateFormat();

    public static String a(String str) {
        if ("".equals(str.trim())) {
            f78546a.applyPattern("yyyy-MM-dd HH:mm");
        } else {
            f78546a.applyPattern(str);
        }
        return f78546a.format(new Date());
    }
}
