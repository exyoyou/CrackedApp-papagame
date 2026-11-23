package com.byazt.or;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.widget.ImageView;
import com.aggmoread.sdk.z.a.i.k;
import com.aggmoread.sdk.z.a.i.l;
import com.byazt.nr.m;
import com.byazt.nr.t;
import com.byazt.oq.GifView;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 579, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f18351c = c("VP8X");

    private static byte[] c(String str) {
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException unused) {
            return new byte[1];
        }
    }

    public static void tt(ImageView imageView, byte[] bArr, int i10, int i11) {
        try {
            if (imageView instanceof GifView) {
                ((GifView) imageView).c(bArr, false);
                return;
            }
            if (TextUtils.equals("png", t.c(Arrays.copyOfRange(bArr, 0, t.c())))) {
                ve(imageView, bArr, i10, i11);
            } else if (c(bArr, 0)) {
                c(imageView, bArr, i10, i11);
            } else {
                uj(imageView, bArr, i10, i11);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    private static void uj(final ImageView imageView, byte[] bArr, int i10, int i11) {
        final Bitmap bitmapC = new com.byazt.ib.c(i10, i11, imageView.getScaleType(), Bitmap.Config.RGB_565, i10, i11).c(bArr);
        if (bitmapC != null) {
            com.byazt.nr.da.tt().post(new Runnable() { // from class: com.byazt.or.a.2
                @Override // java.lang.Runnable
                public void run() {
                    imageView.setImageBitmap(bitmapC);
                }
            });
        }
    }

    private static void ve(final ImageView imageView, byte[] bArr, int i10, int i11) {
        if (!c(bArr)) {
            uj(imageView, bArr, i10, i11);
        } else {
            final com.byazt.wx.c cVarC = com.byazt.wx.c.c(ByteBuffer.wrap(bArr));
            com.byazt.nr.da.tt().post(new Runnable() { // from class: com.byazt.or.a.1
                @Override // java.lang.Runnable
                public void run() {
                    imageView.setImageDrawable(cVarC);
                }
            });
        }
    }

    public static boolean c(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return false;
        }
        return c.c(bArr);
    }

    public static void c(final ImageView imageView, byte[] bArr, int i10, int i11) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                final Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(ImageDecoder.createSource(byteBufferWrap));
                com.byazt.nr.da.tt().post(new Runnable() { // from class: com.byazt.or.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (k.a(drawableDecodeDrawable)) {
                            l.a(drawableDecodeDrawable).start();
                        }
                        imageView.setImageDrawable(drawableDecodeDrawable);
                    }
                });
                return;
            } catch (IOException e10) {
                m.c(e10);
                return;
            }
        }
        uj(imageView, bArr, i10, i11);
    }

    public static boolean c(byte[] bArr, int i10) {
        try {
            boolean zC = c(bArr, i10 + 12, f18351c);
            int i11 = i10 + 20;
            if (bArr.length <= i11) {
                return false;
            }
            return zC && ((bArr[i11] & 2) == 2);
        } catch (Throwable th) {
            m.c(th);
            return false;
        }
    }

    private static boolean c(byte[] bArr, int i10, byte[] bArr2) {
        if (bArr2 == null || bArr == null || bArr2.length + i10 > bArr.length) {
            return false;
        }
        for (int i11 = 0; i11 < bArr2.length; i11++) {
            if (bArr[i11 + i10] != bArr2[i11]) {
                return false;
            }
        }
        return true;
    }
}
