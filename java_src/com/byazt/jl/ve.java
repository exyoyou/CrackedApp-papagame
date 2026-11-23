package com.byazt.jl;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.byazt.nr.m;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 157, 54})
public class ve extends x<com.byazt.on.c, com.byazt.on.tt> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ boolean f15891a = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte f15894c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public List<n> f15895n;
    public final byte tt;
    public List<n> uj;
    public byte[] ve;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final byte[] f15893z = {-119, 80, 78, 71, 13, 10, 26, 10};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final byte[] f15892m = {0, 0, 0, 0, 73, 69, 78, 68, -82, 66, 96, -126};
    public static final ThreadLocal<CRC32> nu = new ThreadLocal<>();

    public ve(com.byazt.on.c cVar, a aVar) {
        super(cVar);
        this.uj = new ArrayList();
        this.f15895n = new ArrayList();
        this.f15894c = aVar.yp;
        this.tt = aVar.f15855u;
        int i10 = aVar.sl * 1000;
        short s10 = aVar.f15854t;
        int i11 = i10 / (s10 == 0 ? (short) 100 : s10);
        this.f15898t = i11;
        if (i11 < 10) {
            this.f15898t = 100;
        }
        this.f15900x = aVar.ve;
        this.f15897i = aVar.f15856x;
        this.f15896da = aVar.f15853i;
        this.sl = aVar.f15852da;
    }

    private CRC32 c() {
        ThreadLocal<CRC32> threadLocal = nu;
        CRC32 crc32 = threadLocal.get();
        if (crc32 != null) {
            return crc32;
        }
        CRC32 crc33 = new CRC32();
        threadLocal.set(crc33);
        return crc33;
    }

    private int c(com.byazt.on.tt ttVar) throws IOException {
        int i10;
        Iterator<n> it2 = this.f15895n.iterator();
        int i11 = 33;
        while (it2.hasNext()) {
            i11 += it2.next().uj + 12;
        }
        for (n nVar : this.uj) {
            if (nVar instanceof da) {
                i10 = nVar.uj + 12;
            } else if (nVar instanceof sp) {
                i10 = nVar.uj + 8;
            }
            i11 += i10;
        }
        int length = i11 + f15892m.length;
        ttVar.ve(length);
        ttVar.c(f15893z);
        ttVar.tt(13);
        int iC = ttVar.c();
        ttVar.c(t.f15884c);
        ttVar.tt(this.f15900x);
        ttVar.tt(this.f15897i);
        ttVar.c(this.ve);
        CRC32 crc32C = c();
        crc32C.reset();
        crc32C.update(ttVar.tt(), iC, 17);
        ttVar.tt((int) crc32C.getValue());
        for (n nVar2 : this.f15895n) {
            if (!(nVar2 instanceof sl)) {
                ((com.byazt.on.c) this.sp).d_();
                ((com.byazt.on.c) this.sp).c(nVar2.sp);
                ((com.byazt.on.c) this.sp).c(ttVar.tt(), ttVar.c(), nVar2.uj + 12);
                ttVar.uj(nVar2.uj + 12);
            }
        }
        for (n nVar3 : this.uj) {
            if (nVar3 instanceof da) {
                ((com.byazt.on.c) this.sp).d_();
                ((com.byazt.on.c) this.sp).c(nVar3.sp);
                ((com.byazt.on.c) this.sp).c(ttVar.tt(), ttVar.c(), nVar3.uj + 12);
                ttVar.uj(nVar3.uj + 12);
            } else if (nVar3 instanceof sp) {
                ttVar.tt(nVar3.uj - 4);
                int iC2 = ttVar.c();
                ttVar.c(da.f15858c);
                ((com.byazt.on.c) this.sp).d_();
                ((com.byazt.on.c) this.sp).c(nVar3.sp + 4 + 4 + 4);
                ((com.byazt.on.c) this.sp).c(ttVar.tt(), ttVar.c(), nVar3.uj - 4);
                ttVar.uj(nVar3.uj - 4);
                crc32C.reset();
                crc32C.update(ttVar.tt(), iC2, nVar3.uj);
                ttVar.tt((int) crc32C.getValue());
            }
        }
        ttVar.c(f15892m);
        return length;
    }

    @Override // com.byazt.jl.x
    public Bitmap c(Canvas canvas, Paint paint, int i10, Bitmap bitmap, com.byazt.on.tt ttVar) {
        Bitmap bitmapDecodeByteArray;
        try {
            int iC = c(ttVar);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = false;
            options.inSampleSize = i10;
            options.inMutable = true;
            options.inBitmap = bitmap;
            byte[] bArrTt = ttVar.tt();
            try {
                bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrTt, 0, iC, options);
            } catch (IllegalArgumentException unused) {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inJustDecodeBounds = false;
                options2.inSampleSize = i10;
                options2.inMutable = true;
                bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrTt, 0, iC, options2);
            }
            if (!f15891a && bitmapDecodeByteArray == null) {
                throw new AssertionError();
            }
            Rect rect = this.f15899u;
            rect.left = 0;
            rect.top = 0;
            rect.right = bitmapDecodeByteArray.getWidth();
            this.f15899u.bottom = bitmapDecodeByteArray.getHeight();
            Rect rect2 = this.yp;
            int i11 = this.f15896da;
            float f10 = i10;
            rect2.left = (int) (i11 / f10);
            rect2.top = (int) (this.sl / f10);
            rect2.right = (int) ((i11 / f10) + bitmapDecodeByteArray.getWidth());
            this.yp.bottom = (int) ((this.sl / f10) + bitmapDecodeByteArray.getHeight());
            canvas.drawBitmap(bitmapDecodeByteArray, this.f15899u, this.yp, paint);
            return bitmapDecodeByteArray;
        } catch (IOException e10) {
            m.c(e10);
            return null;
        }
    }
}
