package com.byazt.of;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1217, 46})
public class n {
    public static String c(List<String> list) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        List<String> listTt = tt(new ArrayList(new TreeSet(list)));
        return m1.a.a("|", listTt.subList(0, Math.min(listTt.size(), 100)));
    }

    private static List<String> tt(List<String> list) {
        if (list != null && !list.isEmpty()) {
            String[] strArr = {"abc_", "$avd_hide_", "avd_hide_", "$avd_show_", "avd_show_", "m3_avd_", "$m3_avd_", "ic_mtrl_", "$mtrl_", "mtrl_", "btn_checkbox_", "bd_progress_", "bd_bg_", "btn_radio_", "pangle_", "ksad_", "anythink_", "gdt_", "ksadsdk_", "mbridge_", "sig_", "tt_appdownloader_", "tt_mediation_", "ttdownloader_", "com.qq.e.", MediationConstant.ADN_KLEVIN, "kssdk_", "mobads_", "tapad_", "umeng_", "bdxadsdk.jar", "bugly_", "vivo_module_", "notplugmapnaveinfoox111.dex", "notplugmappoiinfoxo.db", "notplugmaprouteextradata.db", "-journal"};
            Iterator<String> it2 = list.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                for (int i10 = 0; i10 < 37; i10++) {
                    String str = strArr[i10];
                    if (!TextUtils.isEmpty(str) && (next.startsWith(str) || next.endsWith(str))) {
                        it2.remove();
                        break;
                    }
                }
            }
        }
        return list;
    }
}
