package com.join.mgps.ad.adapter;

import android.content.Context;
import com.aggmoread.sdk.client.AMAdConfig;
import com.aggmoread.sdk.client.AMSdk;
import com.join.mgps.pref.PrefDef_;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f58345a;

    public static void a(Context context, String appId, e6.a callback) {
        try {
            if (new PrefDef_(context).sdkInit().d().booleanValue()) {
                return;
            }
            if (!f58345a) {
                AMSdk.init(context, new AMAdConfig.Builder().build());
                f58345a = true;
            }
            if (callback != null) {
                callback.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
