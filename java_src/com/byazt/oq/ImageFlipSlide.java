package com.byazt.oq;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.view.View;
import com.byazt.or.tt;
import com.byazt.yj.da;
import com.byazt.yj.gr;
import com.byazt.yj.m;
import com.byazt.yj.yp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 1207})
public class ImageFlipSlide extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f18254a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Paint f18255c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Path f18256n;
    public final Rect sp;
    public float tt;
    public List<String> uj;
    public Bitmap ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final boolean f18257x;

    public ImageFlipSlide(Context context, boolean z10) {
        super(context);
        this.tt = 0.1f;
        this.f18254a = new Rect();
        this.sp = new Rect();
        this.f18257x = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBlurPx() {
        if (this.uj == null) {
            return 0;
        }
        for (int i10 = 0; i10 < this.uj.size(); i10++) {
            if (this.uj.get(i10).contains("blur")) {
                return Integer.parseInt(this.uj.get(i10).split("\\(")[1].split("px")[0]);
            }
        }
        return 0;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Bitmap bitmap = this.ve;
        if (bitmap == null) {
            return;
        }
        if (!this.f18257x) {
            canvas.clipPath(this.f18256n);
            canvas.drawBitmap(this.ve, 0.0f, 0.0f, this.f18255c);
            return;
        }
        this.f18254a.left = (int) (bitmap.getWidth() * (1.0f - this.tt));
        this.f18254a.right = this.ve.getWidth();
        Rect rect = this.f18254a;
        rect.top = 0;
        rect.bottom = this.ve.getHeight();
        this.sp.left = (int) (getWidth() * (1.0f - this.tt));
        this.sp.right = getWidth();
        Rect rect2 = this.sp;
        rect2.top = 0;
        rect2.bottom = getHeight();
        canvas.drawBitmap(this.ve, this.f18254a, this.sp, this.f18255c);
    }

    public void c(String str, String str2, List<String> list) {
        final yp ypVarKey = com.byazt.mf.c.c().n().from(str).key(str2);
        this.uj = list;
        ypVarKey.config(Bitmap.Config.ARGB_4444).type(2);
        if (getBlurPx() != 0) {
            ypVarKey.converter(new da() { // from class: com.byazt.oq.ImageFlipSlide.1
                @Override // com.byazt.yj.da
                public Bitmap coverterTo(Bitmap bitmap) {
                    try {
                        return tt.c(ImageFlipSlide.this.getContext(), bitmap, ImageFlipSlide.this.getBlurPx());
                    } catch (Exception unused) {
                        return bitmap;
                    }
                }
            });
        }
        post(new Runnable() { // from class: com.byazt.oq.ImageFlipSlide.2
            @Override // java.lang.Runnable
            public void run() {
                ypVarKey.to(new gr<Bitmap>() { // from class: com.byazt.oq.ImageFlipSlide.2.1
                    @Override // com.byazt.yj.gr
                    public void onFailed(int i10, String str3, Throwable th) {
                    }

                    @Override // com.byazt.yj.gr
                    public void onSuccess(m<Bitmap> mVar) {
                        try {
                            ImageFlipSlide imageFlipSlide = ImageFlipSlide.this;
                            imageFlipSlide.ve = imageFlipSlide.c(mVar.getResult(), ImageFlipSlide.this.getWidth(), ImageFlipSlide.this.getHeight());
                        } catch (Exception unused) {
                        }
                        ImageFlipSlide.this.invalidate();
                    }
                });
            }
        });
        Paint paint = new Paint();
        this.f18255c = paint;
        paint.setAntiAlias(true);
        this.f18255c.setDither(true);
        if (this.f18257x) {
            this.f18255c.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        }
        List<String> list2 = this.uj;
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        ColorMatrix colorMatrix = new ColorMatrix();
        for (int i10 = 0; i10 < this.uj.size(); i10++) {
            c(colorMatrix, this.uj.get(i10));
        }
        this.f18255c.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
    }

    private void c(ColorMatrix colorMatrix, String str) {
        try {
            ColorMatrix colorMatrix2 = new ColorMatrix();
            if (str.startsWith("hue-rotate")) {
                colorMatrix2.setRotate(0, Integer.parseInt(str.split("\\(")[1].split("deg")[0]));
            } else if (!str.startsWith("grayscale") && !str.startsWith("contrast")) {
                if (str.startsWith("invert")) {
                    float f10 = (Integer.parseInt(str.split("\\(")[1].split("%")[0]) / 100.0f) * 255.0f;
                    colorMatrix2.set(new float[]{-1.0f, 0.0f, 0.0f, 0.0f, f10, 0.0f, -1.0f, 0.0f, 0.0f, f10, 0.0f, 0.0f, -1.0f, 0.0f, f10, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
                } else if (str.startsWith("sepia")) {
                    float f11 = Integer.parseInt(str.split("\\(")[1].split("%")[0]) / 100.0f;
                    colorMatrix2.setScale(f11, f11, 1.0f, 1.0f);
                } else if (str.startsWith("brightness")) {
                    float f12 = Integer.parseInt(str.split("\\(")[1].split("%")[0]) / 100.0f;
                    colorMatrix2.setScale(f12, f12, f12, 1.0f);
                }
            } else {
                colorMatrix2.setSaturation(Integer.parseInt(str.split("\\(")[1].split("%")[0]) / 100.0f);
            }
            colorMatrix.postConcat(colorMatrix2);
        } catch (Exception unused) {
        }
    }

    public void c(float f10) {
        this.tt = f10;
        invalidate();
    }

    public void c(Path path) {
        this.f18256n = path;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap c(Bitmap bitmap, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f10 = i10;
        float f11 = (width * 1.0f) / f10;
        float f12 = i11;
        float f13 = (height * 1.0f) / f12;
        Matrix matrix = new Matrix();
        if (f13 > f11) {
            int i16 = (int) (f12 * f11);
            float f14 = 1.0f / f11;
            matrix.setScale(f14, f14);
            i14 = i16;
            i12 = width;
            i15 = (height / 2) - (i16 / 2);
            i13 = 0;
        } else {
            int i17 = (int) (f10 * f13);
            float f15 = 1.0f / f13;
            matrix.setScale(f15, f15);
            i12 = i17;
            i13 = (width / 2) - (i17 / 2);
            i14 = height;
            i15 = 0;
        }
        return Bitmap.createBitmap(bitmap, i13, i15, i12, i14, matrix, false);
    }
}
