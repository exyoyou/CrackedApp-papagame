package com.join.mgps.ad.adapter;

import android.content.Context;
import com.beizi.fusion.BeiZis;
import com.join.mgps.pref.PrefDef_;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f58342a;

    public static void a(Context context, String appId, e6.a callback) {
        try {
            if (new PrefDef_(context).sdkInit().d().booleanValue()) {
                return;
            }
            if (!f58342a) {
                BeiZis.init(context, appId);
                f58342a = true;
            }
            if (callback != null) {
                callback.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
