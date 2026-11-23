package com.byazt.aas;

import android.net.Uri;
import android.text.TextUtils;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 195})
public class gt {
    public static void c(final Uri uri, final com.byazt.omf.d dVar) {
        if (dVar == null || !dVar.c(uri)) {
            return;
        }
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.aas.gt.1
                @Override // java.lang.Runnable
                public void run() {
                    dVar.tt(uri);
                }
            });
        } catch (Exception e10) {
            com.byazt.nr.m.tt("WebView", "TTAndroidObj handleUri exception: ".concat(String.valueOf(e10)));
        }
    }

    public static void c(final com.byazt.nl.uj ujVar, final int i10, final boolean z10) {
        if (ujVar == null) {
            return;
        }
        com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.aas.gt.2
            @Override // java.lang.Runnable
            public void run() {
                String userAgentString = ujVar.getUserAgentString();
                if (TextUtils.isEmpty(userAgentString)) {
                    return;
                }
                StringBuilder sb2 = new StringBuilder(userAgentString);
                sb2.append(" open_news open_news_u_s/");
                sb2.append(i10);
                if (z10) {
                    sb2.append(e.F0);
                    sb2.append(nb.x());
                }
                ujVar.setUserAgentString(sb2.toString());
            }
        });
    }
}
