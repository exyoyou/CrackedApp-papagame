package ms.bz.bd.c.Pgl;

import android.text.TextUtils;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes.dex */
public final class pblc {

    public static class pblb extends Exception {
        public pblb(String str) {
            super(str);
        }
    }

    static final class pgla<A, B> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final A f94413c;
        private final B tt;

        /* JADX WARN: Multi-variable type inference failed */
        private pgla(ByteBuffer byteBuffer, Long l10) {
            this.f94413c = byteBuffer;
            this.tt = l10;
        }

        public final A c() {
            return this.f94413c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || pgla.class != obj.getClass()) {
                return false;
            }
            pgla pglaVar = (pgla) obj;
            A a10 = this.f94413c;
            if (a10 == null) {
                if (pglaVar.f94413c != null) {
                    return false;
                }
            } else if (!a10.equals(pglaVar.f94413c)) {
                return false;
            }
            B b10 = this.tt;
            B b11 = pglaVar.tt;
            if (b10 == null) {
                return b11 == null;
            }
            return b10.equals(b11);
        }

        public final int hashCode() {
            A a10 = this.f94413c;
            int iHashCode = ((a10 == null ? 0 : a10.hashCode()) + 31) * 31;
            B b10 = this.tt;
            return iHashCode + (b10 != null ? b10.hashCode() : 0);
        }

        public static pgla c(ByteBuffer byteBuffer, Long l10) {
            return new pgla(byteBuffer, l10);
        }
    }

    public static HashMap c(String str) {
        RandomAccessFile randomAccessFile = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        HashMap map = new HashMap();
        try {
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(str, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "be632e", new byte[]{97}));
                try {
                    for (Map.Entry entry : c(c(randomAccessFile2.getChannel()).c()).entrySet()) {
                        if (entry != null && entry.getKey() != null && ((Integer) entry.getKey()).intValue() != 1896449818) {
                            try {
                                ByteBuffer byteBuffer = (ByteBuffer) entry.getValue();
                                byte[] bArrArray = byteBuffer.array();
                                int iArrayOffset = byteBuffer.arrayOffset();
                                map.put((Integer) entry.getKey(), new String(Arrays.copyOfRange(bArrArray, byteBuffer.position() + iArrayOffset, byteBuffer.limit() + iArrayOffset)));
                            } catch (Throwable unused) {
                            }
                        }
                    }
                    randomAccessFile2.close();
                } catch (Throwable unused2) {
                    randomAccessFile = randomAccessFile2;
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    return map;
                }
            } catch (Throwable unused3) {
            }
        } catch (Throwable unused4) {
        }
        return map;
    }

    public static pgla<ByteBuffer, Long> c(FileChannel fileChannel) throws IOException, pblb {
        long size = fileChannel.size();
        if (size < 22) {
            throw new IOException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "289a5d", new byte[]{114, 107}));
        }
        long j10 = size - 22;
        long jMin = Math.min(j10, WebSocketProtocol.PAYLOAD_SHORT_MAX);
        int i10 = 0;
        while (true) {
            long j11 = i10;
            if (j11 > jMin) {
                throw new IOException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "1d5867", new byte[]{113, com.sigmob.sdk.archives.tar.e.N}));
            }
            long j12 = j10 - j11;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            fileChannel.position(j12);
            fileChannel.read(byteBufferAllocate);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBufferAllocate.order(byteOrder);
            if (byteBufferAllocate.getInt(0) == 101010256) {
                ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(2);
                fileChannel.position(j12 + 20);
                fileChannel.read(byteBufferAllocate2);
                byteBufferAllocate2.order(byteOrder);
                short s10 = byteBufferAllocate2.getShort(0);
                if (s10 == i10) {
                    ByteBuffer byteBufferAllocate3 = ByteBuffer.allocate(4);
                    byteBufferAllocate3.order(byteOrder);
                    fileChannel.position((fileChannel.size() - ((long) s10)) - 6);
                    fileChannel.read(byteBufferAllocate3);
                    long j13 = byteBufferAllocate3.getInt(0);
                    if (j13 < 32) {
                        throw new pblb((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "9656cd", new byte[]{113}));
                    }
                    fileChannel.position(j13 - 24);
                    ByteBuffer byteBufferAllocate4 = ByteBuffer.allocate(24);
                    fileChannel.read(byteBufferAllocate4);
                    byteBufferAllocate4.order(byteOrder);
                    if (byteBufferAllocate4.getLong(8) != 2334950737559900225L || byteBufferAllocate4.getLong(16) != 3617552046287187010L) {
                        return null;
                    }
                    long j14 = byteBufferAllocate4.getLong(0);
                    if (j14 < byteBufferAllocate4.capacity() || j14 > 2147483639) {
                        return null;
                    }
                    int i11 = (int) (8 + j14);
                    long j15 = j13 - ((long) i11);
                    if (j15 < 0) {
                        return null;
                    }
                    fileChannel.position(j15);
                    ByteBuffer byteBufferAllocate5 = ByteBuffer.allocate(i11);
                    fileChannel.read(byteBufferAllocate5);
                    byteBufferAllocate5.order(byteOrder);
                    if (byteBufferAllocate5.getLong(0) == j14) {
                        return pgla.c(byteBufferAllocate5, Long.valueOf(j15));
                    }
                    return null;
                }
            }
            i10++;
        }
    }

    public static LinkedHashMap c(ByteBuffer byteBuffer) throws pblb {
        if (byteBuffer.order() == ByteOrder.LITTLE_ENDIAN) {
            int iCapacity = byteBuffer.capacity() - 24;
            if (iCapacity < 8) {
                throw new IllegalArgumentException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "b5c3c9", new byte[]{39}));
            }
            byteBuffer.capacity();
            if (iCapacity > byteBuffer.capacity()) {
                throw new IllegalArgumentException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "fd4665", new byte[]{34}));
            }
            int iLimit = byteBuffer.limit();
            int iPosition = byteBuffer.position();
            try {
                byteBuffer.position(0);
                byteBuffer.limit(iCapacity);
                byteBuffer.position(8);
                ByteBuffer byteBufferSlice = byteBuffer.slice();
                byteBufferSlice.order(byteBuffer.order());
                byteBuffer.position(0);
                byteBuffer.limit(iLimit);
                byteBuffer.position(iPosition);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                while (byteBufferSlice.hasRemaining()) {
                    if (byteBufferSlice.remaining() < 8) {
                        throw new pblb((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "7ac71d", new byte[]{112}));
                    }
                    long j10 = byteBufferSlice.getLong();
                    if (j10 < 4 || j10 > 2147483647L) {
                        throw new pblb((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "16f9e6", new byte[]{119}));
                    }
                    int i10 = (int) j10;
                    int iPosition2 = byteBufferSlice.position() + i10;
                    if (i10 > byteBufferSlice.remaining()) {
                        throw new pblb((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "530a3b", new byte[]{124}));
                    }
                    Integer numValueOf = Integer.valueOf(byteBufferSlice.getInt());
                    int i11 = i10 - 4;
                    if (i11 < 0) {
                        throw new IllegalArgumentException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d9803e", new byte[]{39}));
                    }
                    int iLimit2 = byteBufferSlice.limit();
                    int iPosition3 = byteBufferSlice.position();
                    int i12 = i11 + iPosition3;
                    if (i12 < iPosition3 || i12 > iLimit2) {
                        throw new BufferUnderflowException();
                    }
                    byteBufferSlice.limit(i12);
                    try {
                        ByteBuffer byteBufferSlice2 = byteBufferSlice.slice();
                        byteBufferSlice2.order(byteBufferSlice.order());
                        byteBufferSlice.position(i12);
                        byteBufferSlice.limit(iLimit2);
                        linkedHashMap.put(numValueOf, byteBufferSlice2);
                        byteBufferSlice.position(iPosition2);
                    } catch (Throwable th) {
                        byteBufferSlice.limit(iLimit2);
                        throw th;
                    }
                }
                return linkedHashMap;
            } catch (Throwable th2) {
                byteBuffer.position(0);
                byteBuffer.limit(iLimit);
                byteBuffer.position(iPosition);
                throw th2;
            }
        }
        throw new IllegalArgumentException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "461cd7", new byte[]{116}));
    }
}
