package com.googlecode.mp4parser;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
public class d implements com.coremedia.iso.boxes.j, Iterator<com.coremedia.iso.boxes.d>, Closeable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final com.coremedia.iso.boxes.d f33746i = new a("eof ");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static com.googlecode.mp4parser.util.j f33747j = com.googlecode.mp4parser.util.j.a(d.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected com.coremedia.iso.c f33748b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected e f33749c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.coremedia.iso.boxes.d f33750d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f33751e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f33752f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    long f33753g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<com.coremedia.iso.boxes.d> f33754h = new ArrayList();

    class a extends com.googlecode.mp4parser.a {
        a(String str) {
            super(str);
        }

        @Override // com.googlecode.mp4parser.a
        protected void b(ByteBuffer byteBuffer) {
        }

        @Override // com.googlecode.mp4parser.a
        protected void c(ByteBuffer byteBuffer) {
        }

        @Override // com.googlecode.mp4parser.a
        protected long g() {
            return 0L;
        }
    }

    @Override // com.coremedia.iso.boxes.j
    public void b(List<com.coremedia.iso.boxes.d> list) {
        this.f33754h = new ArrayList(list);
        this.f33750d = f33746i;
        this.f33749c = null;
    }

    @Override // com.coremedia.iso.boxes.j
    public <T extends com.coremedia.iso.boxes.d> List<T> c(Class<T> cls) {
        List<com.coremedia.iso.boxes.d> listL = l();
        ArrayList arrayList = null;
        com.coremedia.iso.boxes.d dVar = null;
        for (int i10 = 0; i10 < listL.size(); i10++) {
            com.coremedia.iso.boxes.d dVar2 = listL.get(i10);
            if (cls.isInstance(dVar2)) {
                if (dVar == null) {
                    dVar = dVar2;
                } else {
                    if (arrayList == null) {
                        arrayList = new ArrayList(2);
                        arrayList.add(dVar);
                    }
                    arrayList.add(dVar2);
                }
            }
        }
        if (arrayList != null) {
            return arrayList;
        }
        return dVar != null ? Collections.singletonList(dVar) : Collections.emptyList();
    }

    public void close() throws IOException {
        this.f33749c.close();
    }

    @Override // com.coremedia.iso.boxes.j
    public ByteBuffer g(long j10, long j11) throws IOException {
        ByteBuffer byteBufferR;
        e eVar = this.f33749c;
        if (eVar != null) {
            synchronized (eVar) {
                byteBufferR = this.f33749c.r(this.f33752f + j10, j11);
            }
            return byteBufferR;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(j11));
        long j12 = j10 + j11;
        long j13 = 0;
        for (com.coremedia.iso.boxes.d dVar : this.f33754h) {
            long size = dVar.getSize() + j13;
            if (size > j10 && j13 < j12) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                WritableByteChannel writableByteChannelNewChannel = Channels.newChannel(byteArrayOutputStream);
                dVar.a(writableByteChannelNewChannel);
                writableByteChannelNewChannel.close();
                if (j13 >= j10 && size <= j12) {
                    byteBufferAllocate.put(byteArrayOutputStream.toByteArray());
                } else if (j13 < j10 && size > j12) {
                    long j14 = j10 - j13;
                    byteBufferAllocate.put(byteArrayOutputStream.toByteArray(), com.googlecode.mp4parser.util.c.a(j14), com.googlecode.mp4parser.util.c.a((dVar.getSize() - j14) - (size - j12)));
                } else if (j13 < j10 && size <= j12) {
                    long j15 = j10 - j13;
                    byteBufferAllocate.put(byteArrayOutputStream.toByteArray(), com.googlecode.mp4parser.util.c.a(j15), com.googlecode.mp4parser.util.c.a(dVar.getSize() - j15));
                } else if (j13 >= j10 && size > j12) {
                    byteBufferAllocate.put(byteArrayOutputStream.toByteArray(), 0, com.googlecode.mp4parser.util.c.a(dVar.getSize() - (size - j12)));
                }
            }
            j13 = size;
        }
        return (ByteBuffer) byteBufferAllocate.rewind();
    }

    @Override // com.coremedia.iso.boxes.j
    public final void h(WritableByteChannel writableByteChannel) throws IOException {
        Iterator<com.coremedia.iso.boxes.d> it2 = l().iterator();
        while (it2.hasNext()) {
            it2.next().a(writableByteChannel);
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        com.coremedia.iso.boxes.d dVar = this.f33750d;
        if (dVar == f33746i) {
            return false;
        }
        if (dVar != null) {
            return true;
        }
        try {
            this.f33750d = next();
            return true;
        } catch (NoSuchElementException unused) {
            this.f33750d = f33746i;
            return false;
        }
    }

    @Override // com.coremedia.iso.boxes.j
    public <T extends com.coremedia.iso.boxes.d> List<T> k(Class<T> cls, boolean z10) {
        ArrayList arrayList = new ArrayList(2);
        List<com.coremedia.iso.boxes.d> listL = l();
        for (int i10 = 0; i10 < listL.size(); i10++) {
            com.coremedia.iso.boxes.d dVar = listL.get(i10);
            if (cls.isInstance(dVar)) {
                arrayList.add(dVar);
            }
            if (z10 && (dVar instanceof com.coremedia.iso.boxes.j)) {
                arrayList.addAll(((com.coremedia.iso.boxes.j) dVar).k(cls, z10));
            }
        }
        return arrayList;
    }

    @Override // com.coremedia.iso.boxes.j
    public List<com.coremedia.iso.boxes.d> l() {
        return (this.f33749c == null || this.f33750d == f33746i) ? this.f33754h : new com.googlecode.mp4parser.util.i(this.f33754h, this);
    }

    public void m(com.coremedia.iso.boxes.d dVar) {
        if (dVar != null) {
            this.f33754h = new ArrayList(l());
            dVar.f(this);
            this.f33754h.add(dVar);
        }
    }

    protected long o() {
        long size = 0;
        for (int i10 = 0; i10 < l().size(); i10++) {
            size += this.f33754h.get(i10).getSize();
        }
        return size;
    }

    public void p(e eVar, long j10, com.coremedia.iso.c cVar) throws IOException {
        this.f33749c = eVar;
        long jPosition = eVar.position();
        this.f33752f = jPosition;
        this.f33751e = jPosition;
        eVar.W(eVar.position() + j10);
        this.f33753g = eVar.position();
        this.f33748b = cVar;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public com.coremedia.iso.boxes.d next() {
        com.coremedia.iso.boxes.d dVarA;
        com.coremedia.iso.boxes.d dVar = this.f33750d;
        if (dVar != null && dVar != f33746i) {
            this.f33750d = null;
            return dVar;
        }
        e eVar = this.f33749c;
        if (eVar == null || this.f33751e >= this.f33753g) {
            this.f33750d = f33746i;
            throw new NoSuchElementException();
        }
        try {
            synchronized (eVar) {
                this.f33749c.W(this.f33751e);
                dVarA = this.f33748b.a(this.f33749c, this);
                this.f33751e = this.f33749c.position();
            }
            return dVarA;
        } catch (EOFException unused) {
            throw new NoSuchElementException();
        } catch (IOException unused2) {
            throw new NoSuchElementException();
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append("[");
        for (int i10 = 0; i10 < this.f33754h.size(); i10++) {
            if (i10 > 0) {
                sb2.append(";");
            }
            sb2.append(this.f33754h.get(i10).toString());
        }
        sb2.append("]");
        return sb2.toString();
    }
}
