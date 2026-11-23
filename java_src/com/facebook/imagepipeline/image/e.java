package com.facebook.imagepipeline.image;

import android.graphics.ColorSpace;
import android.util.Pair;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.l;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.references.SharedReference;
import com.facebook.imageutils.HeifExifUtil;
import com.facebook.infer.annotation.FalseOnNull;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
public class e implements Closeable {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f28033n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f28034o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f28035p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f28036q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f28037r = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static boolean f28038s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final CloseableReference<PooledByteBuffer> f28039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final l<FileInputStream> f28040c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.facebook.imageformat.c f28041d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f28042e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f28043f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f28044g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f28045h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f28046i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f28047j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.common.a f28048k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private ColorSpace f28049l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f28050m;

    public e(CloseableReference<PooledByteBuffer> pooledByteBufferRef) {
        this.f28041d = com.facebook.imageformat.c.f27545c;
        this.f28042e = -1;
        this.f28043f = 0;
        this.f28044g = -1;
        this.f28045h = -1;
        this.f28046i = 1;
        this.f28047j = -1;
        com.facebook.common.internal.i.d(Boolean.valueOf(CloseableReference.p(pooledByteBufferRef)));
        this.f28039b = pooledByteBufferRef.clone();
        this.f28040c = null;
    }

    private void K() {
        com.facebook.imageformat.c cVarD = com.facebook.imageformat.d.d(p());
        this.f28041d = cVarD;
        Pair<Integer, Integer> pairC0 = com.facebook.imageformat.b.c(cVarD) ? c0() : a0().b();
        if (cVarD == com.facebook.imageformat.b.f27532a && this.f28042e == -1) {
            if (pairC0 != null) {
                int iB = com.facebook.imageutils.e.b(p());
                this.f28043f = iB;
                this.f28042e = com.facebook.imageutils.e.a(iB);
                return;
            }
            return;
        }
        if (cVarD == com.facebook.imageformat.b.f27542k && this.f28042e == -1) {
            int iA = HeifExifUtil.a(p());
            this.f28043f = iA;
            this.f28042e = com.facebook.imageutils.e.a(iA);
        } else if (this.f28042e == -1) {
            this.f28042e = 0;
        }
    }

    public static boolean M(e encodedImage) {
        return encodedImage.f28042e >= 0 && encodedImage.f28044g >= 0 && encodedImage.f28045h >= 0;
    }

    @FalseOnNull
    public static boolean P(@Nullable e encodedImage) {
        return encodedImage != null && encodedImage.O();
    }

    private void R() {
        if (this.f28044g < 0 || this.f28045h < 0) {
            Q();
        }
    }

