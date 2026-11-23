package com.byazt.bt;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.byazt.dna.qp;
import com.byazt.el.SSWebView;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 274, 72})
public class da {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile String f12052c = "";
    public static final AtomicBoolean tt = new AtomicBoolean(false);

    /* JADX INFO: renamed from: com.byazt.bt.da$2, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 274, 494})
    static class AnonymousClass2 implements Runnable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Context f12054c;
        public final /* synthetic */ com.byazt.dna.c tt;
        public final /* synthetic */ int ve;

        public AnonymousClass2(Context context, com.byazt.dna.c cVar, int i10) {
            this.f12054c = context;
            this.tt = cVar;
            this.ve = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = da.f12052c = da.ve(new SSWebView(this.f12054c).getUserAgentString());
                x.c("sdk_local_web_ua", da.f12052c, this.tt, this.ve);
            } catch (Exception unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ve(Context context, com.byazt.dna.c cVar, int i10) {
        try {
            f12052c = ve(WebSettings.getDefaultUserAgent(context));
            x.c("sdk_local_web_ua", f12052c, cVar, i10);
            tt.set(false);
        } catch (Throwable unused) {
        }
    }

    public static String c() {
        String strConcat;
        try {
            strConcat = System.getProperty("http.agent");
        } catch (Exception unused) {
            strConcat = "unKnow";
        }
        StringBuilder sb2 = new StringBuilder();
        if (strConcat == null) {
            return "";
        }
        int iLastIndexOf = strConcat.lastIndexOf(";");
        if (iLastIndexOf != -1 && strConcat.length() > iLastIndexOf) {
            int i10 = iLastIndexOf + 1;
            String strSubstring = strConcat.substring(0, i10);
            strConcat = strSubstring.concat(" " + Locale.getDefault().getLanguage() + "-" + Locale.getDefault().getCountry() + ";").concat(strConcat.substring(i10));
        }
        int length = strConcat.length();
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = strConcat.charAt(i11);
            if (cCharAt <= 31 || cCharAt >= 127) {
                sb2.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
            } else {
                sb2.append(cCharAt);
            }
        }
        return sb2.toString();
    }

    private static void tt(final Context context, final com.byazt.dna.c cVar, final int i10) {
        ((qp) com.byazt.ut.uj.getService("thread_service")).getIoExecutor().execute(new com.byazt.bwm.sp("tt-webua") { // from class: com.byazt.bt.da.1
            @Override // java.lang.Runnable
            public void run() {
                da.ve(context, cVar, i10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String ve(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt <= 31 || cCharAt >= 127) {
                sb2.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
            } else {
                sb2.append(cCharAt);
            }
        }
        return sb2.toString();
    }

    public static String c(Context context, com.byazt.dna.c cVar, boolean z10, boolean z11, int i10) {
        if (!TextUtils.isEmpty(f12052c)) {
            return f12052c;
        }
        return c(z10, context, cVar, z11, i10);
    }

    private static String c(boolean z10, Context context, com.byazt.dna.c cVar, boolean z11, int i10) {
        String string;
        long j10;
        try {
            String strTt = x.tt("sdk_local_web_ua", "", cVar);
            if (TextUtils.isEmpty(strTt)) {
                string = null;
                j10 = 0;
            } else {
                JSONObject jSONObject = new JSONObject(strTt);
                string = jSONObject.getString(HmInputMappingContent.FIELD_VALUE);
                j10 = jSONObject.getLong("time");
                f12052c = string;
            }
            if (!z10 && z11) {
                return f12052c;
            }
            if (TextUtils.isEmpty(string)) {
                ve(context, cVar, i10);
            } else if (System.currentTimeMillis() - j10 > 259200000 && tt.compareAndSet(false, true)) {
                tt(context, cVar, i10);
            }
            return f12052c;
        } catch (Throwable unused) {
        }
    }
}
