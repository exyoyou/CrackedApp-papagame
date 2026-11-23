package com.join.mgps.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.PowerManager;
import com.MApplication;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.g;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.e0;
import com.join.mgps.dto.CommonCfgBean;
import com.join.mgps.dto.WebDiskCfg;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.va.overmind.i;
import com.xinzhu.overmind.Overmind;

/* JADX INFO: loaded from: classes3.dex */
public class ScreenActionReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f72276a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f72277b = new Handler();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Runnable f72278c = new a();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                PrefDef_ prefDef_P = MApplication.f3182z.p();
                if (prefDef_P.sdkInitReady().d().booleanValue() && !prefDef_P.sdkInit().d().booleanValue()) {
                    if (g.t0(MApplication.f3182z).e(MApplication.f3182z, d2.f49544b)) {
                        Intent launchIntentForPackage = MApplication.f3182z.getPackageManager().getLaunchIntentForPackage(d2.f49544b);
                        if (launchIntentForPackage != null) {
                            MApplication.f3182z.startActivity(launchIntentForPackage);
                        }
                        MApplication.f3182z.p().quark_launch_app_times().g(1);
                        return;
                    }
                    if (i.q().S()) {
                        boolean zF = g.t0(MApplication.f3182z).f(MApplication.f3182z, d2.f49544b, APKUtils.DEVICE_TYPE.VM);
                        MApplication.f3182z.p().quark_launch_app_times().g(1);
                        if (zF) {
                            d2.l(d2.f49544b, Overmind.getHostUserId());
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    void a(Context context) {
        WebDiskCfg webDiskCfgB;
        CommonCfgBean common_cfg;
        PrefDef_ prefDef_ = new PrefDef_(context);
        if (!prefDef_.sdkInitReady().d().booleanValue() || prefDef_.sdkInit().d().booleanValue() || !((PowerManager) context.getSystemService("power")).isScreenOn() || (webDiskCfgB = d2.b()) == null || (common_cfg = webDiskCfgB.getCommon_cfg()) == null || common_cfg.getAct_type() == 3) {
            return;
        }
        if ((e0.z(MApplication.f3182z.p().quark_first_launch_time().d().longValue() + ((long) (((common_cfg.getAct_start_day() * 24) * 3600) * 1000))) && MApplication.f3182z.p().quark_launch_app_times().d().intValue() <= 0) && common_cfg.getAct_type() == 2) {
            this.f72277b.removeCallbacks(this.f72278c);
            this.f72277b.postDelayed(this.f72278c, 1500L);
        }
    }

    public void b(Context mContext) {
        if (this.f72276a) {
            return;
        }
        this.f72276a = true;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        mContext.registerReceiver(this, intentFilter);
    }

    public void c(Context mContext) {
        if (this.f72276a) {
            this.f72276a = false;
            mContext.unregisterReceiver(this);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action.equals("android.intent.action.SCREEN_ON")) {
            a(context);
        } else if ("android.intent.action.USER_PRESENT".equals(action)) {
            a(context);
        }
    }
}
