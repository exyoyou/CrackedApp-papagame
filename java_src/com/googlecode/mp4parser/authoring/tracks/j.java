package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.d1;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes5.dex */
public class j extends com.googlecode.mp4parser.authoring.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final /* synthetic */ boolean f33145h = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h f33146e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f33147f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f33148g;

    public j(com.googlecode.mp4parser.authoring.h hVar, long j10, long j11) {
        super("crop(" + hVar.getName() + ")");
        this.f33146e = hVar;
        this.f33147f = (int) j10;
        this.f33148g = (int) j11;
    }

    static List<com.coremedia.iso.boxes.i.a> a(List<com.coremedia.iso.boxes.i.a> list, long j10, long j11) {
        com.coremedia.iso.boxes.i.a next;
        if (list == null || list.isEmpty()) {
            return null;
        }
        ListIterator<com.coremedia.iso.boxes.i.a> listIterator = list.listIterator();
        ArrayList arrayList = new ArrayList();
        long jA = 0;
        while (true) {
            next = listIterator.next();
            if (((long) next.a()) + jA > j10) {
                break;
            }
            jA += (long) next.a();
        }
        if (((long) next.a()) + jA >= j11) {
            arrayList.add(new com.coremedia.iso.boxes.i.a((int) (j11 - j10), next.b()));
            return arrayList;
        }
        arrayList.add(new com.coremedia.iso.boxes.i.a((int) ((((long) next.a()) + jA) - j10), next.b()));
        int iA = next.a();
        while (true) {
            jA += (long) iA;
            if (!listIterator.hasNext()) {
                break;
            }
            next = listIterator.next();
            if (((long) next.a()) + jA >= j11) {
                break;
            }
            arrayList.add(next);
            iA = next.a();
        }
        arrayList.add(new com.coremedia.iso.boxes.i.a((int) (j11 - jA), next.b()));
        return arrayList;
    }

    static List<d1.a> b(List<d1.a> list, long j10, long j11) {
        d1.a next;
        if (list == null || list.isEmpty()) {
            return null;
        }
        ListIterator<d1.a> listIterator = list.listIterator();
        LinkedList linkedList = new LinkedList();
        long jA = 0;
        while (true) {
            next = listIterator.next();
            if (next.a() + jA > j10) {
                break;
            }
            jA += next.a();
        }
        if (next.a() + jA >= j11) {
            linkedList.add(new d1.a(j11 - j10, next.b()));
            return linkedList;
        }
        linkedList.add(new d1.a((next.a() + jA) - j10, next.b()));
        long jA2 = next.a();
        while (true) {
            jA += jA2;
            if (!listIterator.hasNext()) {
                break;
            }
            next = listIterator.next();
            if (next.a() + jA >= j11) {
                break;
            }
            linkedList.add(next);
            jA2 = next.a();
        }
        linkedList.add(new d1.a(j11 - jA, next.b()));
        return linkedList;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        return a(this.f33146e.E(), this.f33147f, this.f33148g);
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f33146e.F();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        return this.f33146e.H();
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public synchronized long[] N() {
        if (this.f33146e.N() == null) {
            return null;
        }
        long[] jArrN = this.f33146e.N();
        int length = jArrN.length;
        int i10 = 0;
        while (i10 < jArrN.length && jArrN[i10] < this.f33147f) {
            i10++;
        }
        while (length > 0 && this.f33148g < jArrN[length - 1]) {
            length--;
        }
        long[] jArrCopyOfRange = Arrays.copyOfRange(this.f33146e.N(), i10, length);
        for (int i11 = 0; i11 < jArrCopyOfRange.length; i11++) {
            jArrCopyOfRange[i11] = jArrCopyOfRange[i11] - ((long) this.f33147f);
        }
        return jArrCopyOfRange;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 S() {
        return this.f33146e.S();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        return this.f33146e.U().subList(this.f33147f, this.f33148g);
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public synchronized long[] Z() {
        long[] jArr;
        int i10 = this.f33148g - this.f33147f;
        jArr = new long[i10];
        System.arraycopy(this.f33146e.Z(), this.f33147f, jArr, 0, i10);
        return jArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33146e.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f33146e.getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> h0() {
        if (this.f33146e.h0() == null || this.f33146e.h0().isEmpty()) {
            return null;
        }
        return this.f33146e.h0().subList(this.f33147f, this.f33148g);
    }
}
