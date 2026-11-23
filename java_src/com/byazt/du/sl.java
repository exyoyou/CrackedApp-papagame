package com.byazt.du;

import android.text.TextUtils;
import android.widget.TextView;
import com.byazt.nr.m;
import com.byazt.xl.u;
import com.sigmob.sdk.archives.tar.e;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 441, 158})
public class sl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Set<String> f13179c = Collections.unmodifiableSet(new HashSet(Arrays.asList("dislike", "close", "close-fill", "webview-close")));
    public static String tt;

    /* JADX WARN: Code duplicated, block: B:216:0x03f6  */
    /* JADX WARN: Code duplicated, block: B:219:0x0404 A[Catch: Exception -> 0x0416, TryCatch #3 {Exception -> 0x0416, blocks: (B:217:0x03fa, B:219:0x0404, B:224:0x040e), top: B:264:0x03fa }] */
    /* JADX WARN: Code duplicated, block: B:221:0x040a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:223:0x040d  */
    public static tt.ve c(String str, String str2, String str3, boolean z10, boolean z11, int i10, com.byazt.aq.x xVar, double d10, int i11, double d11, String str4, u uVar) {
        int i12;
        int i13;
        float f10;
        float f11;
        tt.ve veVarC;
        int i14;
        com.byazt.aq.a aVarN;
        String strOptString = str;
        int i15 = i10;
        String strA = uVar.a();
        if (com.byazt.sr.uj.c() && i11 != 4 && (TextUtils.equals(str2, "text_star") || TextUtils.equals(str2, "score-count") || TextUtils.equals(str2, "score-count-type-1") || TextUtils.equals(str2, "score-count-type-2"))) {
            return new tt.ve(0.0f, 0.0f);
        }
        tt.ve veVar = new tt.ve();
        if (strOptString.startsWith("<svg") || f13179c.contains(str2)) {
            try {
                if ("close".equals(str2) || (com.byazt.sr.uj.c() && "close-fill".equals(str2))) {
                    float fOptDouble = (float) new JSONObject(str3).optDouble("fontSize");
                    veVar.f13190c = fOptDouble;
                    veVar.tt = fOptDouble;
                    return veVar;
                }
            } catch (Exception unused) {
            }
            veVar.f13190c = 10.0f;
            veVar.tt = 10.0f;
            return veVar;
        }
        if ("logo".equals(str2)) {
            if (!com.byazt.sr.uj.c() && ((!TextUtils.isEmpty(str) && strOptString.contains("adx:")) || tt())) {
                return tt() ? c(veVar, strOptString, str3, tt) : c(veVar, strOptString, str3, "");
            }
            veVar.f13190c = "union".equals(strOptString) ? 10.0f : 20.0f;
            veVar.tt = 10.0f;
            if (com.byazt.sr.uj.c()) {
                String str5 = str2 + strOptString;
                float fTt = (float) tt(str3);
                if (str5.contains("logoad")) {
                    return c("AD", str3);
                }
                veVar.tt = fTt;
            }
            return veVar;
        }
        if ("development-name".equals(str2)) {
            strOptString = "开发者：".concat(strOptString);
        }
        if ("app-version".equals(str2)) {
            strOptString = "版本号：V".concat(String.valueOf(strOptString));
        }
        if ("score-count".equals(str2)) {
            try {
                i12 = Integer.parseInt(strOptString);
            } catch (NumberFormatException unused2) {
                i12 = 0;
            }
            if (com.byazt.sr.uj.c() && i12 < 0) {
                return new tt.ve(0.0f, 0.0f);
            }
            return c("(" + String.format("%1$s个评分", Integer.valueOf(i12)) + ")", str3);
        }
        if ("score-count-type-2".equals(str2)) {
            try {
                i13 = Integer.parseInt(strOptString);
            } catch (NumberFormatException unused3) {
                i13 = 0;
            }
            if (com.byazt.sr.uj.c() && i13 < 0) {
                return new tt.ve(0.0f, 0.0f);
            }
            return c("(" + String.format(new DecimalFormat("###,###,###").format(i13), Integer.valueOf(i13)) + ")", str3);
        }
        if ("feedback-dislike".equals(str2)) {
            if (!com.byazt.sr.uj.c()) {
                return c("反馈", str3);
            }
            tt.ve veVar2 = new tt.ve();
            float fTt2 = (float) tt(str3);
            veVar2.f13190c = fTt2;
            veVar2.tt = fTt2;
            return veVar2;
        }
        if ("skip-with-time-countdown".equals(str2) || TextUtils.equals("skip-with-countdowns-video-countdown", str2)) {
            if (uVar.ve() && com.byazt.or.sp.tt(strA)) {
                return c("0s", str3);
            }
            return d10 < 10.0d ? c("0S", str3) : c("00S", str3);
        }
        if (TextUtils.equals("skip-with-countdowns-skip-btn", str2)) {
            return c("| 跳过", str3);
        }
        if (TextUtils.equals("skip-with-countdowns-skip-countdown", str2)) {
            return c("| ".concat(String.valueOf(String.format("%1$ss后可跳过", e.V))), str3);
        }
        if ("skip-with-time-skip-btn".equals(str2)) {
            tt.ve veVarC2 = c("| 跳过", str3);
            if (com.byazt.sr.uj.c()) {
                try {
                    veVarC2.tt = (float) ((((double) veVarC2.tt) * new JSONObject(str3).optDouble("lineHeight")) / 1.2d);
                } catch (Throwable unused4) {
                }
                veVarC2.f13190c = veVarC2.tt;
            }
            return veVarC2;
        }
        if ("skip".equals(str2)) {
            return c("跳过", str3);
        }
        if ("timedown".equals(str2)) {
            return c("0.0", str3);
        }
        if ("text_star".equals(str2)) {
            return (!com.byazt.sr.uj.c() || (d11 >= 0.0d && d11 <= 5.0d)) ? c("0.0", str3) : new tt.ve(0.0f, 0.0f);
        }
        if (TextUtils.equals("privacy-detail", str2)) {
            return c("功能 | 权限 | 隐私", str3);
        }
        if ("arrowButton".equals(str2)) {
            return c("Download", str3);
        }
        if ("text".equals(str2) && com.byazt.sr.uj.c() && TextUtils.isEmpty(strOptString) && (aVarN = xVar.da().n()) != null) {
            strOptString = aVarN.r() != null ? xVar.da().n().r().optString(com.byazt.or.x.uj(com.byazt.sr.uj.getContext())) : "";
        }
        if ("fillButton".equals(str2) || "text".equals(str2) || "button".equals(str2) || "downloadWithIcon".equals(str2) || "downloadButton".equals(str2) || "laceButton".equals(str2) || "cardButton".equals(str2) || "colourMixtureButton".equals(str2) || "arrowButton".equals(str2) || (("source".equals(str2) && !(com.byazt.sr.uj.c() && "open_ad".equals(strA))) || TextUtils.equals("app-version", str2) || TextUtils.equals("development-name", str2))) {
            return c(strOptString, str3);
        }
        try {
            JSONObject jSONObject = new JSONObject(str3);
            int length = strOptString.length();
            float fOptDouble2 = (float) jSONObject.optDouble("fontSize");
            float fOptDouble3 = (float) jSONObject.optDouble("letterSpacing");
            float fOptDouble4 = (float) jSONObject.optDouble("lineHeight");
            float fOptDouble5 = (float) jSONObject.optDouble("maxWidth");
            float f12 = (length * (fOptDouble2 + fOptDouble3)) - fOptDouble3;
            m.uj("DynamicBaseWidget", "getDomSizeFromNative letterSpacing==" + fOptDouble3 + ",lineHeight==" + fOptDouble4 + ",maxWidth ==" + fOptDouble5 + ",totalStrLength" + f12);
            if ("muted".equals(str2)) {
                veVar.f13190c = fOptDouble2;
                veVar.tt = fOptDouble2;
                return veVar;
            }
            if ("star".equals(str2)) {
                if (com.byazt.sr.uj.c() && (d11 < 0.0d || d11 > 5.0d || i11 != 4)) {
                    return new tt.ve(0.0f, 0.0f);
                }
                tt.ve veVarC3 = c("str", str3);
                veVarC3.f13190c = fOptDouble2 * 5.0f;
                return veVarC3;
            }
            if ("icon".equals(str2)) {
                veVar.f13190c = fOptDouble2;
                veVar.tt = fOptDouble2;
                return veVar;
            }
            if (!z10) {
                f10 = (float) (((double) (fOptDouble4 * fOptDouble2)) * 1.2d);
                if (f12 <= fOptDouble5) {
                    f11 = f12;
                }
                if ("title".equals(str2) || (com.byazt.sr.uj.c() && "open_ad".equals(strA) && "source".equals(str2))) {
                    try {
                        veVarC = c(strOptString.replace('\n', ' '), str3, false);
                        if (z10) {
                            i14 = ((int) (f12 / fOptDouble5)) + 1;
                            if (z11 || i14 < i15) {
                                i15 = i14;
                            }
                            veVarC.tt *= i15;
                        }
                        return veVarC;
                    } catch (Exception unused5) {
                    }
                }
                veVar.f13190c = f11;
                veVar.tt = f10;
                return veVar;
            }
            int i16 = ((int) (f12 / fOptDouble5)) + 1;
            if (z11 && i16 >= i15) {
                i16 = i15;
            }
            f10 = (float) (((double) (fOptDouble4 * fOptDouble2 * i16)) * 1.2d);
            f11 = fOptDouble5;
            if ("title".equals(str2)) {
                veVarC = c(strOptString.replace('\n', ' '), str3, false);
                if (z10) {
                    i14 = ((int) (f12 / fOptDouble5)) + 1;
                    if (z11) {
                        i15 = i14;
                    } else {
                        i15 = i14;
                    }
                    veVarC.tt *= i15;
                }
                return veVarC;
            }
            veVarC = c(strOptString.replace('\n', ' '), str3, false);
            if (z10) {
                i14 = ((int) (f12 / fOptDouble5)) + 1;
                if (z11) {
                    i15 = i14;
                } else {
                    i15 = i14;
                }
                veVarC.tt *= i15;
            }
            return veVarC;
            return veVar;
        } catch (JSONException e10) {
            m.c(e10);
        }
    }

    public static double tt(String str) {
        try {
            return Double.parseDouble(new JSONObject(str).optString("fontSize"));
        } catch (Throwable unused) {
            return 0.0d;
        }
    }

    public static int[] tt(String str, float f10, boolean z10) {
        try {
            TextView textView = new TextView(com.byazt.sr.uj.getContext());
            textView.setTextSize(f10);
            textView.setText(str);
            textView.setIncludeFontPadding(false);
            if (z10) {
                textView.setSingleLine();
            }
            textView.measure(-2, -2);
            return new int[]{textView.getMeasuredWidth() + 2, textView.getMeasuredHeight() + 2};
        } catch (Exception unused) {
            return new int[]{0, 0};
        }
    }

    public static boolean tt() {
        return !TextUtils.isEmpty(tt);
    }

    public static String c(String str) {
        String[] strArrSplit;
        return (TextUtils.isEmpty(str) || (strArrSplit = str.split("adx:")) == null || strArrSplit.length < 2) ? "" : strArrSplit[1];
    }

    private static tt.ve c(tt.ve veVar, String str, String str2, String str3) {
        if (str.contains("union")) {
            veVar.f13190c = 0.0f;
            veVar.tt = 0.0f;
        } else {
            if (TextUtils.isEmpty(str3)) {
                str3 = c(str);
            }
            if (TextUtils.isEmpty(str3)) {
                veVar.f13190c = 0.0f;
                veVar.tt = 0.0f;
            } else {
                return c(str3, str2);
            }
        }
        return veVar;
    }

    public static tt.ve c(String str, String str2) {
        return c(str, str2, false);
    }

    public static tt.ve c(String str, String str2, boolean z10) {
        tt.ve veVar = new tt.ve();
        try {
            JSONObject jSONObject = new JSONObject(str2);
            int[] iArrC = c(str, (float) tt(str2), z10);
            veVar.f13190c = iArrC[0];
            veVar.tt = iArrC[1];
            if (jSONObject.optDouble("lineHeight", 1.0d) == 0.0d) {
                veVar.tt = 0.0f;
            }
        } catch (Exception e10) {
            m.c(e10);
        }
        return veVar;
    }

    public static int[] c(String str, float f10, boolean z10) {
        int[] iArrTt = tt(str, f10, z10);
        return new int[]{com.byazt.or.x.tt(com.byazt.sr.uj.getContext(), iArrTt[0]), com.byazt.or.x.tt(com.byazt.sr.uj.getContext(), iArrTt[1])};
    }

    public static String c() {
        return tt;
    }
}
