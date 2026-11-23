package com.byazt.omf;

import android.app.Application;
import android.content.Context;
import android.util.SparseArray;
import androidx.annotation.Keep;
import com.byazt.nys.PluginConstants;
import com.bytedance.pangle.ComponentManager;
import com.bytedance.pangle.annotations.ForbidWrapParam;
import java.util.Map;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 31, 1044})
public class TTApplication extends Application {

    @com.byazt.zqa.c(c = {0, 1, 31, 2183})
    private static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String[] f17952c = {"com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity", "com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity", "com.bytedance.msdk.api.activity.TTDelegateActivity", "com.bytedance.msdk.api.activity.TTTransparentActivity", "com.bytedance.msdk.core.admanager.reward.rewardagain.GMRewardAgainDialogActivity"};
        public static final String[] tt = {"com.bytedance.sdk.openadsdk.core.component.reward.activity.TTFullScreenVideoActivity", "com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity"};
        public static final String[] ve = {"com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity", "com.bytedance.sdk.openadsdk.core.activity.base.TTVideoScrollWebPageActivity", "com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity", "com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity"};
        public static final String[] uj = {"com.bytedance.sdk.openadsdk.core.component.reward.activity.TTFullScreenVideoLandscapeActivity", "com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoLandscapeActivity"};

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public static final String[] f17953n = {"com.ss.android.socialbase.appdownloader.view.DownloadTaskDeleteActivity", "com.ss.android.socialbase.appdownloader.view.DownloadHandleNotificationActivity", "com.ss.android.downloadlib.activity.TTDelegateActivity"};
    }

    private String c(Map map, String str, String str2) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? str2 : String.valueOf(obj);
    }

    @Keep
    public Function attach(Function function) {
        if (function != null) {
            x.m().c((Function<SparseArray<Object>, Object>) function);
        }
        return yv.instance();
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(@ForbidWrapParam final Context context) {
        Map map;
        super.attachBaseContext(context);
        Function<SparseArray<Object>, Object> functionLt = x.m().lt();
        if (functionLt != null) {
            try {
                SparseArray sparseArray = new SparseArray();
                sparseArray.put(-99999987, 15);
                map = (Map) functionLt.apply(sparseArray);
            } catch (Exception e10) {
                com.byazt.ukr.yp.c().c("init", e10);
                map = null;
            }
        } else {
            map = null;
        }
        ComponentManager.registerActivity("com.byted.pangle", c(map, "STUB_STANDARD_ACTIVITY_T", PluginConstants.STUB_STANDARD_ACTIVITY_T), c.f17952c);
        ComponentManager.registerActivity("com.byted.pangle", c(map, "STUB_STANDARD_PORTRAIT_ACTIVITY_T", PluginConstants.STUB_STANDARD_PORTRAIT_ACTIVITY_T), c.tt);
        ComponentManager.registerActivity("com.byted.pangle", c(map, "STUB_STANDARD_ACTIVITY", PluginConstants.STUB_STANDARD_ACTIVITY), c.ve);
        ComponentManager.registerActivity("com.byted.pangle", c(map, "STUB_STANDARD_LANDSCAPE_ACTIVITY", PluginConstants.STUB_STANDARD_LANDSCAPE_ACTIVITY), c.uj);
        ComponentManager.registerActivity("com.byted.pangle", c(map, "STUB_SINGLE_TASK_ACTIVITY_T", PluginConstants.STUB_SINGLE_TASK_ACTIVITY_T), c.f17953n);
        com.byazt.jv.c.c();
        com.byazt.bwm.n.tt(new com.byazt.bwm.sp("init_init") { // from class: com.byazt.omf.TTApplication.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.bwm.i.tt.t();
                com.byazt.nr.da.c();
                String strTt = com.byazt.nr.gt.tt(context);
                if (strTt == null || !strTt.endsWith(":downloader")) {
                    return;
                }
                int iVe = com.byazt.bzd.u.ve("com.byted.pangle", 101);
                if (iVe > 0) {
                    p.uj = iVe;
                }
                com.byazt.yih.i.uj();
            }
        });
    }

    @Keep
    public Function initMainService(Function function) {
        com.byazt.ut.uj ujVar = com.byazt.ut.uj.getInstance();
        ujVar.setListener(com.byazt.ut.da.f20973c);
        if (function == null) {
            return ujVar;
        }
        ujVar.apply(function);
        return null;
    }
}
