package com.byazt.kg;

import android.content.Context;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 428, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile a f16253c;
    public final ve tt;

    private a(@NonNull Context context) {
        this.tt = new ve(context);
    }

    public static a c(Context context) {
        if (f16253c == null) {
            synchronized (a.class) {
                if (f16253c == null) {
                    f16253c = new a(context);
                }
            }
        }
        return f16253c;
    }

    public void c() {
        this.tt.c();
    }
}
