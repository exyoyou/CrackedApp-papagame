package com.byazt.omf;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.byazt.aas.nb;
import com.byazt.ete.ic;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTVideoScrollWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 31, 579})
public class or {
    public static boolean c(ic icVar, String str, boolean z10) {
        if (icVar == null) {
            return false;
        }
        String strX = icVar.x();
        if (TextUtils.isEmpty(strX)) {
            return false;
        }
        return c(strX, icVar, str, z10);
    }

    public static boolean c(String str, ic icVar, String str2, boolean z10) {
        return c(gt.getContext(), str, icVar, nb.uj(str2), str2, z10);
    }

    public static boolean c(Context context, String str, ic icVar, String str2, boolean z10) {
        return c(context, str, icVar, nb.uj(str2), str2, z10);
    }

    public static boolean c(Context context, String str, ic icVar, int i10, String str2, boolean z10) {
        try {
            Intent intentC = c(context, str, icVar, i10, null, str2, false);
            intentC.putExtra("web_dl_factors", z10);
            return com.byazt.nr.tt.c(context, intentC, null);
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean c(Object obj) {
        if (obj == null || !(obj instanceof com.byazt.ua.c.InterfaceC0445c)) {
            return false;
        }
        try {
            return ((com.byazt.ua.c.InterfaceC0445c) obj).getHasUseCustomizeVideo();
        } catch (Throwable unused) {
            return false;
        }
    }

    private static Intent c(Context context, String str, ic icVar, int i10, Object obj, String str2, boolean z10) {
        Class cls;
        boolean z11 = false;
        if (com.byazt.ete.my.n(icVar)) {
            cls = TTSevenScreenWebPageActivity.class;
        } else if (com.byazt.ete.my.a(icVar) && icVar != null && !icVar.or()) {
            cls = TTVideoWebPageActivity.class;
        } else if (com.byazt.xs.da.a(icVar)) {
            cls = TTNativePageActivity.class;
        } else if ((obj instanceof com.byazt.nc.i) || !ic.ve(icVar) || c(obj) || !nb.sp(icVar) || (icVar != null && icVar.or())) {
            cls = TTWebPageActivity.class;
        } else {
            z11 = true;
            cls = TTVideoWebPageActivity.class;
        }
        Intent intent = new Intent(context, (Class<?>) cls);
        if (z11) {
            c(context, icVar, obj, z10, intent);
        }
        c(context, str, icVar, i10, str2, intent);
        return intent;
    }

    private static void c(Context context, ic icVar, Object obj, boolean z10, Intent intent) {
        int i10;
        com.byazt.ua.c videoModel = null;
        if (obj != null) {
            videoModel = obj instanceof com.byazt.ua.c.InterfaceC0445c ? ((com.byazt.ua.c.InterfaceC0445c) obj).getVideoModel() : null;
            if (videoModel != null) {
                intent.putExtra("multi_process_data", videoModel.c().toString());
            }
        }
        if ((obj instanceof com.byazt.ouz.tt) && (videoModel = ((com.byazt.ouz.tt) obj).getVideoModel()) != null) {
            intent.putExtra("multi_process_data", videoModel.c().toString());
        }
        if (videoModel != null) {
            intent.putExtra("video_is_auto_play", videoModel.uj);
            com.byazt.nr.m.c("videoDataModel", "videoDataModel=" + videoModel.c().toString());
        }
        if (videoModel != null || z10) {
            try {
                if (videoModel != null) {
                    i10 = (int) ((videoModel.sp / videoModel.f20528n) * 100.0f);
                } else {
                    com.byazt.ua.c cVar = new com.byazt.ua.c();
                    cVar.sp = 100L;
                    cVar.f20527c = true;
                    cVar.uj = nb.gr(icVar);
                    intent.putExtra("multi_process_data", cVar.c().toString());
                    i10 = 100;
                }
                if (icVar.ri() == 0) {
                    intent.setComponent(new ComponentName(context, (Class<?>) TTVideoScrollWebPageActivity.class));
                } else {
                    if (icVar.ri() <= 0 || i10 <= icVar.ri() || !nb.gr(icVar)) {
                        return;
                    }
                    intent.setComponent(new ComponentName(context, (Class<?>) TTVideoScrollWebPageActivity.class));
                }
            } catch (Throwable unused) {
            }
        }
    }

    private static void c(Context context, String str, ic icVar, int i10, String str2, Intent intent) {
        if (!new com.byazt.yzg.ve(context, icVar).uj(false)) {
            icVar.ve(true);
        }
        intent.putExtra("url", str);
        intent.putExtra("gecko_id", icVar.ve());
        intent.putExtra("title", icVar.v_());
        intent.putExtra("sdk_version", p.uj);
        intent.putExtra(MediationConstant.EXTRA_ADID, icVar.uj());
        intent.putExtra("log_extra", icVar.w_());
        intent.putExtra("icon_url", icVar.te() == null ? null : icVar.te().c());
        intent.putExtra("event_tag", str2);
        intent.putExtra("landing_page_source", i10);
        intent.putExtra("is_outer_click", true);
        intent.putExtra("get_phone_num_status", icVar.sp());
        if (!(context instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        nb.c(intent, icVar);
    }

    public static boolean c(Context context, ic icVar, int i10, String str, String str2) {
        try {
            Intent intent = new Intent(context, (Class<?>) TTNativePageActivity.class);
            intent.putExtra("is_replace_dialog", true);
            c(context, (String) null, icVar, i10, str, intent);
            if (ic.ve(icVar) && !TextUtils.isEmpty(str2)) {
                intent.putExtra("multi_process_data", str2);
            }
            return com.byazt.nr.tt.c(context, intent, null);
        } catch (Throwable unused) {
            return false;
        }
    }
}
