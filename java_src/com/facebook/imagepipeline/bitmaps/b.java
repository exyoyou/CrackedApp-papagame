package com.facebook.imagepipeline.bitmaps;

import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.memory.i;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.http2.Http2CodecUtil;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import io.netty.handler.codec.memcache.binary.DefaultBinaryMemcacheResponse;
import java.io.IOException;
import okio.Utf8;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f27613b = {-1, -40, -1, -37, 0, 67, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -64, 0, BinaryMemcacheOpcodes.SETQ, 8};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f27614c = {3, 1, 34, 0, 2, BinaryMemcacheOpcodes.SETQ, 0, 3, BinaryMemcacheOpcodes.SETQ, 0, -1, -60, 0, 31, 0, 0, 1, 5, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, -1, -60, 0, -75, 16, 0, 2, 1, 3, 3, 2, 4, 3, 5, 5, 4, 4, 0, 0, 1, 125, 1, 2, 3, 0, 4, BinaryMemcacheOpcodes.SETQ, 5, BinaryMemcacheOpcodes.ADDQ, BinaryMemcacheOpcodes.SASL_AUTH, com.sigmob.sdk.archives.tar.e.I, 65, 6, BinaryMemcacheOpcodes.REPLACEQ, 81, 97, 7, 34, 113, BinaryMemcacheOpcodes.DELETEQ, com.sigmob.sdk.archives.tar.e.J, DefaultBinaryMemcacheResponse.RESPONSE_MAGIC_BYTE, -111, -95, 8, BinaryMemcacheOpcodes.GATK, 66, -79, -63, BinaryMemcacheOpcodes.INCREMENTQ, 82, -47, -16, BinaryMemcacheOpcodes.GATKQ, com.sigmob.sdk.archives.tar.e.K, 98, 114, -126, 9, 10, BinaryMemcacheOpcodes.DECREMENTQ, BinaryMemcacheOpcodes.QUITQ, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.APPENDQ, 26, 37, 38, 39, 40, 41, 42, com.sigmob.sdk.archives.tar.e.L, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.N, com.sigmob.sdk.archives.tar.e.O, 56, 57, HttpConstants.COLON, 67, 68, 69, 70, 71, 72, 73, 74, com.sigmob.sdk.archives.tar.e.Q, 84, 85, 86, 87, com.sigmob.sdk.archives.tar.e.S, 89, 90, 99, 100, 101, 102, com.sigmob.sdk.archives.tar.e.T, 104, 105, 106, 115, 116, 117, 118, 119, com.sigmob.sdk.archives.tar.e.R, 121, 122, -125, -124, -123, -122, -121, -120, -119, -118, -110, -109, -108, -107, -106, -105, -104, -103, -102, -94, -93, -92, -91, -90, -89, -88, -87, -86, -78, -77, -76, -75, -74, -73, -72, -71, -70, -62, -61, -60, -59, -58, -57, -56, -55, -54, -46, -45, -44, -43, -42, -41, -40, -39, -38, -31, -30, -29, -28, -27, -26, -25, -24, -23, -22, -15, -14, -13, -12, -11, -10, -9, -8, -7, -6, -1, -60, 0, 31, 1, 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, -1, -60, 0, -75, BinaryMemcacheOpcodes.SETQ, 0, 2, 1, 2, 4, 4, 3, 4, 7, 5, 4, 4, 0, 1, 2, 119, 0, 1, 2, 3, BinaryMemcacheOpcodes.SETQ, 4, 5, BinaryMemcacheOpcodes.SASL_AUTH, com.sigmob.sdk.archives.tar.e.I, 6, BinaryMemcacheOpcodes.ADDQ, 65, 81, 7, 97, 113, BinaryMemcacheOpcodes.REPLACEQ, 34, com.sigmob.sdk.archives.tar.e.J, DefaultBinaryMemcacheResponse.RESPONSE_MAGIC_BYTE, 8, BinaryMemcacheOpcodes.DELETEQ, 66, -111, -95, -79, -63, 9, BinaryMemcacheOpcodes.GATK, com.sigmob.sdk.archives.tar.e.K, 82, -16, BinaryMemcacheOpcodes.INCREMENTQ, 98, 114, -47, 10, BinaryMemcacheOpcodes.DECREMENTQ, BinaryMemcacheOpcodes.GATKQ, com.sigmob.sdk.archives.tar.e.L, -31, 37, -15, BinaryMemcacheOpcodes.QUITQ, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.APPENDQ, 26, 38, 39, 40, 41, 42, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.N, com.sigmob.sdk.archives.tar.e.O, 56, 57, HttpConstants.COLON, 67, 68, 69, 70, 71, 72, 73, 74, com.sigmob.sdk.archives.tar.e.Q, 84, 85, 86, 87, com.sigmob.sdk.archives.tar.e.S, 89, 90, 99, 100, 101, 102, com.sigmob.sdk.archives.tar.e.T, 104, 105, 106, 115, 116, 117, 118, 119, com.sigmob.sdk.archives.tar.e.R, 121, 122, -126, -125, -124, -123, -122, -121, -120, -119, -118, -110, -109, -108, -107, -106, -105, -104, -103, -102, -94, -93, -92, -91, -90, -89, -88, -87, -86, -78, -77, -76, -75, -74, -73, -72, -71, -70, -62, -61, -60, -59, -58, -57, -56, -55, -54, -46, -45, -44, -43, -42, -41, -40, -39, -38, -30, -29, -28, -27, -26, -25, -24, -23, -22, -14, -13, -12, -11, -10, -9, -8, -7, -6, -1, -38, 0, 12, 3, 1, 0, 2, BinaryMemcacheOpcodes.SETQ, 3, BinaryMemcacheOpcodes.SETQ, 0, Utf8.REPLACEMENT_BYTE, 0, -114, -118, 40, -96, 15, -1, -39};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.common.memory.g f27615a;

    public b(com.facebook.common.memory.g pooledByteBufferFactory) {
        this.f27615a = pooledByteBufferFactory;
    }

    public CloseableReference<PooledByteBuffer> a(short width, short height) throws Throwable {
        i iVarD = null;
        try {
            try {
                com.facebook.common.memory.g gVar = this.f27615a;
                byte[] bArr = f27613b;
                int length = bArr.length;
                byte[] bArr2 = f27614c;
                iVarD = gVar.d(length + bArr2.length + 4);
                iVarD.write(bArr);
                iVarD.write((byte) (height >> 8));
                iVarD.write((byte) (height & Http2CodecUtil.MAX_UNSIGNED_BYTE));
                iVarD.write((byte) (width >> 8));
                iVarD.write((byte) (width & Http2CodecUtil.MAX_UNSIGNED_BYTE));
                iVarD.write(bArr2);
                CloseableReference<PooledByteBuffer> closeableReferenceQ = CloseableReference.q(iVarD.b());
                iVarD.close();
                return closeableReferenceQ;
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        } catch (Throwable th) {
            if (iVarD != null) {
                iVarD.close();
            }
            throw th;
        }
    }
}