    private com.facebook.imageutils.d a0() throws Throwable {
        InputStream inputStreamP;
        try {
            inputStreamP = p();
            try {
                com.facebook.imageutils.d dVarD = com.facebook.imageutils.a.d(inputStreamP);
                this.f28049l = dVarD.a();
                Pair<Integer, Integer> pairB = dVarD.b();
                if (pairB != null) {
                    this.f28044g = ((Integer) pairB.first).intValue();
                    this.f28045h = ((Integer) pairB.second).intValue();
                }
                if (inputStreamP != null) {
                    try {
                        inputStreamP.close();
                    } catch (IOException unused) {
                    }
                }
                return dVarD;
            } catch (Throwable th) {
                th = th;
                if (inputStreamP != null) {
                    try {
                        inputStreamP.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStreamP = null;
        }
    }

    @Nullable
    public static e c(@Nullable e encodedImage) {
        if (encodedImage != null) {
            return encodedImage.b();
        }
        return null;
    }

    @Nullable
    private Pair<Integer, Integer> c0() {
        Pair<Integer, Integer> pairG = com.facebook.imageutils.h.g(p());
        if (pairG != null) {
            this.f28044g = ((Integer) pairG.first).intValue();
            this.f28045h = ((Integer) pairG.second).intValue();
        }
        return pairG;
    }

    public static void d(@Nullable e encodedImage) {
        if (encodedImage != null) {
            encodedImage.close();
        }
    }

    public static void l0(boolean useCachedMetadata) {
        f28038s = useCachedMetadata;
    }

    public int I() {
        R();
        return this.f28044g;
    }

    protected boolean J() {
        return this.f28050m;
    }

    public boolean L(int length) {
        com.facebook.imageformat.c cVar = this.f28041d;
        if ((cVar != com.facebook.imageformat.b.f27532a && cVar != com.facebook.imageformat.b.f27543l) || this.f28040c != null) {
            return true;
        }
        com.facebook.common.internal.i.i(this.f28039b);
        PooledByteBuffer pooledByteBufferJ = this.f28039b.j();
        return pooledByteBufferJ.D(length + (-2)) == -1 && pooledByteBufferJ.D(length - 1) == -39;
    }

    public synchronized boolean O() {
        return CloseableReference.p(this.f28039b) || this.f28040c != null;
    }

    public void Q() {
        if (!f28038s) {
            K();
        } else {
            if (this.f28050m) {
                return;
            }
            K();
            this.f28050m = true;
        }
    }

    @Nullable
    public e b() {
        e eVar;
        l<FileInputStream> lVar = this.f28040c;
        if (lVar != null) {
            eVar = new e(lVar, this.f28047j);
        } else {
            CloseableReference closeableReferenceF = CloseableReference.f(this.f28039b);
            if (closeableReferenceF == null) {
                eVar = null;
            } else {
                try {
                    eVar = new e((CloseableReference<PooledByteBuffer>) closeableReferenceF);
                } catch (Throwable th) {
                    CloseableReference.h(closeableReferenceF);
                    throw th;
                }
            }
            CloseableReference.h(closeableReferenceF);
        }
        if (eVar != null) {
            eVar.e(this);
        }
        return eVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CloseableReference.h(this.f28039b);
    }

    public void d0(@Nullable com.facebook.imagepipeline.common.a bytesRange) {
        this.f28048k = bytesRange;
    }

    public void e(e encodedImage) {
        this.f28041d = encodedImage.o();
        this.f28044g = encodedImage.I();
        this.f28045h = encodedImage.l();
        this.f28042e = encodedImage.s();
        this.f28043f = encodedImage.j();
        this.f28046i = encodedImage.v();
        this.f28047j = encodedImage.y();
        this.f28048k = encodedImage.g();
        this.f28049l = encodedImage.h();
        this.f28050m = encodedImage.J();
    }

    public void e0(int exifOrientation) {
        this.f28043f = exifOrientation;
    }

    public CloseableReference<PooledByteBuffer> f() {
        return CloseableReference.f(this.f28039b);
    }

    public void f0(int height) {
        this.f28045h = height;
    }

    @Nullable
    public com.facebook.imagepipeline.common.a g() {
        return this.f28048k;
    }

    public void g0(com.facebook.imageformat.c imageFormat) {
        this.f28041d = imageFormat;
    }

    @Nullable
    public ColorSpace h() {
        R();
        return this.f28049l;
    }

    public void i0(int rotationAngle) {
        this.f28042e = rotationAngle;
    }

    public int j() {
        R();
        return this.f28043f;
    }

    public void j0(int sampleSize) {
        this.f28046i = sampleSize;
    }

    public String k(int length) {
        CloseableReference<PooledByteBuffer> closeableReferenceF = f();
        if (closeableReferenceF == null) {
            return "";
        }
        int iMin = Math.min(y(), length);
        byte[] bArr = new byte[iMin];
        try {
            PooledByteBuffer pooledByteBufferJ = closeableReferenceF.j();
            if (pooledByteBufferJ == null) {
                closeableReferenceF.close();
                return "";
            }
            pooledByteBufferJ.B(0, bArr, 0, iMin);
            closeableReferenceF.close();
            StringBuilder sb2 = new StringBuilder(iMin * 2);
            for (int i10 = 0; i10 < iMin; i10++) {
                sb2.append(String.format("%02X", Byte.valueOf(bArr[i10])));
            }
            return sb2.toString();
        } catch (Throwable th) {
            closeableReferenceF.close();
            throw th;
        }
    }

    public void k0(int streamSize) {
        this.f28047j = streamSize;
    }

    public int l() {
        R();
        return this.f28045h;
    }

    public void m0(int width) {
        this.f28044g = width;
    }

    public com.facebook.imageformat.c o() {
        R();
        return this.f28041d;
    }

    @Nullable
    public InputStream p() {
        l<FileInputStream> lVar = this.f28040c;
        if (lVar != null) {
            return lVar.get();
        }
        CloseableReference closeableReferenceF = CloseableReference.f(this.f28039b);
        if (closeableReferenceF == null) {
            return null;
        }
        try {
            return new com.facebook.common.memory.h((PooledByteBuffer) closeableReferenceF.j());
        } finally {
            CloseableReference.h(closeableReferenceF);
        }
    }

    public InputStream q() {
        return (InputStream) com.facebook.common.internal.i.i(p());
    }

    public int s() {
        R();
        return this.f28042e;
    }

    public int v() {
        return this.f28046i;
    }

    public int y() {
        CloseableReference<PooledByteBuffer> closeableReference = this.f28039b;
        return (closeableReference == null || closeableReference.j() == null) ? this.f28047j : this.f28039b.j().size();
    }

    @Nullable
    @VisibleForTesting
    public synchronized SharedReference<PooledByteBuffer> z() {
        CloseableReference<PooledByteBuffer> closeableReference;
        closeableReference = this.f28039b;
        return closeableReference != null ? closeableReference.k() : null;
    }

    public e(l<FileInputStream> inputStreamSupplier) {
        this.f28041d = com.facebook.imageformat.c.f27545c;
        this.f28042e = -1;
        this.f28043f = 0;
        this.f28044g = -1;
        this.f28045h = -1;
        this.f28046i = 1;
        this.f28047j = -1;
        com.facebook.common.internal.i.i(inputStreamSupplier);
        this.f28039b = null;
        this.f28040c = inputStreamSupplier;
    }

    public e(l<FileInputStream> inputStreamSupplier, int streamSize) {
        this(inputStreamSupplier);
        this.f28047j = streamSize;
    }
}
