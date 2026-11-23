package com.byazt.ppf;

import com.byazt.aas.nb;
import com.byazt.ete.ic;
import com.byazt.ete.my;
import com.byazt.xs.da;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTSevenScreenWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTVideoScrollWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_EXPECT_BITRATE, 13})
public class tt {
    public static Class<?> c(boolean z10, ic icVar, boolean z11, Map<String, Object> map) {
        if (my.n(icVar)) {
            return TTSevenScreenWebPageActivity.class;
        }
        if (my.a(icVar) && !icVar.or()) {
            return TTVideoWebPageActivity.class;
        }
        if (!ic.ve(icVar) || z10 || !nb.sp(icVar)) {
            return da.a(icVar) ? TTNativePageActivity.class : TTWebPageActivity.class;
        }
        if (da.a(icVar)) {
            return TTNativePageActivity.class;
        }
        return icVar.or() ? TTWebPageActivity.class : c(TTVideoWebPageActivity.class, z11, icVar, map);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0035 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:13:0x0036 A[Catch: all -> 0x004b, TRY_ENTER, TryCatch #0 {all -> 0x004b, blocks: (B:8:0x000e, B:9:0x002d, B:13:0x0036, B:15:0x003c, B:17:0x0044), top: B:22:0x000e }] */
    private static Class c(Class cls, boolean z10, ic icVar, Map<String, Object> map) {
        if (!TTVideoWebPageActivity.class.equals(cls) || !z10) {
            return cls;
        }
        if (map != null) {
            try {
                com.byazt.ua.c cVar = new com.byazt.ua.c();
                cVar.sp = 100L;
                cVar.f20527c = true;
                cVar.uj = nb.gr(icVar);
                map.put("multi_process_data", cVar.c().toString());
                if (icVar.ri() == 0) {
                    return TTVideoScrollWebPageActivity.class;
                }
                if (icVar.ri() <= 0 && 100 > icVar.ri() && nb.gr(icVar)) {
                    return TTVideoScrollWebPageActivity.class;
                }
            } catch (Throwable unused) {
            }
        } else {
            if (icVar.ri() == 0) {
                return TTVideoScrollWebPageActivity.class;
            }
            if (icVar.ri() <= 0) {
            }
        }
        return cls;
    }
}
