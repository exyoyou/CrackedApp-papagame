package com.papa91.arc.ad;

import android.content.Context;
import android.content.Intent;
import com.papa91.arc.common.constants.BAction;

/* JADX INFO: loaded from: classes2.dex */
public class AdUtils {
    public static void loadExitStickAd(Context context) {
        sendExitStickAd(context, 1);
    }

    public static void sendExitStickAd(Context context, int i10) {
        Intent intent = new Intent(BAction.ACTION_EMU_GAME_OUT_AD);
        intent.putExtra("eventType", i10);
        intent.setPackage("com.join.android.app.mgsim.wufun");
        intent.putExtra("eventFlag", 1);
        context.sendBroadcast(intent);
    }

    public static void showExitStickAd(Context context) {
        sendExitStickAd(context, 2);
    }
}
