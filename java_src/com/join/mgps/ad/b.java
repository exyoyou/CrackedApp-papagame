package com.join.mgps.ad;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes5.dex */
public class b {
    public static void a(Context ctx, int num) {
        Intent intent = new Intent();
        intent.setAction("com.emu.ad.result");
        intent.putExtra("adAction", num);
        ctx.sendBroadcast(intent);
    }

    public static void b(Context ctx, int num, String gameId) {
        Intent intent = new Intent();
        intent.setAction("com.join.android.app.mgsim.wufun.ad.result");
        intent.putExtra("adAction", num);
        intent.putExtra("gameId", gameId);
        ctx.sendBroadcast(intent);
    }
}
