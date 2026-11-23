package com.byazt.gc;

import android.text.TextUtils;
import com.byazt.ha.ve;
import com.byazt.ip.n;
import com.byazt.qcl.tt;
import com.byazt.qcl.uj;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 197, 20})
public class c {
    public static void c(Map<String, Object> map, String str) {
        ve veVar;
        List<tt> list;
        if (map == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.ip.tt context = n.c(1).getContext(str);
        if (!(context instanceof ve) || (list = (veVar = (ve) context).f14876a) == null || list.isEmpty()) {
            return;
        }
        map.put("node_line", uj.c(list));
        map.put("node_line_detail", uj.tt(list));
        map.put("unexpected_type", Integer.valueOf(veVar.f15451da));
        if (!TextUtils.isEmpty(veVar.c())) {
            map.put("ad_show_id", veVar.c());
        }
        if (TextUtils.isEmpty(veVar.f14877c)) {
            return;
        }
        map.put("ad_load_id", veVar.f14877c);
    }
}
