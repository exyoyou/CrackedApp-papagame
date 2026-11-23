package com.aggmoread.sdk.z.c.a.a.d.a.d.t;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static AtomicBoolean f4699a = new AtomicBoolean();

    public static void a(Context context, String str, String str2) {
        if (f4699a.compareAndSet(false, true)) {
            c.c(context, str, str2);
        }
    }
}
