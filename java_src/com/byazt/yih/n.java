package com.byazt.yih;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.text.TextUtils;
import com.byazt.aas.nb;
import com.byazt.bv.BaseConstants;
import com.byazt.nr.da;
import com.byazt.omf.gt;
import com.byazt.yj.gr;
import com.byazt.yj.m;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 730, 46})
public class n implements uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ve f22262c;

    public n(ve veVar) {
        this.f22262c = veVar;
    }

    private String uj(com.byazt.qt.c cVar) {
        ApplicationInfo applicationInfo;
        if (!this.f22262c.tt()) {
            return "enable_action_notification=0";
        }
        if (cVar.a() == 0) {
            return "enable_notification=0";
        }
        Context context = gt.getContext();
        if (context != null && (applicationInfo = context.getApplicationInfo()) != null && applicationInfo.targetSdkVersion >= 33 && Build.VERSION.SDK_INT >= 33 && !com.byazt.xgx.n.c().tt(gt.getContext(), "android.permission.POST_NOTIFICATIONS")) {
            return "post_notifications_deny";
        }
        if (c(1440L, this.f22262c.a(), 1000 * this.f22262c.n())) {
            return null;
        }
        return "max_times_limit";
    }

    private String ve(com.byazt.qt.c cVar) {
        ApplicationInfo applicationInfo;
        if (!this.f22262c.c()) {
            return "enable_install_notification";
        }
        com.byazt.dj.uj ujVarNu = com.byazt.omf.x.m().nu();
        if (ujVarNu != null && !ujVarNu.isCanUseMessage()) {
            return "isCanUseMessage";
        }
        if (cVar.a() == 0) {
            return "enable_notification=0";
        }
        Context context = gt.getContext();
        if (context != null && (applicationInfo = context.getApplicationInfo()) != null && applicationInfo.targetSdkVersion >= 33 && Build.VERSION.SDK_INT >= 33 && !com.byazt.xgx.n.c().tt(gt.getContext(), "android.permission.POST_NOTIFICATIONS")) {
            return "post_notifications_deny";
        }
        if (c(1440L, this.f22262c.a(), 1000 * this.f22262c.n())) {
            return null;
        }
        return "max_times_limit";
    }

    @Override // com.byazt.yih.uj
    public boolean tt(com.byazt.qt.c cVar) {
        String strUj = uj(cVar);
        if (TextUtils.isEmpty(strUj)) {
            c(cVar, "pushUnActiveFromMarketMessage");
            return true;
        }
        c("notification", cVar, "open", "othershow", strUj, "failure");
        return false;
    }

    @Override // com.byazt.yih.uj
    public boolean c(final com.byazt.qt.c cVar) {
        String strVe = ve(cVar);
        if (TextUtils.isEmpty(strVe)) {
            da.c().postDelayed(new Runnable() { // from class: com.byazt.yih.n.1
                @Override // java.lang.Runnable
                public void run() {
                    n.this.c(cVar, "startUnInstallNotification");
                }
            }, this.f22262c.uj() * 1000);
            return true;
        }
        c("notification", cVar, com.sigmob.sdk.base.n.f79590q, "othershow", strVe, "failure");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final com.byazt.qt.c cVar, final String str) {
        if (cVar == null) {
            return;
        }
        com.byazt.xky.tt.c(cVar.tt()).config(Bitmap.Config.ARGB_4444).type(2).to(new gr<Bitmap>() { // from class: com.byazt.yih.n.2
            @Override // com.byazt.yj.gr
            public void onFailed(int i10, String str2, Throwable th) {
            }

            @Override // com.byazt.yj.gr
            public void onSuccess(m<Bitmap> mVar) {
                if (mVar != null) {
                    Bitmap result = mVar.getResult();
                    final Bitmap bitmapC = n.c(result, 10.0f);
                    if (result != null) {
                        final boolean zTt = nb.tt(cVar.ve());
                        n.c("notification", cVar, zTt ? "open" : com.sigmob.sdk.base.n.f79590q, "othershow", str + "_" + cVar.ve(), "success");
                        com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.yih.n.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                com.byazt.qt.ve.c(cVar, "com.csj.install", zTt ? 1 : 2, bitmapC);
                            }
                        });
                    }
                }
            }
        }, 4);
    }

    public static void c(String str, final com.byazt.qt.c cVar, final String str2, String str3, final String str4, final String str5) {
        com.byazt.ddx.uj.c(str, str3, cVar.x(), cVar.n(), new com.byazt.ya.c() { // from class: com.byazt.yih.n.3
            @Override // com.byazt.ya.c
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("type", str2);
                jSONObject2.put("installer_package_name", cVar.ve());
                if (!TextUtils.isEmpty(str4)) {
                    jSONObject2.put("error_message", str4);
                }
                if (!TextUtils.isEmpty(str5)) {
                    jSONObject2.put("status", str5);
                }
                if (jSONObject != null) {
                    jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2);
                }
            }
        });
    }

    public static Bitmap c(Bitmap bitmap, float f10) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, f10, f10, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return bitmapCreateBitmap;
    }

    public boolean c(long j10, int i10, long j11) {
        int i11;
        try {
            Long lValueOf = -1L;
            try {
                lValueOf = Long.valueOf(60 * j10 * 1000);
                i11 = i10;
            } catch (Exception e10) {
                com.byazt.nr.m.tt("xgc_notification", "error", e10.getMessage());
                i11 = -1;
            }
            if (lValueOf.longValue() >= 0 && i11 >= 0 && lValueOf.longValue() != 0 && i11 != 0) {
                String strC = c();
                StringBuilder sb2 = new StringBuilder();
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (TextUtils.isEmpty(strC)) {
                    sb2.append(jCurrentTimeMillis);
                    c(sb2.toString());
                    return true;
                }
                String[] strArrSplit = strC.split("_");
                int length = strArrSplit.length;
                if (length < i11) {
                    if (jCurrentTimeMillis - Long.parseLong(strArrSplit[length - 1]) <= j11) {
                        return false;
                    }
                    for (String str : strArrSplit) {
                        sb2.append(str);
                        sb2.append("_");
                    }
                    sb2.append(jCurrentTimeMillis);
                    c(sb2.toString());
                    return true;
                }
                int i12 = length - i11;
                if (jCurrentTimeMillis - Long.valueOf(Long.parseLong(strArrSplit[length + (-1)])).longValue() > j11 && jCurrentTimeMillis - Long.valueOf(Long.parseLong(strArrSplit[i12])).longValue() > lValueOf.longValue()) {
                    for (int i13 = i12; i13 < length; i13++) {
                        String str2 = strArrSplit[i13];
                        if (i13 != i12 && !TextUtils.isEmpty(str2)) {
                            sb2.append(str2);
                            sb2.append("_");
                        }
                    }
                    sb2.append(jCurrentTimeMillis);
                    c(sb2.toString());
                    return true;
                }
            }
            return false;
        } catch (Exception e11) {
            com.byazt.nr.m.c(e11);
            com.byazt.nr.m.tt("xgc_notification", "exception:" + e11.getMessage());
            return false;
        }
    }

    public static String c() {
        return com.byazt.omf.tt.c().get("notification_a", "");
    }

    public static void c(String str) {
        com.byazt.omf.tt.c().put("notification_a", str);
    }
}
