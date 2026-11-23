package com.googlecode.mp4parser.authoring.builder;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class h implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f32858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.googlecode.mp4parser.authoring.d f32859b;

    public h(com.googlecode.mp4parser.authoring.d dVar, int i10) {
        this.f32859b = dVar;
        this.f32858a = i10;
    }

    @Override // com.googlecode.mp4parser.authoring.builder.c
    public long[] a(com.googlecode.mp4parser.authoring.h hVar) {
        double d10 = 0.0d;
        for (com.googlecode.mp4parser.authoring.h hVar2 : this.f32859b.g()) {
            double duration = hVar2.getDuration() / hVar2.H().i();
            if (d10 < duration) {
                d10 = duration;
            }
        }
        int i10 = 1;
        int iMin = Math.min(((int) Math.ceil(d10 / ((double) this.f32858a))) - 1, hVar.U().size());
        int i11 = iMin < 1 ? 1 : iMin;
        long[] jArr = new long[i11];
        Arrays.fill(jArr, -1L);
        jArr[0] = 1;
        long[] jArrZ = hVar.Z();
        int length = jArrZ.length;
        long j10 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < length) {
            long j11 = jArrZ[i12];
            int i14 = ((int) ((j10 / hVar.H().i()) / ((long) this.f32858a))) + i10;
            if (i14 >= i11) {
                break;
            }
            i13++;
            jArr[i14] = i13;
            j10 += j11;
            i12++;
            i11 = i11;
            i10 = 1;
        }
        long j12 = i13 + i10;
        for (int i15 = i11 - 1; i15 >= 0; i15--) {
            if (jArr[i15] == -1) {
                jArr[i15] = j12;
            }
            j12 = jArr[i15];
        }
        long[] jArrCopyOf = new long[0];
        for (int i16 = 0; i16 < i11; i16++) {
            long j13 = jArr[i16];
            if (jArrCopyOf.length == 0 || jArrCopyOf[jArrCopyOf.length - i10] != j13) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, jArrCopyOf.length + i10);
                jArrCopyOf[jArrCopyOf.length - i10] = j13;
            }
        }
        return jArrCopyOf;
    }
}
