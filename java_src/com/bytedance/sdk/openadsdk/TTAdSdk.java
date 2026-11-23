package com.bytedance.sdk.openadsdk;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import com.byazt.bog.a;
import com.byazt.bog.n;
import com.byazt.nys.da;
import com.byazt.omf.gt;
import com.byazt.we.ve;
import com.bytedance.sdk.openadsdk.mediation.IMediationManager;
import com.bytedance.sdk.openadsdk.mediation.MediationManagerVisitor;
import com.join.mgps.activity.SearchHintActivity_;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 80, 81, 82, 602})
public final class TTAdSdk {
    public static final String BRANCH = "";
    public static final String BUILT_IN_PLUGIN_NAME = "com.byted.pangle";
    public static final String C_H = "ff64f3ed4a";
    public static final int EXT_API_VERSION_CODE = 1000;
    public static final boolean INCLUDE_LIVE = true;
    public static final boolean IS_BOOST = true;
    public static final boolean IS_P = false;
    public static final String LIVE_PLUGIN_PACKAGE_NAME = "com.byted.live.lite";
    public static final boolean ONLY_API = false;
    public static final boolean PC_BOOST_ABI = true;
    public static final String PLUGIN_ADAPTER_PACKAGE_NAME = "com.byted.mixed";
    public static final int SDK_VERSION_CODE = 7611;
    public static final String SDK_VERSION_NAME = "7.6.1.1";
    public static final String S_C = "main";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile TTAdConfig f23362c;

    public interface Callback extends InitCallback {
    }

    @Deprecated
    public interface InitCallback {
        void fail(int i10, String str);

        void success();
    }

    @com.byazt.zqa.c(c = {0, 80, 81, 82, 1237})
    private static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final com.byazt.bog.c f23363c = new da();
    }

    private static void c(Context context, TTAdConfig tTAdConfig) {
        if (tTAdConfig != null && tTAdConfig.isDebug()) {
            a.c();
        }
        c(context, "Context is null, please check.");
        c(tTAdConfig, "TTAdConfig is null, please check.");
        TTAppContextHolder.setContext(context);
        updateConfigAuth(tTAdConfig);
    }

    public static TTAdManager getAdManager() {
        return c.f23363c.ve();
    }

    public static View getEcMallBackUpView() {
        com.byazt.bog.c.ve veVarVe = c.f23363c.ve();
        if (veVarVe == null) {
            return null;
        }
        return (View) veVarVe.getExtra(View.class, null);
    }

    public static IMediationManager getMediationManager() {
        return MediationManagerVisitor.getInstance().getMediationManager();
    }

    public static boolean init(Context context, TTAdConfig tTAdConfig) {
        Map<String, Object> initExtra;
        gt.c(context);
        if (tTAdConfig != null && (initExtra = tTAdConfig.getInitExtra()) != null) {
            initExtra.put("csj_c_i_ts", Long.valueOf(SystemClock.elapsedRealtime()));
        }
        f23362c = tTAdConfig;
        c(context, f23362c);
        return true;
    }

    @Deprecated
    public static boolean isInitSuccess() {
        return c.f23363c.tt();
    }

    public static boolean isOpenMediationMap() {
        TTAdManager adManager = getAdManager();
        if (adManager == null) {
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putString("extra_name", "use_mediation_map");
        Map map = (Map) adManager.getExtra(Map.class, bundle);
        if (map == null || !(map.get("use_mediation_map") instanceof Boolean)) {
            return false;
        }
        return ((Boolean) map.get("use_mediation_map")).booleanValue();
    }

    public static boolean isSdkReady() {
        return c.f23363c.tt();
    }

    public static void start(Callback callback) {
        c(f23362c, "TTAdConfig is null, please exec TTAdSdk.init before TTAdSdk.start.");
        c.f23363c.c(TTAppContextHolder.getContext(), f23362c, callback);
    }

    public static void updateAdConfig(TTAdConfig tTAdConfig) {
        com.byazt.bog.c.ve veVarVe;
        if (n.c() || tTAdConfig == null || (veVarVe = c.f23363c.ve()) == null) {
            return;
        }
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(tTAdConfig.getData())) {
            bundle.putString("extra_data", tTAdConfig.getData());
        }
        if (!TextUtils.isEmpty(tTAdConfig.getKeywords())) {
            bundle.putString(SearchHintActivity_.KEYWORDS_EXTRA, tTAdConfig.getKeywords());
        }
        if (!bundle.keySet().isEmpty()) {
            veVarVe.getExtra(SparseArray.class, bundle);
        }
        IMediationManager mediationManager = getMediationManager();
        if (mediationManager != null) {
            if (tTAdConfig.getCustomController() != null) {
                mediationManager.updatePrivacyConfig(tTAdConfig.getCustomController());
            }
            Map<String, Object> initExtra = tTAdConfig.getInitExtra();
            if (initExtra == null || initExtra.isEmpty()) {
                return;
            }
            mediationManager.updateLocalExtra(tTAdConfig.getInitExtra());
        }
    }

    public static void updateConfigAuth(TTAdConfig tTAdConfig) {
        Map<String, Object> initExtra;
        if (n.c() || tTAdConfig == null || (initExtra = tTAdConfig.getInitExtra()) == null) {
            return;
        }
        Object obj = initExtra.get(TTAdConstant.KEY_INIT_FOR_LIVE);
        if (obj instanceof Map) {
            ve.instance().setLiveInitExtra((Map) obj);
        }
    }

    public static void updatePaid(boolean z10) {
        com.byazt.bog.c.ve veVarVe = c.f23363c.ve();
        if (veVarVe == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_paid", z10);
        if (bundle.keySet().isEmpty()) {
            return;
        }
        veVarVe.getExtra(SparseArray.class, bundle);
    }

    private static void c(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }
}
