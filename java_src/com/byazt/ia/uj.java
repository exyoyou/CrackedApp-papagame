package com.byazt.ia;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 515, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f15287c;

    @com.byazt.zqa.c(c = {0, 1, 515, 123})
    private class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                    uj.this.f15287c = (int) ((intent.getIntExtra("level", 0) * 100.0f) / intent.getIntExtra("scale", 100));
                }
            } catch (Throwable unused) {
            }
        }
    }

    public uj(Context context) {
        try {
            c(context);
        } catch (Throwable unused) {
        }
    }

    private void c(Context context) {
        context.registerReceiver(new c(), new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    }

    public int c() {
        return this.f15287c;
    }
}
