package com.googlecode.mp4parser;

import com.coremedia.iso.boxes.k1;
import com.googlecode.mp4parser.annotations.DoNotParseDetail;
import com.googlecode.mp4parser.util.m;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a implements com.coremedia.iso.boxes.d {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static com.googlecode.mp4parser.util.j f32804m = com.googlecode.mp4parser.util.j.a(a.class);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static final /* synthetic */ boolean f32805n = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f32806b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f32807c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.coremedia.iso.boxes.j f32808d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ByteBuffer f32811g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    long f32812h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    long f32813i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    e f32815k;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    long f32814j = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ByteBuffer f32816l = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f32810f = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f32809e = true;

    protected a(String str) {
        this.f32806b = str;
    }

    private void h(ByteBuffer byteBuffer) {
        if (n()) {
            com.coremedia.iso.i.i(byteBuffer, getSize());
            byteBuffer.put(com.coremedia.iso.f.t(getType()));
        } else {
            com.coremedia.iso.i.i(byteBuffer, 1L);
            byteBuffer.put(com.coremedia.iso.f.t(getType()));
            com.coremedia.iso.i.l(byteBuffer, getSize());
        }
        if (k1.f24950p.equals(getType())) {
            byteBuffer.put(l());
        }
    }

    private boolean n() {
        int i10 = k1.f24950p.equals(getType()) ? 24 : 8;
        if (!this.f32810f) {
            return this.f32814j + ((long) i10) < 4294967296L;
        }
        if (!this.f32809e) {
            return ((long) (this.f32811g.limit() + i10)) < 4294967296L;
        }
        long jG = g();
        ByteBuffer byteBuffer = this.f32816l;
        return (jG + ((long) (byteBuffer != null ? byteBuffer.limit() : 0))) + ((long) i10) < 4294967296L;
    }

    private synchronized void p() {
        if (!this.f32810f) {
            try {
                f32804m.b("mem mapping " + getType());
                this.f32811g = this.f32815k.r(this.f32812h, this.f32814j);
                this.f32810f = true;
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    private boolean r(ByteBuffer byteBuffer) {
        long jG = g();
        ByteBuffer byteBuffer2 = this.f32816l;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(jG + ((long) (byteBuffer2 != null ? byteBuffer2.limit() : 0))));
        c(byteBufferAllocate);
        ByteBuffer byteBuffer3 = this.f32816l;
        if (byteBuffer3 != null) {
            byteBuffer3.rewind();
            while (this.f32816l.remaining() > 0) {
                byteBufferAllocate.put(this.f32816l);
            }
        }
        byteBuffer.rewind();
        byteBufferAllocate.rewind();
        if (byteBuffer.remaining() != byteBufferAllocate.remaining()) {
            System.err.print(String.valueOf(getType()) + ": remaining differs " + byteBuffer.remaining() + " vs. " + byteBufferAllocate.remaining());
            f32804m.c(String.valueOf(getType()) + ": remaining differs " + byteBuffer.remaining() + " vs. " + byteBufferAllocate.remaining());
            return false;
        }
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit() - 1;
        int iLimit2 = byteBufferAllocate.limit() - 1;
        while (iLimit >= iPosition) {
            byte b10 = byteBuffer.get(iLimit);
            byte b11 = byteBufferAllocate.get(iLimit2);
            if (b10 != b11) {
                f32804m.c(String.format("%s: buffers differ at %d: %2X/%2X", getType(), Integer.valueOf(iLimit), Byte.valueOf(b10), Byte.valueOf(b11)));
                byte[] bArr = new byte[byteBuffer.remaining()];
                byte[] bArr2 = new byte[byteBufferAllocate.remaining()];
                byteBuffer.get(bArr);
                byteBufferAllocate.get(bArr2);
                System.err.println("original      : " + com.coremedia.iso.e.c(bArr, 4));
                System.err.println("reconstructed : " + com.coremedia.iso.e.c(bArr2, 4));
                return false;
            }
            iLimit--;
            iLimit2--;
        }
        return true;
    }

    @Override // com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        if (!this.f32810f) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate((n() ? 8 : 16) + (k1.f24950p.equals(getType()) ? 16 : 0));
            h(byteBufferAllocate);
            writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
            this.f32815k.w(this.f32812h, this.f32814j, writableByteChannel);
            return;
        }
        if (!this.f32809e) {
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate((n() ? 8 : 16) + (k1.f24950p.equals(getType()) ? 16 : 0));
            h(byteBufferAllocate2);
            writableByteChannel.write((ByteBuffer) byteBufferAllocate2.rewind());
            writableByteChannel.write((ByteBuffer) this.f32811g.position(0));
            return;
        }
        ByteBuffer byteBufferAllocate3 = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(getSize()));
        h(byteBufferAllocate3);
        c(byteBufferAllocate3);
        ByteBuffer byteBuffer = this.f32816l;
        if (byteBuffer != null) {
            byteBuffer.rewind();
            while (this.f32816l.remaining() > 0) {
                byteBufferAllocate3.put(this.f32816l);
            }
        }
        writableByteChannel.write((ByteBuffer) byteBufferAllocate3.rewind());
    }

    protected abstract void b(ByteBuffer byteBuffer);

    protected abstract void c(ByteBuffer byteBuffer);

    @Override // com.coremedia.iso.boxes.d
    public long e() {
        return this.f32813i;
    }

    @Override // com.coremedia.iso.boxes.d
    @DoNotParseDetail
    public void f(com.coremedia.iso.boxes.j jVar) {
        this.f32808d = jVar;
    }

    protected abstract long g();

    @Override // com.coremedia.iso.boxes.d
    @DoNotParseDetail
    public com.coremedia.iso.boxes.j getParent() {
        return this.f32808d;
    }

    @Override // com.coremedia.iso.boxes.d
    public long getSize() {
        long jLimit;
        if (!this.f32810f) {
            jLimit = this.f32814j;
        } else if (this.f32809e) {
            jLimit = g();
        } else {
            ByteBuffer byteBuffer = this.f32811g;
            jLimit = byteBuffer != null ? byteBuffer.limit() : 0;
        }
        long j10 = jLimit + ((long) ((jLimit >= 4294967288L ? 8 : 0) + 8 + (k1.f24950p.equals(getType()) ? 16 : 0)));
        ByteBuffer byteBuffer2 = this.f32816l;
        return j10 + ((long) (byteBuffer2 != null ? byteBuffer2.limit() : 0));
    }

    @Override // com.coremedia.iso.boxes.d
    @DoNotParseDetail
    public String getType() {
        return this.f32806b;
    }

    @Override // com.coremedia.iso.boxes.d
    @DoNotParseDetail
    public void i(e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
        long jPosition = eVar.position();
        this.f32812h = jPosition;
        this.f32813i = jPosition - ((long) byteBuffer.remaining());
        this.f32814j = j10;
        this.f32815k = eVar;
        eVar.W(eVar.position() + j10);
        this.f32810f = false;
        this.f32809e = false;
    }

    @DoNotParseDetail
    public String k() {
        return m.a(this);
    }

    @DoNotParseDetail
    public byte[] l() {
        return this.f32807c;
    }

    public boolean m() {
        return this.f32809e;
    }

    public final synchronized void o() {
        p();
        f32804m.b("parsing details of " + getType());
        ByteBuffer byteBuffer = this.f32811g;
        if (byteBuffer != null) {
            this.f32809e = true;
            byteBuffer.rewind();
            b(byteBuffer);
            if (byteBuffer.remaining() > 0) {
                this.f32816l = byteBuffer.slice();
            }
            this.f32811g = null;
        }
    }

    protected void q(ByteBuffer byteBuffer) {
        this.f32816l = byteBuffer;
    }

    protected a(String str, byte[] bArr) {
        this.f32806b = str;
        this.f32807c = bArr;
    }
}
