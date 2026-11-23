package com.googlecode.mp4parser.authoring.samples;

import com.coremedia.iso.boxes.d;
import com.coremedia.iso.boxes.f1;
import com.coremedia.iso.boxes.fragment.i;
import com.coremedia.iso.boxes.fragment.k;
import com.coremedia.iso.boxes.fragment.l;
import com.coremedia.iso.boxes.fragment.n;
import com.coremedia.iso.boxes.j;
import com.googlecode.mp4parser.authoring.f;
import com.googlecode.mp4parser.util.c;
import com.googlecode.mp4parser.util.m;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class b extends AbstractList<f> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    j f32907b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.coremedia.iso.f[] f32908c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    f1 f32909d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    i f32910e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SoftReference<f>[] f32911f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<k> f32912g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int[] f32914i;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Map<n, SoftReference<ByteBuffer>> f32913h = new HashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f32915j = -1;

    class a implements f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final /* synthetic */ long f32917b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final /* synthetic */ ByteBuffer f32918c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final /* synthetic */ int f32919d;

        a(long j10, ByteBuffer byteBuffer, int i10) {
            this.f32917b = j10;
            this.f32918c = byteBuffer;
            this.f32919d = i10;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            return (ByteBuffer) ((ByteBuffer) this.f32918c.position(this.f32919d)).slice().limit(c.a(this.f32917b));
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            writableByteChannel.write(a());
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            return this.f32917b;
        }
    }

    public b(long j10, j jVar, com.coremedia.iso.f... fVarArr) {
        this.f32909d = null;
        this.f32910e = null;
        this.f32907b = jVar;
        this.f32908c = fVarArr;
        for (f1 f1Var : m.h(jVar, "moov[0]/trak")) {
            if (f1Var.z().C() == j10) {
                this.f32909d = f1Var;
            }
        }
        if (this.f32909d == null) {
            throw new RuntimeException("This MP4 does not contain track " + j10);
        }
        for (i iVar : m.h(jVar, "moov[0]/mvex[0]/trex")) {
            if (iVar.A() == this.f32909d.z().C()) {
                this.f32910e = iVar;
            }
        }
        this.f32911f = (SoftReference[]) Array.newInstance((Class<?>) SoftReference.class, size());
        d();
    }

    private int b(k kVar) {
        List<d> listL = kVar.l();
        int iA = 0;
        for (int i10 = 0; i10 < listL.size(); i10++) {
            d dVar = listL.get(i10);
            if (dVar instanceof n) {
                iA += c.a(((n) dVar).z());
            }
        }
        return iA;
    }

    private List<k> d() {
        List<k> list = this.f32912g;
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = this.f32907b.c(com.coremedia.iso.boxes.fragment.c.class).iterator();
        while (it2.hasNext()) {
            for (k kVar : ((com.coremedia.iso.boxes.fragment.c) it2.next()).c(k.class)) {
                if (kVar.v().A() == this.f32909d.z().C()) {
                    arrayList.add(kVar);
                }
            }
        }
        com.coremedia.iso.f[] fVarArr = this.f32908c;
        if (fVarArr != null) {
            for (com.coremedia.iso.f fVar : fVarArr) {
                Iterator it3 = fVar.c(com.coremedia.iso.boxes.fragment.c.class).iterator();
                while (it3.hasNext()) {
                    for (k kVar2 : ((com.coremedia.iso.boxes.fragment.c) it3.next()).c(k.class)) {
                        if (kVar2.v().A() == this.f32909d.z().C()) {
                            arrayList.add(kVar2);
                        }
                    }
                }
            }
        }
        this.f32912g = arrayList;
        this.f32914i = new int[arrayList.size()];
        int iB = 1;
        for (int i10 = 0; i10 < this.f32912g.size(); i10++) {
            this.f32914i[i10] = iB;
            iB += b(this.f32912g.get(i10));
        }
        return arrayList;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public f get(int i10) {
        long j10;
        ByteBuffer byteBuffer;
        com.coremedia.iso.boxes.fragment.c parent;
        long jZ;
        f fVar;
        SoftReference<f> softReference = this.f32911f[i10];
        if (softReference != null && (fVar = softReference.get()) != null) {
            return fVar;
        }
        int i11 = i10 + 1;
        int length = this.f32914i.length;
        do {
            length--;
        } while (i11 - this.f32914i[length] < 0);
        k kVar = this.f32912g.get(length);
        int i12 = i11 - this.f32914i[length];
        com.coremedia.iso.boxes.fragment.c cVar = (com.coremedia.iso.boxes.fragment.c) kVar.getParent();
        int size = 0;
        for (d dVar : kVar.l()) {
            if (dVar instanceof n) {
                n nVar = (n) dVar;
                int i13 = i12 - size;
                if (nVar.w().size() >= i13) {
                    List<n.a> listW = nVar.w();
                    l lVarV = kVar.v();
                    boolean zF = nVar.F();
                    boolean zE = lVarV.E();
                    long jV = 0;
                    if (zF) {
                        j10 = 0;
                    } else {
                        if (zE) {
                            jZ = lVarV.y();
                        } else {
                            i iVar = this.f32910e;
                            if (iVar == null) {
                                throw new RuntimeException("File doesn't contain trex box but track fragments aren't fully self contained. Cannot determine sample size.");
                            }
                            jZ = iVar.z();
                        }
                        j10 = jZ;
                    }
                    SoftReference<ByteBuffer> softReference2 = this.f32913h.get(nVar);
                    ByteBuffer byteBuffer2 = softReference2 != null ? softReference2.get() : null;
                    if (byteBuffer2 == null) {
                        if (lVarV.B()) {
                            parent = cVar;
                            jV = 0 + lVarV.v();
                            parent = cVar.getParent();
                        }
                        parent = cVar;
                        if (nVar.A()) {
                            jV += (long) nVar.v();
                        }
                        Iterator<n.a> it2 = listW.iterator();
                        int iL = 0;
                        while (it2.hasNext()) {
                            iL = zF ? (int) (((long) iL) + it2.next().l()) : (int) (((long) iL) + j10);
                        }
                        try {
                            ByteBuffer byteBufferG = parent.g(jV, iL);
                            this.f32913h.put(nVar, new SoftReference<>(byteBufferG));
                            byteBuffer = byteBufferG;
                        } catch (IOException e10) {
                            throw new RuntimeException(e10);
                        }
                    } else {
                        byteBuffer = byteBuffer2;
                    }
                    int iL2 = 0;
                    for (int i14 = 0; i14 < i13; i14++) {
                        iL2 = (int) (zF ? ((long) iL2) + listW.get(i14).l() : ((long) iL2) + j10);
                    }
                    a aVar = new a(zF ? listW.get(i13).l() : j10, byteBuffer, iL2);
                    this.f32911f[i10] = new SoftReference<>(aVar);
                    return aVar;
                }
                size += nVar.w().size();
            }
        }
        throw new RuntimeException("Couldn't find sample in the traf I was looking");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        int i10 = this.f32915j;
        if (i10 != -1) {
            return i10;
        }
        Iterator it2 = this.f32907b.c(com.coremedia.iso.boxes.fragment.c.class).iterator();
        int iZ = 0;
        while (it2.hasNext()) {
            for (k kVar : ((com.coremedia.iso.boxes.fragment.c) it2.next()).c(k.class)) {
                if (kVar.v().A() == this.f32909d.z().C()) {
                    iZ = (int) (((long) iZ) + ((n) kVar.c(n.class).get(0)).z());
                }
            }
        }
        for (com.coremedia.iso.f fVar : this.f32908c) {
            Iterator it3 = fVar.c(com.coremedia.iso.boxes.fragment.c.class).iterator();
            while (it3.hasNext()) {
                for (k kVar2 : ((com.coremedia.iso.boxes.fragment.c) it3.next()).c(k.class)) {
                    if (kVar2.v().A() == this.f32909d.z().C()) {
                        iZ = (int) (((long) iZ) + ((n) kVar2.c(n.class).get(0)).z());
                    }
                }
            }
        }
        this.f32915j = iZ;
        return iZ;
    }
}
