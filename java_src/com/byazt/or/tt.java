package com.byazt.or;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import com.byazt.nr.m;
import com.bytedance.component.sdk.annotation.RequiresApi;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 579, 13})
public class tt {
    /* JADX WARN: Code duplicated, block: B:41:0x0092 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:43:0x0097 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:45:0x009c A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:47:0x00a1 A[DONT_GENERATE] */
    @RequiresApi(api = 17)
    public static Bitmap c(Context context, Bitmap bitmap, int i10) {
        RenderScript renderScript;
        Allocation allocation;
        ScriptIntrinsicBlur scriptIntrinsicBlurCreate;
        Allocation allocationCreateFromBitmap;
        try {
            if ((!com.byazt.sr.uj.c() || Build.VERSION.SDK_INT >= 26) && bitmap != null && !bitmap.isRecycled()) {
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, Math.round(bitmap.getWidth() * 0.2f), Math.round(bitmap.getHeight() * 0.2f), false);
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateScaledBitmap);
                RenderScript renderScriptCreate = RenderScript.create(context);
                if (renderScriptCreate == null) {
                    if (renderScriptCreate != null) {
                        renderScriptCreate.destroy();
                    }
                    return null;
                }
                try {
                    scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
                    try {
                        Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateScaledBitmap);
                        try {
                            allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
                            try {
                                scriptIntrinsicBlurCreate.setRadius(i10);
                                scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap2);
                                scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap);
                                allocationCreateFromBitmap.copyTo(bitmapCreateBitmap);
                                if (allocationCreateFromBitmap2 != null) {
                                    allocationCreateFromBitmap2.destroy();
                                }
                                allocationCreateFromBitmap.destroy();
                                scriptIntrinsicBlurCreate.destroy();
                                renderScriptCreate.destroy();
                                return bitmapCreateBitmap;
                            } catch (Throwable th) {
                                th = th;
                                renderScript = renderScriptCreate;
                                th = th;
                                allocation = allocationCreateFromBitmap2;
                                try {
                                    m.c(th);
                                    return null;
                                } finally {
                                    if (allocation != null) {
                                        allocation.destroy();
                                    }
                                    if (allocationCreateFromBitmap != null) {
                                        allocationCreateFromBitmap.destroy();
                                    }
                                    if (scriptIntrinsicBlurCreate != null) {
                                        scriptIntrinsicBlurCreate.destroy();
                                    }
                                    if (renderScript != null) {
                                        renderScript.destroy();
                                    }
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            allocationCreateFromBitmap = null;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        allocation = null;
                        allocationCreateFromBitmap = null;
                        Throwable th4 = th;
                        renderScript = renderScriptCreate;
                        th = th4;
                        m.c(th);
                        return null;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    allocation = null;
                    scriptIntrinsicBlurCreate = null;
                    allocationCreateFromBitmap = null;
                }
            }
            return null;
        } catch (Throwable th6) {
            th = th6;
            renderScript = null;
            allocation = null;
            scriptIntrinsicBlurCreate = null;
            allocationCreateFromBitmap = null;
        }
    }
}
