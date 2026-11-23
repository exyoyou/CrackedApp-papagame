package com.byazt.whk;

import android.text.TextUtils;
import com.byazt.aas.eo;
import com.windmill.sdk.WMConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 908, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile c f21563c;
    public Map<String, tt> tt = new HashMap();

    private c() {
        c(com.byazt.wun.c.c());
        c(com.byazt.qu.c.c());
        c(com.byazt.ddx.tt.c());
    }

    public static c c() {
        if (f21563c == null) {
            synchronized (c.class) {
                if (f21563c == null) {
                    f21563c = new c();
                }
            }
        }
        return f21563c;
    }

    private void c(tt ttVar) {
        this.tt.put(ttVar.tt(), ttVar);
    }

    public String c(String str, String str2, String str3) {
        if (this.tt.containsKey(str)) {
            String strC = this.tt.get(str).c(str2, str3);
            return TextUtils.isEmpty(strC) ? WMConstants.TIMER_STAGE_NONE : strC;
        }
        return eo.c(str).get(str2, WMConstants.TIMER_STAGE_NONE);
    }

    public void c(String str, String str2, String str3, String str4) {
        if (this.tt.containsKey(str)) {
            this.tt.get(str).c(str2, str3, str4);
        } else {
            eo.c(str).put(str2, str3);
        }
    }
}
