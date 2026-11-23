package com.byazt.mw;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import com.byazt.bwm.n;
import com.byazt.bwm.sp;
import com.byazt.ete.ic;
import com.byazt.hv.TTDownloadField;
import com.byazt.ktv.tt;
import com.byazt.omf.gt;
import com.byazt.ukr.yp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1559, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONObject f17027c;

    public String toString() {
        JSONObject jSONObject = this.f17027c;
        return jSONObject == null ? "" : jSONObject.toString();
    }

    public boolean c() {
        JSONObject jSONObject = this.f17027c;
        if (jSONObject != null && jSONObject.optInt("type") > 0) {
            return tt.c((float) this.f17027c.optDouble("rate"), false);
        }
        return false;
    }

    public static c c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return c(new JSONObject(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static c c(JSONObject jSONObject) {
        c cVar = new c();
        cVar.f17027c = jSONObject;
        return cVar;
    }

    public void c(WebView webView, final ic icVar) {
        View view;
        if (c() && webView != null) {
            try {
                System.currentTimeMillis();
                if (Build.VERSION.SDK_INT >= 28 && webView.getLayerType() == 2 && (view = (View) webView.getParent()) != null) {
                    int measuredWidth = (int) (((double) view.getMeasuredWidth()) * 0.6d);
                    int measuredHeight = (int) (((double) view.getMeasuredHeight()) * 0.6d);
                    if (c(gt.getContext(), measuredWidth, measuredHeight)) {
                        final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.RGB_565);
                        view.draw(new Canvas(bitmapCreateBitmap));
                        System.currentTimeMillis();
                        n.tt(new sp("") { // from class: com.byazt.mw.c.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    System.currentTimeMillis();
                                    c.this.c(bitmapCreateBitmap, icVar);
                                    System.currentTimeMillis();
                                    try {
                                        if (bitmapCreateBitmap.isRecycled()) {
                                            return;
                                        }
                                        bitmapCreateBitmap.recycle();
                                    } catch (Throwable unused) {
                                    }
                                } catch (Throwable th) {
                                    try {
                                        th.getMessage();
                                        try {
                                            if (bitmapCreateBitmap.isRecycled()) {
                                            }
                                        } catch (Throwable unused2) {
                                        }
                                    } finally {
                                        try {
                                            if (!bitmapCreateBitmap.isRecycled()) {
                                                bitmapCreateBitmap.recycle();
                                            }
                                        } catch (Throwable unused3) {
                                        }
                                    }
                                }
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Bitmap bitmap, ic icVar) throws JSONException {
        Matrix matrix = new Matrix();
        matrix.setScale(0.4f, 0.4f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        try {
            bitmap.recycle();
        } catch (Throwable th) {
            th.getMessage();
        }
        float width = bitmapCreateBitmap.getWidth() * bitmapCreateBitmap.getHeight();
        float f10 = 0.0f;
        for (int i10 = 0; i10 < bitmapCreateBitmap.getWidth(); i10++) {
            for (int i11 = 0; i11 < bitmapCreateBitmap.getHeight(); i11++) {
                if (bitmapCreateBitmap.getPixel(i10, i11) == -1) {
                    f10 += 1.0f;
                }
            }
        }
        try {
            bitmapCreateBitmap.recycle();
        } catch (Throwable th2) {
            th2.getMessage();
        }
        if ((f10 / width) * 100.0f > 95.0d) {
            JSONObject jSONObject = new JSONObject();
            if (icVar != null) {
                jSONObject.put("url", icVar.x());
                jSONObject.put(MediationConstant.EXTRA_ADID, icVar.gu());
                jSONObject.put("cid", icVar.uj());
            }
            yp.c().i(jSONObject);
        }
    }

    public boolean c(Context context, int i10, int i11) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            if (memoryInfo.lowMemory) {
                return false;
            }
            if (memoryInfo.availMem > Math.max((long) Math.max(memoryInfo.totalMem * 0.02d, 5.24288E7d), (long) (i10 * i11 * 2 * 2.0f))) {
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
