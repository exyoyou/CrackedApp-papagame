package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class h implements com.googlecode.mp4parser.authoring.h {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Logger f33101f = Logger.getLogger(h.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h f33102b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    List<com.coremedia.iso.boxes.i.a> f33103c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long[] f33104d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f33105e;

    public h(com.googlecode.mp4parser.authoring.h hVar, long j10, long[] jArr) {
        this.f33102b = hVar;
        this.f33105e = j10;
        double dI = j10 / hVar.H().i();
        this.f33103c = a(hVar.E(), dI);
        this.f33104d = b(hVar.Z(), dI, jArr, c(hVar, jArr, j10));
    }

    static List<com.coremedia.iso.boxes.i.a> a(List<com.coremedia.iso.boxes.i.a> list, double d10) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (com.coremedia.iso.boxes.i.a aVar : list) {
            arrayList.add(new com.coremedia.iso.boxes.i.a(aVar.a(), (int) Math.round(((double) aVar.b()) * d10)));
        }
        return arrayList;
    }

    static long[] b(long[] jArr, double d10, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[jArr.length];
        long j10 = 0;
        int i10 = 1;
        while (i10 <= jArr.length) {
            int i11 = i10 - 1;
            long jRound = Math.round(jArr[i11] * d10);
            int i12 = i10 + 1;
            int iBinarySearch = Arrays.binarySearch(jArr2, i12);
            if (iBinarySearch >= 0) {
                long j11 = jArr3[iBinarySearch];
                if (j11 != j10) {
                    long j12 = j11 - (j10 + jRound);
                    f33101f.finest(String.format("Sample %d %d / %d - correct by %d", Integer.valueOf(i10), Long.valueOf(j10), Long.valueOf(jArr3[iBinarySearch]), Long.valueOf(j12)));
                    jRound += j12;
                }
            }
            j10 += jRound;
            jArr4[i11] = jRound;
            i10 = i12;
        }
        return jArr4;
    }

    private static long[] c(com.googlecode.mp4parser.authoring.h hVar, long[] jArr, long j10) {
        long[] jArr2 = new long[jArr.length];
        long j11 = 0;
        int i10 = 0;
        int i11 = 1;
        while (true) {
            long j12 = i11;
            if (j12 > jArr[jArr.length - 1]) {
                return jArr2;
            }
            if (j12 == jArr[i10]) {
                jArr2[i10] = (j11 * j10) / hVar.H().i();
                i10++;
            }
            j11 += hVar.Z()[i11 - 1];
            i11++;
        }
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        return this.f33103c;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f33102b.F();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> G() {
        return this.f33102b.G();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        com.googlecode.mp4parser.authoring.i iVar = (com.googlecode.mp4parser.authoring.i) this.f33102b.H().clone();
        iVar.t(this.f33105e);
        return iVar;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] N() {
        return this.f33102b.N();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public a1 S() {
        return this.f33102b.S();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        return this.f33102b.U();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.c> X() {
        return this.f33102b.X();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] Z() {
        return this.f33104d;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33102b.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long getDuration() {
        long j10 = 0;
        for (long j11 : this.f33104d) {
            j10 += j11;
        }
        return j10;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f33102b.getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getName() {
        return "timeScale(" + this.f33102b.getName() + ")";
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<r0.a> h0() {
        return this.f33102b.h0();
    }

    public String toString() {
        return "ChangeTimeScaleTrack{source=" + this.f33102b + '}';
    }
}
