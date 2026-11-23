package com.byazt.vm;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 165, 195})
public final class gt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SharedPreferences f21230c;

    @WorkerThread
    public gt(Context context) {
        this.f21230c = com.byazt.nys.tt.tt(context, "device_register_oaid_refine", 0);
    }

    @WorkerThread
    public void c(@Nullable my myVar) {
        if (myVar == null) {
            return;
        }
        this.f21230c.edit().putString("oaid", myVar.tt().toString()).apply();
    }

    @Nullable
    @WorkerThread
    public my c() {
        return my.c(this.f21230c.getString("oaid", ""));
    }
}
