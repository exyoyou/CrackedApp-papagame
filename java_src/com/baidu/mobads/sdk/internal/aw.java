package com.baidu.mobads.sdk.internal;

import android.util.Log;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes6.dex */
public class aw extends az.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7483a = "debug";

    @Override // com.baidu.mobads.sdk.internal.az.a
    @NonNull
    String a() {
        return "debug";
    }

    @Override // com.baidu.mobads.sdk.internal.az.a
    protected boolean a(String str, int i10) {
        return az.f7500a.equals(str);
    }

    @Override // com.baidu.mobads.sdk.internal.az.a
    protected void a(int i10, String str, String str2, Throwable th) {
        a(i10, str, str2);
    }

    private static void a(int i10, String str, String str2) {
        try {
            if (i10 == 7) {
                Log.wtf(str, str2);
            } else {
                Log.println(i10, str, str2);
            }
        } catch (Throwable unused) {
        }
    }
}
