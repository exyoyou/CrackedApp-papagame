package com.facebook.imagepipeline.decoder;

import com.facebook.common.internal.i;
import com.facebook.common.internal.n;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class e {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f28006i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f28007j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f28008k = 2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f28009l = 3;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f28010m = 4;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f28011n = 5;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f28012o = 6;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f28013p = 16384;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f28020g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.facebook.common.memory.a f28021h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f28016c = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f28015b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f28017d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f28019f = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f28018e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f28014a = 0;

    public e(com.facebook.common.memory.a byteArrayPool) {
        this.f28021h = (com.facebook.common.memory.a) i.i(byteArrayPool);
    }

    private boolean a(final InputStream inputStream) throws Throwable {
        int i10;
        int i11 = this.f28018e;
        while (this.f28014a != 6 && (i10 = inputStream.read()) != -1) {
            try {
                int i12 = this.f28016c + 1;
                this.f28016c = i12;
                if (this.f28020g) {
                    this.f28014a = 6;
                    this.f28020g = false;
                    return false;
                }
                int i13 = this.f28014a;
                if (i13 != 0) {
                    if (i13 != 1) {
                        if (i13 != 2) {
                            if (i13 != 3) {
                                if (i13 == 4) {
                                    this.f28014a = 5;
                                } else if (i13 != 5) {
                                    i.o(false);
                                } else {
                                    int i14 = ((this.f28015b << 8) + i10) - 2;
                                    com.facebook.common.util.e.c(inputStream, i14);
                                    this.f28016c += i14;
                                    this.f28014a = 2;
                                }
                            } else if (i10 == 255) {
                                this.f28014a = 3;
                            } else if (i10 == 0) {
                                this.f28014a = 2;
                            } else if (i10 == 217) {
                                this.f28020g = true;
                                g(i12 - 2);
                                this.f28014a = 2;
                            } else {
                                if (i10 == 218) {
                                    g(i12 - 2);
                                }
                                if (b(i10)) {
                                    this.f28014a = 4;
                                } else {
                                    this.f28014a = 2;
                                }
                            }
                        } else if (i10 == 255) {
                            this.f28014a = 3;
                        }
                    } else if (i10 == 216) {
                        this.f28014a = 2;
                    } else {
                        this.f28014a = 6;
                    }
                } else if (i10 == 255) {
                    this.f28014a = 1;
                } else {
                    this.f28014a = 6;
                }
                this.f28015b = i10;
            } catch (IOException e10) {
                n.d(e10);
            }
        }
        return (this.f28014a == 6 || this.f28018e == i11) ? false : true;
    }

    private static boolean b(int markerSecondByte) {
        if (markerSecondByte == 1) {
            return false;
        }
        return ((markerSecondByte >= 208 && markerSecondByte <= 215) || markerSecondByte == 217 || markerSecondByte == 216) ? false : true;
    }

    private void g(int offset) {
        int i10 = this.f28017d;
        if (i10 > 0) {
            this.f28019f = offset;
        }
        this.f28017d = i10 + 1;
        this.f28018e = i10;
    }

    public int c() {
        return this.f28019f;
    }

    public int d() {
        return this.f28018e;
    }

    public boolean e() {
        return this.f28020g;
    }

    public boolean f() {
        return this.f28016c > 1 && this.f28014a != 6;
    }

    public boolean h(final com.facebook.imagepipeline.image.e encodedImage) {
        if (this.f28014a == 6 || encodedImage.y() <= this.f28016c) {
            return false;
        }
        com.facebook.common.memory.f fVar = new com.facebook.common.memory.f(encodedImage.q(), this.f28021h.get(16384), this.f28021h);
        try {
            com.facebook.common.util.e.c(fVar, this.f28016c);
            return a(fVar);
        } catch (IOException e10) {
            n.d(e10);
            return false;
        } finally {
            com.facebook.common.internal.c.b(fVar);
        }
    }
}
