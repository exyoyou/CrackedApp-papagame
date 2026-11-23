package com.coremedia.iso.boxes;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class t implements d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f25121f = "free";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final /* synthetic */ boolean f25122g = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ByteBuffer f25123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    List<d> f25124c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private j f25125d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f25126e;

    public t() {
        this.f25124c = new LinkedList();
        this.f25123b = ByteBuffer.wrap(new byte[0]);
    }

    @Override // com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        Iterator<d> it2 = this.f25124c.iterator();
        while (it2.hasNext()) {
            it2.next().a(writableByteChannel);
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        com.coremedia.iso.i.i(byteBufferAllocate, this.f25123b.limit() + 8);
        byteBufferAllocate.put(f25121f.getBytes());
        byteBufferAllocate.rewind();
        writableByteChannel.write(byteBufferAllocate);
        byteBufferAllocate.rewind();
        this.f25123b.rewind();
        writableByteChannel.write(this.f25123b);
        this.f25123b.rewind();
    }

    public void b(d dVar) {
        this.f25123b.position(com.googlecode.mp4parser.util.c.a(dVar.getSize()));
        this.f25123b = this.f25123b.slice();
        this.f25124c.add(dVar);
    }

    public ByteBuffer c() {
        ByteBuffer byteBuffer = this.f25123b;
        if (byteBuffer != null) {
            return (ByteBuffer) byteBuffer.duplicate().rewind();
        }
        return null;
    }

    @Override // com.coremedia.iso.boxes.d
    public long e() {
        return this.f25126e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        return c() == null ? tVar.c() == null : c().equals(tVar.c());
    }

    @Override // com.coremedia.iso.boxes.d
    public void f(j jVar) {
        this.f25125d = jVar;
    }

    public void g(ByteBuffer byteBuffer) {
        this.f25123b = byteBuffer;
    }

    @Override // com.coremedia.iso.boxes.d
    public j getParent() {
        return this.f25125d;
    }

    @Override // com.coremedia.iso.boxes.d
    public long getSize() {
        Iterator<d> it2 = this.f25124c.iterator();
        long size = 8;
        while (it2.hasNext()) {
            size += it2.next().getSize();
        }
        return size + ((long) this.f25123b.limit());
    }

    @Override // com.coremedia.iso.boxes.d
    public String getType() {
        return f25121f;
    }

    public int hashCode() {
        ByteBuffer byteBuffer = this.f25123b;
        if (byteBuffer != null) {
            return byteBuffer.hashCode();
        }
        return 0;
    }

    @Override // com.coremedia.iso.boxes.d
    public void i(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
        this.f25126e = eVar.position() - ((long) byteBuffer.remaining());
        if (j10 > 1048576) {
            this.f25123b = eVar.r(eVar.position(), j10);
            eVar.W(eVar.position() + j10);
        } else {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(j10));
            this.f25123b = byteBufferAllocate;
            eVar.read(byteBufferAllocate);
        }
    }

    public t(int i10) {
        this.f25124c = new LinkedList();
        this.f25123b = ByteBuffer.allocate(i10);
    }
}
