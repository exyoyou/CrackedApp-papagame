package com.byazt.sb;

import com.byazt.yj.rh;
import com.byazt.yj.t;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1065, 13})
public class tt {
    public static rh c() {
        return new rh() { // from class: com.byazt.sb.tt.1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public WeakHashMap<String, String> f19570c = new WeakHashMap<>();

            @Override // com.byazt.yj.rh
            public String c(t tVar) {
                return c(tVar.getUrl() + "#width=" + tVar.getWidth() + "#height=" + tVar.getHeight() + "#scaletype=" + tVar.getScaleType() + "#bitmapConfig=" + tVar.getBitmapConfig());
            }

            @Override // com.byazt.yj.rh
            public String tt(t tVar) {
                return c(tVar.getUrl());
            }

            private String c(String str) {
                String str2 = this.f19570c.get(str);
                if (str2 != null) {
                    return str2;
                }
                String strC = com.byazt.as.ve.c(str);
                this.f19570c.put(str, strC);
                return strC;
            }
        };
    }
}
