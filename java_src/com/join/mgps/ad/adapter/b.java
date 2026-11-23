package com.join.mgps.ad.adapter;

import android.content.Context;
import com.join.mgps.pref.PrefDef_;
import com.qq.e.comm.managers.GDTAdSdk;
import com.qq.e.comm.managers.setting.GlobalSetting;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f58343a;

    class a implements GDTAdSdk.OnStartListener {
        a() {
        }

        @Override // com.qq.e.comm.managers.GDTAdSdk.OnStartListener
        public void onStartFailed(Exception e10) {
        }

        @Override // com.qq.e.comm.managers.GDTAdSdk.OnStartListener
        public void onStartSuccess() {
        }
    }

    public static void a(Context context, String appId, e6.a callback) {
        try {
            if (new PrefDef_(context).sdkInit().d().booleanValue()) {
                return;
            }
            if (!f58343a) {
                GDTAdSdk.initWithoutStart(context, appId);
                GDTAdSdk.start(new a());
                GlobalSetting.setChannel(1);
                GlobalSetting.setEnableMediationTool(true);
                f58343a = true;
            }
            if (callback != null) {
                callback.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
