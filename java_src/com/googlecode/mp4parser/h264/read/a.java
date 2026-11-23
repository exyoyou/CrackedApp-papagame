package com.googlecode.mp4parser.h264.read;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected static int f33763f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private InputStream f33764a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f33765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f33766c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f33767d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected e5.b f33768e = new e5.b(50);

    public a(InputStream inputStream) throws IOException {
        this.f33764a = inputStream;
        this.f33765b = inputStream.read();
        this.f33766c = inputStream.read();
    }

    private void a() throws IOException {
        this.f33765b = this.f33766c;
        this.f33766c = this.f33764a.read();
        this.f33767d = 0;
    }

    public void b() throws IOException {
    }

    public long c() {
        return (f33763f * 8) + (this.f33767d % 8);
    }

    public int d() {
        return this.f33767d;
    }

    public boolean e() {
        return this.f33767d % 8 == 0;
    }

    public boolean f() throws IOException {
        if (this.f33767d == 8) {
            a();
        }
        int i10 = 1 << ((8 - this.f33767d) - 1);
        int i11 = this.f33765b;
        return (i11 == -1 || (this.f33766c == -1 && ((((i10 << 1) - 1) & i11) == i10))) ? false : true;
    }

    public int g(int i10) throws IOException {
        if (i10 > 8) {
            throw new IllegalArgumentException("N should be less then 8");
        }
        if (this.f33767d == 8) {
            a();
            if (this.f33765b == -1) {
                return -1;
            }
        }
        int i11 = this.f33767d;
        int[] iArr = new int[16 - i11];
        int i12 = 0;
        while (i11 < 8) {
            iArr[i12] = (this.f33765b >> (7 - i11)) & 1;
            i11++;
            i12++;
        }
        int i13 = 0;
        while (i13 < 8) {
            iArr[i12] = (this.f33766c >> (7 - i13)) & 1;
            i13++;
            i12++;
        }
        int i14 = 0;
        for (int i15 = 0; i15 < i10; i15++) {
            i14 = (i14 << 1) | iArr[i15];
        }
        return i14;
    }

    public int h() throws IOException {
        if (this.f33767d == 8) {
            a();
            if (this.f33765b == -1) {
                return -1;
            }
        }
        int i10 = this.f33765b;
        int i11 = this.f33767d;
        int i12 = (i10 >> (7 - i11)) & 1;
        this.f33767d = i11 + 1;
        this.f33768e.a(i12 == 0 ? '0' : '1');
        f33763f++;
        return i12;
    }

    public boolean i() throws IOException {
        return h() == 1;
    }

    public int j() throws IOException {
        if (this.f33767d > 0) {
            a();
        }
        int i10 = this.f33765b;
        a();
        return i10;
    }

    public long k(int i10) throws IOException {
        if (i10 > 64) {
            throw new IllegalArgumentException("Can not readByte more then 64 bit");
        }
        long jH = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            jH = (jH << 1) | ((long) h());
        }
        return jH;
    }

    public long l() throws IOException {
        return k(8 - this.f33767d);
    }
}
