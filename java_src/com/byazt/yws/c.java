package com.byazt.yws;

import android.annotation.SuppressLint;
import android.content.Context;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 866, 20})
public class c extends tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static volatile c f22460c;

    private c(Context context) {
        super(context, "ttopensdk2.db");
    }

    public static c c(Context context) {
        if (f22460c == null) {
            synchronized (c.class) {
                if (f22460c == null) {
                    f22460c = new c(context);
                }
            }
        }
        return f22460c;
    }
}
