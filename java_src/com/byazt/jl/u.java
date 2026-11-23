package com.byazt.jl;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.byazt.nr.m;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 157, 67})
public class u extends x<com.byazt.on.c, com.byazt.on.tt> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ boolean f15890c = true;

    public u(com.byazt.on.c cVar) {
        super(cVar);
    }

    @Override // com.byazt.jl.x
    public Bitmap c(Canvas canvas, Paint paint, int i10, Bitmap bitmap, com.byazt.on.tt ttVar) {
        Bitmap bitmapDecodeStream;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        options.inSampleSize = i10;
        options.inMutable = true;
        options.inBitmap = bitmap;
        Bitmap bitmap2 = null;
        try {
            ((com.byazt.on.c) this.sp).d_();
            try {
                bitmapDecodeStream = BitmapFactory.decodeStream(((com.byazt.on.c) this.sp).n(), null, options);
            } catch (IllegalArgumentException unused) {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inJustDecodeBounds = false;
                options2.inSampleSize = i10;
                options2.inMutable = true;
                bitmapDecodeStream = BitmapFactory.decodeStream(((com.byazt.on.c) this.sp).n(), null, options2);
            }
            try {
                if (!f15890c && bitmapDecodeStream == null) {
                    throw new AssertionError();
                }
                paint.setXfermode(null);
                canvas.drawBitmap(bitmapDecodeStream, 0.0f, 0.0f, paint);
                return bitmapDecodeStream;
            } catch (IOException e10) {
                e = e10;
                bitmap2 = bitmapDecodeStream;
                m.c(e);
                return bitmap2;
            }
        } catch (IOException e11) {
            e = e11;
            m.c(e);
            return bitmap2;
        }
    }
}
