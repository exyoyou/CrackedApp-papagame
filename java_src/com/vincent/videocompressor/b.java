package com.vincent.videocompressor;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaFormat;
import com.coremedia.iso.boxes.c1;
import com.coremedia.iso.boxes.d0;
import com.coremedia.iso.boxes.d1;
import com.coremedia.iso.boxes.e0;
import com.coremedia.iso.boxes.f0;
import com.coremedia.iso.boxes.f1;
import com.coremedia.iso.boxes.g1;
import com.coremedia.iso.boxes.h0;
import com.coremedia.iso.boxes.i0;
import com.coremedia.iso.boxes.j;
import com.coremedia.iso.boxes.n;
import com.coremedia.iso.boxes.o;
import com.coremedia.iso.boxes.s;
import com.coremedia.iso.boxes.t0;
import com.coremedia.iso.boxes.u0;
import com.coremedia.iso.boxes.v0;
import com.coremedia.iso.boxes.x;
import com.coremedia.iso.boxes.z0;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.util.l;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes9.dex */
@TargetApi(16)
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private C1068b f85731a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f85732b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private FileOutputStream f85733c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FileChannel f85734d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f85735e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f85736f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f85737g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private HashMap<g, long[]> f85738h = new HashMap<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ByteBuffer f85739i = null;

    /* JADX INFO: renamed from: com.vincent.videocompressor.b$b, reason: collision with other inner class name */
    private class C1068b implements com.coremedia.iso.boxes.d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private j f85740b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f85741c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f85742d;

        private C1068b() {
            this.f85741c = 1073741824L;
            this.f85742d = 0L;
        }

        private boolean c(long contentSize) {
            return contentSize + 8 < 4294967296L;
        }

        @Override // com.coremedia.iso.boxes.d
        public void a(WritableByteChannel writableByteChannel) throws IOException {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
            long size = getSize();
            if (c(size)) {
                i.i(byteBufferAllocate, size);
            } else {
                i.i(byteBufferAllocate, 1L);
            }
            byteBufferAllocate.put(com.coremedia.iso.f.t(com.coremedia.iso.boxes.mdat.a.f24987h));
            if (c(size)) {
                byteBufferAllocate.put(new byte[8]);
            } else {
                i.l(byteBufferAllocate, size);
            }
            byteBufferAllocate.rewind();
            writableByteChannel.write(byteBufferAllocate);
        }

        public long b() {
            return this.f85741c;
        }

        @Override // com.coremedia.iso.boxes.d
        public long e() {
            return this.f85742d;
        }

        @Override // com.coremedia.iso.boxes.d
        public void f(j parent) {
            this.f85740b = parent;
        }

        public void g(long contentSize) {
            this.f85741c = contentSize;
        }

        @Override // com.coremedia.iso.boxes.d
        public j getParent() {
            return this.f85740b;
        }

        @Override // com.coremedia.iso.boxes.d
        public long getSize() {
            return this.f85741c + 16;
        }

        @Override // com.coremedia.iso.boxes.d
        public String getType() {
            return com.coremedia.iso.boxes.mdat.a.f24987h;
        }

        public void h(long offset) {
            this.f85742d = offset;
        }

        @Override // com.coremedia.iso.boxes.d
        public void i(com.googlecode.mp4parser.e dataSource, ByteBuffer header, long contentSize, com.coremedia.iso.c boxParser) throws IOException {
        }
    }

    private void n() throws Exception {
        long jPosition = this.f85734d.position();
        this.f85734d.position(this.f85731a.e());
        this.f85731a.a(this.f85734d);
        this.f85734d.position(jPosition);
        this.f85731a.h(0L);
        this.f85731a.g(0L);
        this.f85733c.flush();
    }

    public static long o(long a10, long b10) {
        return b10 == 0 ? a10 : o(b10, a10 % b10);
    }

    public int a(MediaFormat mediaFormat, boolean isAudio) throws Exception {
        return this.f85732b.b(mediaFormat, isAudio);
    }

    protected s b() {
        LinkedList linkedList = new LinkedList();
        linkedList.add("isom");
        linkedList.add("3gp4");
        return new s("isom", 0L, linkedList);
    }

    public b c(c mp4Movie) throws Exception {
        this.f85732b = mp4Movie;
        FileOutputStream fileOutputStream = new FileOutputStream(mp4Movie.c());
        this.f85733c = fileOutputStream;
        this.f85734d = fileOutputStream.getChannel();
        s sVarB = b();
        sVarB.a(this.f85734d);
        long size = this.f85735e + sVarB.getSize();
        this.f85735e = size;
        this.f85736f += size;
        this.f85731a = new C1068b();
        this.f85739i = ByteBuffer.allocateDirect(4);
        return this;
    }

    protected h0 d(c movie) {
        h0 h0Var = new h0();
        i0 i0Var = new i0();
        i0Var.J(new Date());
        i0Var.N(new Date());
        i0Var.M(l.f33794j);
        long jP = p(movie);
        long j10 = 0;
        for (g gVar : movie.f()) {
            long jC = (gVar.c() * jP) / ((long) gVar.k());
            if (jC > j10) {
                j10 = jC;
            }
        }
        i0Var.L(j10);
        i0Var.V(jP);
        i0Var.O(movie.f().size() + 1);
        h0Var.m(i0Var);
        Iterator<g> it2 = movie.f().iterator();
        while (it2.hasNext()) {
            h0Var.m(l(it2.next(), movie));
        }
        return h0Var;
    }

    protected com.coremedia.iso.boxes.d e(g track) {
        u0 u0Var = new u0();
        h(track, u0Var);
        k(track, u0Var);
        i(track, u0Var);
        g(track, u0Var);
        j(track, u0Var);
        f(track, u0Var);
        return u0Var;
    }

    protected void f(g track, u0 stbl) {
        ArrayList arrayList = new ArrayList();
        long jB = -1;
        for (e eVar : track.i()) {
            long jA = eVar.a();
            if (jB != -1 && jB != jA) {
                jB = -1;
            }
            if (jB == -1) {
                arrayList.add(Long.valueOf(jA));
            }
            jB = eVar.b() + jA;
        }
        long[] jArr = new long[arrayList.size()];
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            jArr[i10] = ((Long) arrayList.get(i10)).longValue();
        }
        z0 z0Var = new z0();
        z0Var.w(jArr);
        stbl.m(z0Var);
    }

    protected void g(g track, u0 stbl) {
        v0 v0Var = new v0();
        v0Var.x(new LinkedList());
        int size = track.i().size();
        int i10 = -1;
        int i11 = 0;
        int i12 = 0;
        int i13 = 1;
        while (i11 < size) {
            e eVar = track.i().get(i11);
            i12++;
            if (i11 == size + (-1) || eVar.a() + eVar.b() != track.i().get(i11 + 1).a()) {
                if (i10 != i12) {
                    v0Var.w().add(new v0.a(i13, i12, 1L));
                    i10 = i12;
                }
                i13++;
                i12 = 0;
            }
            i11++;
        }
        stbl.m(v0Var);
    }

    protected void h(g track, u0 stbl) {
        stbl.m(track.g());
    }

    protected void i(g track, u0 stbl) {
        long[] jArrJ = track.j();
        if (jArrJ == null || jArrJ.length <= 0) {
            return;
        }
        c1 c1Var = new c1();
        c1Var.w(jArrJ);
        stbl.m(c1Var);
    }

    protected void j(g track, u0 stbl) {
        t0 t0Var = new t0();
        t0Var.A(this.f85738h.get(track));
        stbl.m(t0Var);
    }

    protected void k(g track, u0 stbl) {
        ArrayList arrayList = new ArrayList();
        Iterator<Long> it2 = track.h().iterator();
        d1.a aVar = null;
        while (it2.hasNext()) {
            long jLongValue = it2.next().longValue();
            if (aVar == null || aVar.b() != jLongValue) {
                aVar = new d1.a(1L, jLongValue);
                arrayList.add(aVar);
            } else {
                aVar.c(aVar.a() + 1);
            }
        }
        d1 d1Var = new d1();
        d1Var.x(arrayList);
        stbl.m(d1Var);
    }

    protected f1 l(g track, c movie) {
        f1 f1Var = new f1();
        g1 g1Var = new g1();
        g1Var.M(true);
        g1Var.O(true);
        g1Var.Q(true);
        if (track.o()) {
            g1Var.S(l.f33794j);
        } else {
            g1Var.S(movie.e());
        }
        g1Var.J(0);
        g1Var.K(track.b());
        g1Var.L((track.c() * p(movie)) / ((long) track.k()));
        g1Var.N(track.e());
        g1Var.W(track.n());
        g1Var.R(0);
        g1Var.T(new Date());
        g1Var.U(track.l() + 1);
        g1Var.V(track.m());
        f1Var.m(g1Var);
        d0 d0Var = new d0();
        f1Var.m(d0Var);
        e0 e0Var = new e0();
        e0Var.A(track.b());
        e0Var.B(track.c());
        e0Var.E(track.k());
        e0Var.C("eng");
        d0Var.m(e0Var);
        x xVar = new x();
        xVar.z(track.o() ? "SoundHandle" : "VideoHandle");
        xVar.y(track.d());
        d0Var.m(xVar);
        f0 f0Var = new f0();
        f0Var.m(track.f());
        n nVar = new n();
        o oVar = new o();
        nVar.m(oVar);
        com.coremedia.iso.boxes.l lVar = new com.coremedia.iso.boxes.l();
        lVar.setFlags(1);
        oVar.m(lVar);
        f0Var.m(nVar);
        f0Var.m(e(track));
        d0Var.m(f0Var);
        return f1Var;
    }

    public void m(boolean error) throws Exception {
        if (this.f85731a.b() != 0) {
            n();
        }
        for (g gVar : this.f85732b.f()) {
            ArrayList<e> arrayListI = gVar.i();
            int size = arrayListI.size();
            long[] jArr = new long[size];
            for (int i10 = 0; i10 < size; i10++) {
                jArr[i10] = arrayListI.get(i10).b();
            }
            this.f85738h.put(gVar, jArr);
        }
        d(this.f85732b).a(this.f85734d);
        this.f85733c.flush();
        this.f85734d.close();
        this.f85733c.close();
    }

    public long p(c mp4Movie) {
        long jK = !mp4Movie.f().isEmpty() ? mp4Movie.f().iterator().next().k() : 0L;
        Iterator<g> it2 = mp4Movie.f().iterator();
        while (it2.hasNext()) {
            jK = o(it2.next().k(), jK);
        }
        return jK;
    }

    public boolean q(int trackIndex, ByteBuffer byteBuf, MediaCodec.BufferInfo bufferInfo, boolean isAudio) throws Exception {
        boolean z10;
        if (this.f85737g) {
            this.f85731a.g(0L);
            this.f85731a.a(this.f85734d);
            this.f85731a.h(this.f85735e);
            this.f85735e += 16;
            this.f85736f += 16;
            this.f85737g = false;
        }
        C1068b c1068b = this.f85731a;
        c1068b.g(c1068b.b() + ((long) bufferInfo.size));
        long j10 = this.f85736f + ((long) bufferInfo.size);
        this.f85736f = j10;
        if (j10 >= 32768) {
            n();
            z10 = true;
            this.f85737g = true;
            this.f85736f -= 32768;
        } else {
            z10 = false;
        }
        this.f85732b.a(trackIndex, this.f85735e, bufferInfo);
        byteBuf.position(bufferInfo.offset + (isAudio ? 0 : 4));
        byteBuf.limit(bufferInfo.offset + bufferInfo.size);
        if (!isAudio) {
            this.f85739i.position(0);
            this.f85739i.putInt(bufferInfo.size - 4);
            this.f85739i.position(0);
            this.f85734d.write(this.f85739i);
        }
        this.f85734d.write(byteBuf);
        this.f85735e += (long) bufferInfo.size;
        if (z10) {
            this.f85733c.flush();
        }
        return z10;
    }
}
