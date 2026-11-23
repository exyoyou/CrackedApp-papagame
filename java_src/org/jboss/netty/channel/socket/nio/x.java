package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.lang.ref.SoftReference;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.DatagramChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.WritableByteChannel;
import org.jboss.netty.channel.a0;
import org.jboss.netty.channel.g0;

/* JADX INFO: loaded from: classes10.dex */
final class x implements org.jboss.netty.util.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final g f95643c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f95644d = 65536;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f95645e = 4;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f95646f = 15;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f95647a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e f95648b = new e(65536);

    static final class a implements g {
        a() {
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public boolean a() {
            return true;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long b() {
            return 0L;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long c(WritableByteChannel writableByteChannel) {
            return 0L;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long d(DatagramChannel datagramChannel, SocketAddress socketAddress) {
            return 0L;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long e() {
            return 0L;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public void release() {
        }
    }

    final class b implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final g0 f95649a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f95650b;

        b(g0 g0Var) {
            this.f95649a = g0Var;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public boolean a() {
            return this.f95650b >= this.f95649a.getCount();
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long b() {
            return this.f95649a.getCount();
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long c(WritableByteChannel writableByteChannel) throws IOException {
            long jTransferTo = this.f95649a.transferTo(writableByteChannel, this.f95650b);
            this.f95650b += jTransferTo;
            return jTransferTo;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long d(DatagramChannel datagramChannel, SocketAddress socketAddress) {
            throw new UnsupportedOperationException();
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long e() {
            return this.f95650b;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public void release() {
            g0 g0Var = this.f95649a;
            if ((g0Var instanceof a0) && ((a0) g0Var).c()) {
                this.f95649a.a();
            }
        }
    }

    static class c implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ByteBuffer[] f95652a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f95653b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f95654c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f95655d;

        c(ByteBuffer[] byteBufferArr) {
            this.f95652a = byteBufferArr;
            this.f95653b = byteBufferArr.length - 1;
            int iRemaining = 0;
            for (ByteBuffer byteBuffer : byteBufferArr) {
                iRemaining += byteBuffer.remaining();
            }
            this.f95655d = iRemaining;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public boolean a() {
            return !this.f95652a[this.f95653b].hasRemaining();
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long b() {
            return this.f95655d;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long c(WritableByteChannel writableByteChannel) throws IOException {
            if (writableByteChannel instanceof GatheringByteChannel) {
                long jWrite = ((GatheringByteChannel) writableByteChannel).write(this.f95652a);
                this.f95654c += jWrite;
                return jWrite;
            }
            int i10 = 0;
            for (ByteBuffer byteBuffer : this.f95652a) {
                if (byteBuffer.hasRemaining()) {
                    int iWrite = writableByteChannel.write(byteBuffer);
                    if (iWrite == 0) {
                        break;
                    }
                    i10 += iWrite;
                }
            }
            long j10 = i10;
            this.f95654c += j10;
            return j10;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long d(DatagramChannel datagramChannel, SocketAddress socketAddress) throws IOException {
            int i10 = 0;
            for (ByteBuffer byteBuffer : this.f95652a) {
                if (byteBuffer.hasRemaining()) {
                    int iSend = datagramChannel.send(byteBuffer, socketAddress);
                    if (iSend == 0) {
                        break;
                    }
                    i10 += iSend;
                }
            }
            long j10 = i10;
            this.f95654c += j10;
            return j10;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public long e() {
            return this.f95654c;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public void release() {
        }
    }

    final class d extends h {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final e f95656c;

        d(e eVar, ByteBuffer byteBuffer) {
            super(byteBuffer);
            this.f95656c = eVar;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.h, org.jboss.netty.channel.socket.nio.x.g
        public void release() {
            e eVar = this.f95656c;
            int i10 = eVar.f95659b - 1;
            eVar.f95659b = i10;
            if (i10 == 0) {
                eVar.f95658a.clear();
                if (eVar != x.this.f95648b) {
                    x xVar = x.this;
                    x xVar2 = x.this;
                    xVar.f95647a = xVar2.new f(eVar, xVar2.f95647a);
                }
            }
        }
    }

    private static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ByteBuffer f95658a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f95659b;

        e(int i10) {
            this.f95658a = ByteBuffer.allocateDirect(i10);
        }
    }

    private final class f extends SoftReference<e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final f f95660a;

        f(e eVar, f fVar) {
            super(eVar);
            this.f95660a = fVar;
        }
    }

    interface g {
        boolean a();

        long b();

        long c(WritableByteChannel writableByteChannel) throws IOException;

        long d(DatagramChannel datagramChannel, SocketAddress socketAddress) throws IOException;

        long e();

        void release();
    }

    static class h implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ByteBuffer f95662a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f95663b;

        h(ByteBuffer byteBuffer) {
            this.f95662a = byteBuffer;
            this.f95663b = byteBuffer.position();
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public final boolean a() {
            return !this.f95662a.hasRemaining();
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public final long b() {
            return this.f95662a.limit() - this.f95663b;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public final long c(WritableByteChannel writableByteChannel) throws IOException {
            return writableByteChannel.write(this.f95662a);
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public final long d(DatagramChannel datagramChannel, SocketAddress socketAddress) throws IOException {
            return datagramChannel.send(this.f95662a, socketAddress);
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public final long e() {
            return this.f95662a.position() - this.f95663b;
        }

        @Override // org.jboss.netty.channel.socket.nio.x.g
        public void release() {
        }
    }

    x() {
    }

    private g g(org.jboss.netty.buffer.e eVar) {
        d dVar;
        int i10 = eVar.readableBytes();
        if (i10 == 0) {
            return f95643c;
        }
        if ((eVar instanceof org.jboss.netty.buffer.i) && ((org.jboss.netty.buffer.i) eVar).k()) {
            return new c(eVar.x0());
        }
        if (eVar.isDirect()) {
            return new h(eVar.Q0());
        }
        if (eVar.readableBytes() > 65536) {
            return new h(eVar.Q0());
        }
        e eVar2 = this.f95648b;
        ByteBuffer byteBuffer = eVar2.f95658a;
        int iRemaining = byteBuffer.remaining();
        if (i10 < iRemaining) {
            int iPosition = byteBuffer.position() + i10;
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            byteBuffer.position(i(iPosition));
            byteBufferDuplicate.limit(iPosition);
            eVar2.f95659b++;
            dVar = new d(eVar2, byteBufferDuplicate);
        } else if (i10 > iRemaining) {
            e eVarJ = j();
            this.f95648b = eVarJ;
            ByteBuffer byteBuffer2 = eVarJ.f95658a;
            ByteBuffer byteBufferDuplicate2 = byteBuffer2.duplicate();
            byteBuffer2.position(i(i10));
            byteBufferDuplicate2.limit(i10);
            eVarJ.f95659b++;
            dVar = new d(eVarJ, byteBufferDuplicate2);
        } else {
            eVar2.f95659b++;
            this.f95648b = k();
            dVar = new d(eVar2, eVar2.f95658a);
        }
        ByteBuffer byteBuffer3 = dVar.f95662a;
        byteBuffer3.mark();
        eVar.v0(eVar.readerIndex(), byteBuffer3);
        byteBuffer3.reset();
        return dVar;
    }

    private g h(g0 g0Var) {
        return g0Var.getCount() == 0 ? f95643c : new b(g0Var);
    }

    private static int i(int i10) {
        int i11 = i10 >>> 4;
        if ((i10 & 15) != 0) {
            i11++;
        }
        return i11 << 4;
    }

    private e j() {
        e eVar = this.f95648b;
        if (eVar.f95659b != 0) {
            return k();
        }
        eVar.f95658a.clear();
        return eVar;
    }

    private e k() {
        f fVar = this.f95647a;
        if (fVar != null) {
            do {
                e eVar = fVar.get();
                fVar = fVar.f95660a;
                if (eVar != null) {
                    this.f95647a = fVar;
                    return eVar;
                }
            } while (fVar != null);
            this.f95647a = fVar;
        }
        return new e(65536);
    }

    @Override // org.jboss.netty.util.b
    public void a() {
        ByteBuffer byteBuffer = this.f95648b.f95658a;
        if (byteBuffer != null) {
            org.jboss.netty.util.internal.a.a(byteBuffer);
        }
    }

    g f(Object obj) {
        if (obj instanceof org.jboss.netty.buffer.e) {
            return g((org.jboss.netty.buffer.e) obj);
        }
        if (obj instanceof g0) {
            return h((g0) obj);
        }
        throw new IllegalArgumentException("unsupported message type: " + obj.getClass());
    }
}
