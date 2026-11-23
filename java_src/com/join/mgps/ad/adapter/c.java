package com.join.mgps.ad.adapter;

import android.content.Context;
import com.join.mgps.pref.PrefDef_;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.SdkConfig;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f58344a;

    public static void a(Context context, String appId, e6.a callback) {
        try {
            if (new PrefDef_(context).sdkInit().d().booleanValue()) {
                return;
            }
            if (!f58344a) {
                KsAdSDK.init(context, new SdkConfig.Builder().appId(appId).build());
                f58344a = true;
            }
            if (callback != null) {
                callback.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
