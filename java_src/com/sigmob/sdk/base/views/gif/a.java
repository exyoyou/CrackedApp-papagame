package com.sigmob.sdk.base.views.gif;

import android.graphics.Bitmap;
import com.czhj.sdk.logger.SigmobLog;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f80021a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final int f80022b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final int f80023c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final int f80024d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int f80025e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f80026f = "a";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f80027g = 4096;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f80028h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f80029i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f80030j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f80031k = 3;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f80032l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f80033m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f80034n = 4;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f80035o = 16384;
    private d A;
    private final int[] B;
    private byte[] C;
    private short[] D;
    private Bitmap E;
    private ByteBuffer F;
    private int G;
    private boolean H;
    private int I;
    private byte[] J;
    private byte[] K;
    private int L;
    private int M;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int[] f80036p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final InterfaceC1023a f80037q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private byte[] f80038r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f80039s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f80040t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f80041u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private c f80042v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f80043w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f80044x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private byte[] f80045y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int[] f80046z;

    /* JADX INFO: renamed from: com.sigmob.sdk.base.views.gif.a$a, reason: collision with other inner class name */
    interface InterfaceC1023a {
        Bitmap a(int width, int height, Bitmap.Config config);

        void a(Bitmap bitmap);

        void a(byte[] bytes);

        void a(int[] array);

        byte[] a(int size);

        int[] b(int size);
    }

    a() {
        this(new f());
    }

    private d p() {
        if (this.A == null) {
            this.A = new d();
        }
        return this.A;
    }

    private Bitmap q() {
        Bitmap bitmapA = this.f80037q.a(this.f80040t, this.f80039s, this.f80043w ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        a(bitmapA);
        return bitmapA;
    }

    private int r() {
        int iS = s();
        if (iS > 0) {
            try {
                if (this.f80038r == null) {
                    this.f80038r = this.f80037q.a(255);
                }
                int i10 = this.M;
                int i11 = this.L;
                int i12 = i10 - i11;
                if (i12 >= iS) {
                    System.arraycopy(this.K, i11, this.f80038r, 0, iS);
                    this.L += iS;
                } else if (this.F.remaining() + i12 >= iS) {
                    System.arraycopy(this.K, this.L, this.f80038r, 0, i12);
                    this.L = this.M;
                    t();
                    int i13 = iS - i12;
                    System.arraycopy(this.K, 0, this.f80038r, i12, i13);
                    this.L += i13;
                } else {
                    this.I = 1;
                }
            } catch (Exception e10) {
                SigmobLog.d("Error Reading Block", e10);
                this.I = 1;
            }
        }
        return iS;
    }

    private int s() {
        try {
            t();
            byte[] bArr = this.K;
            int i10 = this.L;
            this.L = i10 + 1;
            return bArr[i10] & 255;
        } catch (Exception unused) {
            this.I = 1;
            return 0;
        }
    }

    private void t() {
        if (this.M > this.L) {
            return;
        }
        if (this.K == null) {
            this.K = this.f80037q.a(16384);
        }
        this.L = 0;
        int iMin = Math.min(this.F.remaining(), 16384);
        this.M = iMin;
        this.F.get(this.K, 0, iMin);
    }

    int a(int n10) {
        if (n10 >= 0) {
            c cVar = this.f80042v;
            if (n10 < cVar.f80061d) {
                return cVar.f80062e.get(n10).f80048b;
            }
        }
        return -1;
    }

    void b() {
        this.f80042v = null;
        byte[] bArr = this.f80045y;
        if (bArr != null) {
            this.f80037q.a(bArr);
        }
        int[] iArr = this.f80046z;
        if (iArr != null) {
            this.f80037q.a(iArr);
        }
        Bitmap bitmap = this.E;
        if (bitmap != null) {
            this.f80037q.a(bitmap);
        }
        this.E = null;
        this.F = null;
        this.f80043w = false;
        byte[] bArr2 = this.f80038r;
        if (bArr2 != null) {
            this.f80037q.a(bArr2);
        }
        byte[] bArr3 = this.K;
        if (bArr3 != null) {
            this.f80037q.a(bArr3);
        }
    }

    int c() {
        return this.F.limit() + this.f80045y.length + (this.f80046z.length * 4);
    }

    int d() {
        return this.f80041u;
    }

    ByteBuffer e() {
        return this.F;
    }

    int f() {
        return this.f80042v.f80061d;
    }

    int g() {
        return this.f80042v.f80066i;
    }

    int h() {
        return this.f80042v.f80067j;
    }

    int i() {
        return this.f80044x;
    }

    int j() {
        int i10;
        if (this.f80042v.f80061d <= 0 || (i10 = this.f80041u) < 0) {
            return 0;
        }
        return a(i10);
    }

    synchronized Bitmap k() {
        if (this.f80042v.f80061d <= 0 || this.f80041u < 0) {
            SigmobLog.d("unable to decode frame, frameCount=" + this.f80042v.f80061d + " framePointer=" + this.f80041u);
            this.I = 1;
        }
        int i10 = this.I;
        if (i10 != 1 && i10 != 2) {
            this.I = 0;
            b bVar = this.f80042v.f80062e.get(this.f80041u);
            int i11 = this.f80041u - 1;
            b bVar2 = i11 >= 0 ? this.f80042v.f80062e.get(i11) : null;
            int[] iArr = bVar.f80055i;
            if (iArr == null) {
                iArr = this.f80042v.f80063f;
            }
            this.f80036p = iArr;
            if (iArr == null) {
                SigmobLog.d("No Valid Color Table for frame #" + this.f80041u);
                this.I = 1;
                return null;
            }
            if (bVar.f80057k) {
                System.arraycopy(iArr, 0, this.B, 0, iArr.length);
                int[] iArr2 = this.B;
                this.f80036p = iArr2;
                iArr2[bVar.f80056j] = 0;
            }
            return a(bVar, bVar2);
        }
        SigmobLog.d("Unable to decode frame, status=" + this.I);
        return null;
    }

    int l() {
        return this.I;
    }

    int m() {
        return this.f80042v.f80070m;
    }

    void n() {
        this.f80041u = -1;
    }

    void o() {
        this.f80044x = 0;
    }

    a(InterfaceC1023a provider) {
        this.B = new int[256];
        this.L = 0;
        this.M = 0;
        this.f80037q = provider;
        this.f80042v = new c();
    }

    private int a(int positionInMainPixels, int maxPositionInMainPixels, int currentFrameIw) {
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = positionInMainPixels; i15 < this.G + positionInMainPixels; i15++) {
            byte[] bArr = this.f80045y;
            if (i15 >= bArr.length || i15 >= maxPositionInMainPixels) {
                break;
            }
            int i16 = this.f80036p[bArr[i15] & 255];
            if (i16 != 0) {
                i10 += (i16 >> 24) & 255;
                i11 += (i16 >> 16) & 255;
                i12 += (i16 >> 8) & 255;
                i13 += i16 & 255;
                i14++;
            }
        }
        int i17 = positionInMainPixels + currentFrameIw;
        for (int i18 = i17; i18 < this.G + i17; i18++) {
            byte[] bArr2 = this.f80045y;
            if (i18 >= bArr2.length || i18 >= maxPositionInMainPixels) {
                break;
            }
            int i19 = this.f80036p[bArr2[i18] & 255];
            if (i19 != 0) {
                i10 += (i19 >> 24) & 255;
                i11 += (i19 >> 16) & 255;
                i12 += (i19 >> 8) & 255;
                i13 += i19 & 255;
                i14++;
            }
        }
        if (i14 == 0) {
            return 0;
        }
        return ((i10 / i14) << 24) | ((i11 / i14) << 16) | ((i12 / i14) << 8) | (i13 / i14);
    }

    boolean b(int frame) {
        if (frame < -1 || frame >= f()) {
            return false;
        }
        this.f80041u = frame;
        return true;
    }

    a(InterfaceC1023a provider, c gifHeader, ByteBuffer rawData) {
        this(provider, gifHeader, rawData, 1);
    }

    int a(InputStream is, int contentLength) {
        if (is != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(contentLength > 0 ? contentLength + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int i10 = is.read(bArr, 0, 16384);
                    if (i10 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i10);
                }
                byteArrayOutputStream.flush();
                a(byteArrayOutputStream.toByteArray());
            } catch (IOException e10) {
                SigmobLog.d("Error reading data from stream", e10);
            }
        } else {
            this.I = 2;
        }
        if (is != null) {
            try {
                is.close();
            } catch (IOException e11) {
                SigmobLog.d("Error closing stream", e11);
            }
        }
        return this.I;
    }

    a(InterfaceC1023a provider, c gifHeader, ByteBuffer rawData, int sampleSize) {
        this(provider);
        a(gifHeader, rawData, sampleSize);
    }

    synchronized int a(byte[] data) {
        c cVarC = p().a(data).c();
        this.f80042v = cVarC;
        if (data != null) {
            a(cVarC, data);
        }
        return this.I;
    }

    private Bitmap a(b currentFrame, b previousFrame) {
        int i10;
        int i11;
        int i12;
        int i13;
        int[] iArr = this.f80046z;
        int i14 = 0;
        if (previousFrame == null) {
            Arrays.fill(iArr, 0);
        }
        int i15 = 3;
        int i16 = 2;
        if (previousFrame != null && (i12 = previousFrame.f80049c) > 0) {
            if (i12 == 2) {
                if (!currentFrame.f80057k) {
                    c cVar = this.f80042v;
                    i13 = cVar.f80058a;
                    if (currentFrame.f80055i != null && cVar.f80059b == currentFrame.f80056j) {
                    }
                    a(iArr, previousFrame, i13);
                } else if (this.f80041u == 0) {
                    this.f80043w = true;
                }
                i13 = 0;
                a(iArr, previousFrame, i13);
            } else if (i12 == 3) {
                Bitmap bitmap = this.E;
                if (bitmap == null) {
                    a(iArr, previousFrame, 0);
                } else {
                    int i17 = previousFrame.f80054h;
                    int i18 = this.G;
                    int i19 = i17 / i18;
                    int i20 = previousFrame.f80052f / i18;
                    int i21 = previousFrame.f80053g / i18;
                    int i22 = previousFrame.f80051e / i18;
                    int i23 = this.f80040t;
                    bitmap.getPixels(iArr, (i20 * i23) + i22, i23, i22, i20, i21, i19);
                }
            }
        }
        a(currentFrame);
        int i24 = currentFrame.f80054h;
        int i25 = this.G;
        int i26 = i24 / i25;
        int i27 = currentFrame.f80052f / i25;
        int i28 = currentFrame.f80053g / i25;
        int i29 = currentFrame.f80051e / i25;
        boolean z10 = this.f80041u == 0;
        int i30 = 8;
        int i31 = 0;
        int i32 = 1;
        while (i14 < i26) {
            if (currentFrame.f80050d) {
                if (i31 >= i26) {
                    i32++;
                    if (i32 == i16) {
                        i31 = 4;
                    } else if (i32 == i15) {
                        i30 = 4;
                        i31 = 2;
                    } else if (i32 == 4) {
                        i30 = 2;
                        i31 = 1;
                    }
                }
                i11 = i31 + i30;
            } else {
                i11 = i31;
                i31 = i14;
            }
            int i33 = i31 + i27;
            if (i33 < this.f80039s) {
                int i34 = this.f80040t;
                int i35 = i33 * i34;
                int i36 = i35 + i29;
                int i37 = i36 + i28;
                if (i35 + i34 < i37) {
                    i37 = i35 + i34;
                }
                int i38 = this.G;
                int i39 = i14 * i38 * currentFrame.f80053g;
                int i40 = ((i37 - i36) * i38) + i39;
                int i41 = i36;
                while (i41 < i37) {
                    int i42 = i26;
                    int i43 = i27;
                    int iA = this.G == 1 ? this.f80036p[this.f80045y[i39] & 255] : a(i39, i40, currentFrame.f80053g);
                    if (iA != 0) {
                        iArr[i41] = iA;
                    } else if (!this.f80043w && z10) {
                        this.f80043w = true;
                    }
                    i39 += this.G;
                    i41++;
                    i26 = i42;
                    i27 = i43;
                }
            }
            i14++;
            i26 = i26;
            i31 = i11;
            i27 = i27;
            i15 = 3;
            i16 = 2;
        }
        if (this.H && ((i10 = currentFrame.f80049c) == 0 || i10 == 1)) {
            if (this.E == null) {
                this.E = q();
            }
            Bitmap bitmap2 = this.E;
            int i44 = this.f80040t;
            bitmap2.setPixels(iArr, 0, i44, 0, 0, i44, this.f80039s);
        }
        Bitmap bitmapQ = q();
        int i45 = this.f80040t;
        bitmapQ.setPixels(iArr, 0, i45, 0, 0, i45, this.f80039s);
        return bitmapQ;
    }

    private static void a(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0139 A[PHI: r4
      0x0139: PHI (r4v12 int) = (r4v7 int), (r4v14 int) binds: [B:51:0x0121, B:53:0x012e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v27, types: [short] */
    /* JADX WARN: Type inference failed for: r1v29 */
    private void a(b frame) {
        int i10;
        int i11;
        short s10;
        this.M = 0;
        this.L = 0;
        if (frame != null) {
            this.F.position(frame.f80047a);
        }
        if (frame == null) {
            c cVar = this.f80042v;
            i10 = cVar.f80070m;
            i11 = cVar.f80066i;
        } else {
            i10 = frame.f80053g;
            i11 = frame.f80054h;
        }
        int i12 = i10 * i11;
        byte[] bArr = this.f80045y;
        if (bArr == null || bArr.length < i12) {
            this.f80045y = this.f80037q.a(i12);
        }
        if (this.D == null) {
            this.D = new short[4096];
        }
        if (this.J == null) {
            this.J = new byte[4096];
        }
        if (this.C == null) {
            this.C = new byte[4097];
        }
        int iS = s();
        int i13 = 1;
        int i14 = 1 << iS;
        int i15 = i14 + 1;
        int i16 = i14 + 2;
        int i17 = iS + 1;
        int i18 = (1 << i17) - 1;
        for (int i19 = 0; i19 < i14; i19++) {
            this.D[i19] = 0;
            this.J[i19] = (byte) i19;
        }
        int i20 = -1;
        int i21 = i17;
        int i22 = i16;
        int i23 = i18;
        int i24 = 0;
        int iR = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        int i28 = 0;
        int i29 = -1;
        int i30 = 0;
        int i31 = 0;
        while (i24 < i12) {
            int i32 = 3;
            if (iR == 0) {
                iR = r();
                if (iR <= 0) {
                    this.I = 3;
                    break;
                }
                i25 = 0;
            }
            i27 += (this.f80038r[i25] & 255) << i26;
            i26 += 8;
            i25 += i13;
            iR += i20;
            i22 = i22;
            i21 = i21;
            int i33 = i29;
            int i34 = i30;
            while (true) {
                if (i26 < i21) {
                    i29 = i33;
                    i30 = i34;
                    i15 = i15;
                    i13 = 1;
                    break;
                }
                int i35 = i27 & i23;
                i27 >>= i21;
                i26 -= i21;
                if (i35 != i14) {
                    if (i35 > i22) {
                        this.I = i32;
                    } else if (i35 != i15) {
                        int i36 = i17;
                        int i37 = i33;
                        if (i37 == -1) {
                            this.C[i31] = this.J[i35];
                            i33 = i35;
                            i34 = i33;
                            i17 = i36;
                            i31++;
                            i32 = 3;
                            i20 = -1;
                        } else {
                            if (i35 >= i22) {
                                this.C[i31] = (byte) i34;
                                s10 = i37;
                                i31++;
                            } else {
                                s10 = i35;
                            }
                            while (s10 >= i14) {
                                this.C[i31] = this.J[s10];
                                s10 = this.D[s10];
                                i31++;
                                i14 = i14;
                            }
                            int i38 = i14;
                            byte[] bArr2 = this.J;
                            int i39 = bArr2[s10] & 255;
                            int i40 = i31 + 1;
                            int i41 = i16;
                            byte b10 = (byte) i39;
                            this.C[i31] = b10;
                            if (i22 < 4096) {
                                this.D[i22] = (short) i37;
                                bArr2[i22] = b10;
                                i22++;
                                if ((i22 & i23) == 0) {
                                    if (i22 < 4096) {
                                        i21++;
                                        i23 += i22;
                                    }
                                }
                            }
                            i31 = i40;
                            while (i31 > 0) {
                                i31--;
                                this.f80045y[i28] = this.C[i31];
                                i24++;
                                i28++;
                            }
                            i33 = i35;
                            i14 = i38;
                            i15 = i15;
                            i16 = i41;
                            i32 = 3;
                            i20 = -1;
                            i34 = i39;
                            i17 = i36;
                        }
                    }
                    i29 = i33;
                    i30 = i34;
                    i13 = 1;
                    i20 = -1;
                    break;
                }
                i21 = i17;
                i22 = i16;
                i23 = i18;
                i20 = -1;
                i33 = -1;
            }
        }
        for (int i42 = i28; i42 < i12; i42++) {
            this.f80045y[i42] = 0;
        }
    }

    synchronized void a(c header, ByteBuffer buffer) {
        a(header, buffer, 1);
    }

    synchronized void a(c header, ByteBuffer buffer, int sampleSize) {
        try {
            if (sampleSize <= 0) {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + sampleSize);
            }
            int iHighestOneBit = Integer.highestOneBit(sampleSize);
            this.I = 0;
            this.f80042v = header;
            this.f80043w = false;
            this.f80041u = -1;
            o();
            ByteBuffer byteBufferAsReadOnlyBuffer = buffer.asReadOnlyBuffer();
            this.F = byteBufferAsReadOnlyBuffer;
            byteBufferAsReadOnlyBuffer.position(0);
            this.F.order(ByteOrder.LITTLE_ENDIAN);
            this.H = false;
            Iterator<b> it2 = header.f80062e.iterator();
            while (it2.hasNext()) {
                if (it2.next().f80049c == 3) {
                    this.H = true;
                    break;
                }
            }
            this.G = iHighestOneBit;
            int i10 = header.f80070m;
            this.f80040t = i10 / iHighestOneBit;
            int i11 = header.f80066i;
            this.f80039s = i11 / iHighestOneBit;
            this.f80045y = this.f80037q.a(i10 * i11);
            this.f80046z = this.f80037q.b(this.f80040t * this.f80039s);
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized void a(c header, byte[] data) {
        a(header, ByteBuffer.wrap(data));
    }

    private void a(int[] dest, b frame, int bgColor) {
        int i10 = frame.f80054h;
        int i11 = this.G;
        int i12 = i10 / i11;
        int i13 = frame.f80052f / i11;
        int i14 = frame.f80053g / i11;
        int i15 = frame.f80051e / i11;
        int i16 = this.f80040t;
        int i17 = (i13 * i16) + i15;
        int i18 = (i12 * i16) + i17;
        while (i17 < i18) {
            int i19 = i17 + i14;
            for (int i20 = i17; i20 < i19; i20++) {
                dest[i20] = bgColor;
            }
            i17 += this.f80040t;
        }
    }

    boolean a() {
        if (this.f80042v.f80061d <= 0) {
            return false;
        }
        if (this.f80041u == f() - 1) {
            this.f80044x++;
        }
        c cVar = this.f80042v;
        int i10 = cVar.f80067j;
        if (i10 != -1 && this.f80044x > i10) {
            return false;
        }
        this.f80041u = (this.f80041u + 1) % cVar.f80061d;
        return true;
    }
}
