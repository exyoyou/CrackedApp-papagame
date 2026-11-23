package com.byazt.yws;

import android.annotation.SuppressLint;
import android.content.Context;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 866, 54})
public class ve extends tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static volatile ve f22464c;

    private ve(Context context) {
        super(context, "ttopensdk.db");
    }

    public static ve c(Context context) {
        if (f22464c == null) {
            synchronized (ve.class) {
                if (f22464c == null) {
                    f22464c = new ve(context);
                }
            }
        }
        return f22464c;
    }
}
