package com.byazt.zk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.os.SystemClock;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.view.TextureView;
import android.view.View;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 909, 2067})
public class VideoFrame extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f22801a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextureView f22802c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ScriptIntrinsicBlur f22803n;
    public Bitmap sp;
    public final Matrix tt;
    public RenderScript uj;
    public final com.byazt.ga.i.c.C0316c ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f22804x;

    public VideoFrame(Context context, TextureView textureView, com.byazt.ga.i.c.C0316c c0316c) {
        super(context);
        this.f22801a = -1L;
        this.sp = null;
        this.f22804x = 0;
        this.f22802c = textureView;
        this.tt = new Matrix();
        this.ve = c0316c;
    }

    public Bitmap c(Bitmap bitmap, float f10) {
        Bitmap bitmapCreateBitmap;
        try {
            RenderScript renderScript = this.uj;
            if (renderScript != null && this.f22803n != null) {
                Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScript, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
                Allocation allocationCreateTyped = Allocation.createTyped(this.uj, allocationCreateFromBitmap.getType());
                this.f22803n.setRadius(f10);
                this.f22803n.setInput(allocationCreateFromBitmap);
                this.f22803n.forEach(allocationCreateTyped);
                bitmapCreateBitmap = Bitmap.createBitmap(bitmap);
                try {
                    allocationCreateTyped.copyTo(bitmapCreateBitmap);
                    allocationCreateTyped.destroy();
                    allocationCreateFromBitmap.destroy();
                    return bitmapCreateBitmap;
                } catch (Throwable th) {
                    th = th;
                    m.c(th);
                    if (bitmapCreateBitmap != null) {
                        bitmapCreateBitmap.recycle();
                    }
                    return null;
                }
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            bitmapCreateBitmap = null;
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        RenderScript renderScript = this.uj;
        if (renderScript != null) {
            renderScript.destroy();
        }
        ScriptIntrinsicBlur scriptIntrinsicBlur = this.f22803n;
        if (scriptIntrinsicBlur != null) {
            scriptIntrinsicBlur.destroy();
        }
        RenderScript renderScriptCreate = RenderScript.create(getContext());
        this.uj = renderScriptCreate;
        this.f22803n = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Bitmap bitmap = this.sp;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.sp.recycle();
        }
        ScriptIntrinsicBlur scriptIntrinsicBlur = this.f22803n;
        if (scriptIntrinsicBlur != null) {
            scriptIntrinsicBlur.destroy();
            this.f22803n = null;
        }
        RenderScript renderScript = this.uj;
        if (renderScript != null) {
            renderScript.destroy();
            this.uj = null;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Bitmap bitmap;
        Bitmap bitmap2;
        super.onDraw(canvas);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.f22801a >= 40) {
            this.f22801a = jElapsedRealtime;
            TextureView textureView = this.f22802c;
            if (textureView != null && textureView.isAvailable()) {
                float width = this.f22802c.getWidth() / 160.0f;
                if (width > 0.0f) {
                    this.f22804x = (int) (this.f22802c.getHeight() / width);
                }
                int i10 = this.f22804x;
                if (i10 > 0 && (bitmap2 = this.f22802c.getBitmap(160, i10)) != null) {
                    Bitmap bitmap3 = this.sp;
                    if (bitmap3 != null && !bitmap3.isRecycled()) {
                        this.sp.recycle();
                    }
                    this.sp = c(bitmap2, this.ve.f14386c);
                    bitmap2.recycle();
                }
            }
        }
        if (this.f22804x <= 0 || (bitmap = this.sp) == null || bitmap.isRecycled()) {
            return;
        }
        canvas.save();
        this.tt.reset();
        this.tt.setScale(getWidth() / 160.0f, getHeight() / this.f22804x);
        canvas.concat(this.tt);
        canvas.drawBitmap(this.sp, 0.0f, 0.0f, (Paint) null);
        canvas.restore();
    }
}
