package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ByteBuffer f33597a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f33598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f33599c;

    public c(ByteBuffer byteBuffer) {
        this.f33597a = byteBuffer;
        this.f33598b = byteBuffer.position();
    }

    public int a() {
        int i10 = 8 - (this.f33599c % 8);
        if (i10 == 8) {
            i10 = 0;
        }
        c(i10);
        return i10;
    }

    public int b() {
        return this.f33599c;
    }

    public int c(int i10) {
        int iC;
        int i11 = this.f33597a.get(this.f33598b + (this.f33599c / 8));
        if (i11 < 0) {
            i11 += 256;
        }
        int i12 = this.f33599c;
        int i13 = 8 - (i12 % 8);
        if (i10 <= i13) {
            iC = ((i11 << (i12 % 8)) & 255) >> ((i12 % 8) + (i13 - i10));
            this.f33599c = i12 + i10;
        } else {
            int i14 = i10 - i13;
            iC = (c(i13) << i14) + c(i14);
        }
        this.f33597a.position(this.f33598b + ((int) Math.ceil(((double) this.f33599c) / 8.0d)));
        return iC;
    }

    public boolean d() {
        return c(1) == 1;
    }

    public int e() {
        return (this.f33597a.limit() * 8) - this.f33599c;
    }
}
