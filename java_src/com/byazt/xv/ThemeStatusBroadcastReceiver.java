package com.byazt.xv;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 2493, 2494})
public class ThemeStatusBroadcastReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<c> f22099c;

    public void c(c cVar) {
        this.f22099c = new WeakReference<>(cVar);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        int intExtra = intent.getIntExtra("theme_status_change", 0);
        WeakReference<c> weakReference = this.f22099c;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f22099c.get().b_(intExtra);
    }
}
