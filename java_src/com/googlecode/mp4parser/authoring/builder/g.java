package com.googlecode.mp4parser.authoring.builder;

import com.coremedia.iso.boxes.l0;
import com.googlecode.mp4parser.util.k;
import com.googlecode.mp4parser.util.m;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class g implements c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Logger f32854d = Logger.getLogger(g.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f32855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.googlecode.mp4parser.authoring.d f32856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.googlecode.mp4parser.authoring.h f32857c;

    public g(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar, int i10) {
        this.f32856b = dVar;
        this.f32857c = hVar;
        this.f32855a = i10;
    }

    private static long b(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar) {
        long jD = 1;
        for (com.googlecode.mp4parser.authoring.h hVar2 : dVar.g()) {
            if (hVar2.getHandler().equals(hVar.getHandler()) && hVar2.H().i() != hVar.H().i()) {
                jD = k.d(jD, hVar2.H().i());
            }
        }
        return jD;
    }

    static String d(com.googlecode.mp4parser.authoring.h hVar) {
        com.coremedia.iso.boxes.sampleentry.a aVarV = hVar.F().v();
        String type = aVarV.getType();
        return (type.equals(com.coremedia.iso.boxes.sampleentry.h.E) || type.equals(com.coremedia.iso.boxes.sampleentry.c.O) || type.equals(com.coremedia.iso.boxes.sampleentry.h.E)) ? ((l0) m.c(aVarV, "sinf/frma")).t() : type;
    }

    public static List<long[]> e(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar) {
        long[] jArrN;
        LinkedList linkedList = new LinkedList();
        for (com.googlecode.mp4parser.authoring.h hVar2 : dVar.g()) {
            if (hVar2.getHandler().equals(hVar.getHandler()) && (jArrN = hVar2.N()) != null && jArrN.length > 0) {
                linkedList.add(f(hVar2, dVar));
            }
        }
        return linkedList;
    }

    private static long[] f(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar) {
        long[] jArrN = hVar.N();
        long[] jArr = new long[jArrN.length];
        long jB = b(dVar, hVar);
        long j10 = 0;
        int i10 = 0;
        int i11 = 1;
        while (true) {
            long j11 = i11;
            if (j11 > jArrN[jArrN.length - 1]) {
                return jArr;
            }
            if (j11 == jArrN[i10]) {
                jArr[i10] = j10 * jB;
                i10++;
            }
            j10 += hVar.Z()[i11 - 1];
            i11++;
        }
    }

    @Override // com.googlecode.mp4parser.authoring.builder.c
    public long[] a(com.googlecode.mp4parser.authoring.h hVar) {
        long jO;
        if ("vide".equals(hVar.getHandler())) {
            if (hVar.N() == null || hVar.N().length <= 0) {
                throw new RuntimeException("Video Tracks need sync samples. Only tracks other than video may have no sync samples.");
            }
            List<long[]> listE = e(this.f32856b, hVar);
            return c(hVar.N(), f(hVar, this.f32856b), hVar.H().i(), (long[][]) listE.toArray(new long[listE.size()][]));
        }
        int i10 = 0;
        if (!"soun".equals(hVar.getHandler())) {
            for (com.googlecode.mp4parser.authoring.h hVar2 : this.f32856b.g()) {
                if (hVar2.N() != null && hVar2.N().length > 0) {
                    long[] jArrA = a(hVar2);
                    int size = hVar2.U().size();
                    int length = jArrA.length;
                    long[] jArr = new long[length];
                    double size2 = ((double) hVar.U().size()) / ((double) size);
                    for (int i11 = 0; i11 < length; i11++) {
                        jArr[i11] = ((long) Math.ceil((jArrA[i11] - 1) * size2)) + 1;
                    }
                    return jArr;
                }
            }
            throw new RuntimeException("There was absolutely no Track with sync samples. I can't work with that!");
        }
        if (this.f32857c == null) {
            for (com.googlecode.mp4parser.authoring.h hVar3 : this.f32856b.g()) {
                if (hVar3.N() != null && "vide".equals(hVar3.getHandler()) && hVar3.N().length > 0) {
                    this.f32857c = hVar3;
                }
            }
        }
        com.googlecode.mp4parser.authoring.h hVar4 = this.f32857c;
        if (hVar4 == null) {
            throw new RuntimeException("There was absolutely no Track with sync samples. I can't work with that!");
        }
        long[] jArrA2 = a(hVar4);
        int size3 = this.f32857c.U().size();
        int length2 = jArrA2.length;
        long[] jArr2 = new long[length2];
        Iterator<com.googlecode.mp4parser.authoring.h> it2 = this.f32856b.g().iterator();
        while (true) {
            jO = 192000;
            if (!it2.hasNext()) {
                break;
            }
            com.googlecode.mp4parser.authoring.h next = it2.next();
            if (d(hVar).equals(d(next))) {
                com.coremedia.iso.boxes.sampleentry.c cVar = (com.coremedia.iso.boxes.sampleentry.c) next.F().v();
                if (cVar.O() < 192000) {
                    jO = cVar.O();
                    double size4 = ((double) next.U().size()) / ((double) size3);
                    long j10 = next.Z()[0];
                    int i12 = 0;
                    while (i12 < length2) {
                        jArr2[i12] = (long) Math.ceil((jArrA2[i12] - 1) * size4 * j10);
                        i12++;
                        length2 = length2;
                        i10 = 0;
                    }
                    break;
                }
            }
        }
        com.coremedia.iso.boxes.sampleentry.c cVar2 = (com.coremedia.iso.boxes.sampleentry.c) hVar.F().v();
        long j11 = hVar.Z()[i10];
        double dO = cVar2.O() / jO;
        if (dO != Math.rint(dO)) {
            throw new RuntimeException("Sample rates must be a multiple of the lowest sample rate to create a correct file!");
        }
        while (i10 < length2) {
            jArr2[i10] = (long) (((jArr2[i10] * dO) / j11) + 1.0d);
            i10++;
        }
        return jArr2;
    }

    public long[] c(long[] jArr, long[] jArr2, long j10, long[]... jArr3) {
        LinkedList linkedList;
        LinkedList linkedList2 = new LinkedList();
        LinkedList linkedList3 = new LinkedList();
        for (int i10 = 0; i10 < jArr2.length; i10++) {
            boolean z10 = true;
            for (long[] jArr4 : jArr3) {
                z10 &= Arrays.binarySearch(jArr4, jArr2[i10]) >= 0;
            }
            if (z10) {
                linkedList2.add(Long.valueOf(jArr[i10]));
                linkedList3.add(Long.valueOf(jArr2[i10]));
            }
        }
        if (linkedList2.size() < ((double) jArr.length) * 0.25d) {
            String str = "" + String.format("%5d - Common:  [", Integer.valueOf(linkedList2.size()));
            Iterator it2 = linkedList2.iterator();
            while (it2.hasNext()) {
                str = String.valueOf(str) + String.format("%10d,", Long.valueOf(((Long) it2.next()).longValue()));
            }
            f32854d.warning(String.valueOf(str) + "]");
            String str2 = "" + String.format("%5d - In    :  [", Integer.valueOf(jArr.length));
            for (long j11 : jArr) {
                str2 = String.valueOf(str2) + String.format("%10d,", Long.valueOf(j11));
            }
            f32854d.warning(String.valueOf(str2) + "]");
            f32854d.warning("There are less than 25% of common sync samples in the given track.");
            throw new RuntimeException("There are less than 25% of common sync samples in the given track.");
        }
        if (linkedList2.size() < ((double) jArr.length) * 0.5d) {
            f32854d.fine("There are less than 50% of common sync samples in the given track. This is implausible but I'm ok to continue.");
        } else if (linkedList2.size() < jArr.length) {
            f32854d.finest("Common SyncSample positions vs. this tracks SyncSample positions: " + linkedList2.size() + " vs. " + jArr.length);
        }
        LinkedList linkedList4 = new LinkedList();
        if (this.f32855a > 0) {
            Iterator it3 = linkedList2.iterator();
            Iterator it4 = linkedList3.iterator();
            long j12 = -1;
            long j13 = -1;
            while (it3.hasNext() && it4.hasNext()) {
                long jLongValue = ((Long) it3.next()).longValue();
                long jLongValue2 = ((Long) it4.next()).longValue();
                if (j13 == j12 || (jLongValue2 - j13) / j10 >= this.f32855a) {
                    linkedList4.add(Long.valueOf(jLongValue));
                    j13 = jLongValue2;
                }
                j12 = -1;
            }
            linkedList = linkedList4;
        } else {
            linkedList = linkedList2;
        }
        int size = linkedList.size();
        long[] jArr5 = new long[size];
        for (int i11 = 0; i11 < size; i11++) {
            jArr5[i11] = ((Long) linkedList.get(i11)).longValue();
        }
        return jArr5;
    }
}
