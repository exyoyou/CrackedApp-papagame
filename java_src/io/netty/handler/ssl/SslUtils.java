package io.netty.handler.ssl;

import com.join.mgps.Util.o0;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.base64.Base64;
import io.netty.handler.codec.base64.Base64Dialect;
import io.netty.util.NetUtil;
import io.netty.util.internal.EmptyArrays;
import io.netty.util.internal.PlatformDependent;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLHandshakeException;
import kotlin.UShort;
import kotlin.jvm.internal.ShortCompanionObject;

/* JADX INFO: loaded from: classes.dex */
final class SslUtils {
    static final String[] DEFAULT_CIPHER_SUITES;
    static final String[] DEFAULT_TLSV13_CIPHER_SUITES;
    static final String INVALID_CIPHER = "SSL_NULL_WITH_NULL_NULL";
    static final int NOT_ENCRYPTED = -2;
    static final int NOT_ENOUGH_DATA = -1;
    static final String PROTOCOL_SSL_V2 = "SSLv2";
    static final String PROTOCOL_SSL_V2_HELLO = "SSLv2Hello";
    static final String PROTOCOL_SSL_V3 = "SSLv3";
    static final String PROTOCOL_TLS_V1 = "TLSv1";
    static final String PROTOCOL_TLS_V1_1 = "TLSv1.1";
    static final String PROTOCOL_TLS_V1_2 = "TLSv1.2";
    static final String PROTOCOL_TLS_V1_3 = "TLSv1.3";
    static final int SSL_CONTENT_TYPE_ALERT = 21;
    static final int SSL_CONTENT_TYPE_APPLICATION_DATA = 23;
    static final int SSL_CONTENT_TYPE_CHANGE_CIPHER_SPEC = 20;
    static final int SSL_CONTENT_TYPE_EXTENSION_HEARTBEAT = 24;
    static final int SSL_CONTENT_TYPE_HANDSHAKE = 22;
    static final int SSL_RECORD_HEADER_LENGTH = 5;
    static final Set<String> TLSV13_CIPHERS = Collections.unmodifiableSet(new LinkedHashSet(Arrays.asList("TLS_AES_256_GCM_SHA384", "TLS_CHACHA20_POLY1305_SHA256", "TLS_AES_128_GCM_SHA256", "TLS_AES_128_CCM_8_SHA256", "TLS_AES_128_CCM_SHA256")));
    static final String[] TLSV13_CIPHER_SUITES;

    static {
        String[] strArr = {"TLS_AES_128_GCM_SHA256", "TLS_AES_256_GCM_SHA384"};
        TLSV13_CIPHER_SUITES = strArr;
        if (PlatformDependent.javaVersion() >= 11) {
            DEFAULT_TLSV13_CIPHER_SUITES = strArr;
        } else {
            DEFAULT_TLSV13_CIPHER_SUITES = EmptyArrays.EMPTY_STRINGS;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384");
        arrayList.add("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256");
        arrayList.add("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256");
        arrayList.add("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384");
        arrayList.add("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA");
        arrayList.add("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA");
        arrayList.add("TLS_RSA_WITH_AES_128_GCM_SHA256");
        arrayList.add("TLS_RSA_WITH_AES_128_CBC_SHA");
        arrayList.add("TLS_RSA_WITH_AES_256_CBC_SHA");
        Collections.addAll(arrayList, DEFAULT_TLSV13_CIPHER_SUITES);
        DEFAULT_CIPHER_SUITES = (String[]) arrayList.toArray(new String[0]);
    }

    private SslUtils() {
    }

    static void addIfSupported(Set<String> set, List<String> list, String... strArr) {
        for (String str : strArr) {
            if (set.contains(str)) {
                list.add(str);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0028  */
    /* JADX WARN: Code duplicated, block: B:19:0x0031  */
    /* JADX WARN: Code duplicated, block: B:20:0x0033  */
    /* JADX WARN: Code duplicated, block: B:28:0x0044  */
    /* JADX WARN: Code duplicated, block: B:29:0x004c  */
    /* JADX WARN: Code duplicated, block: B:32:0x0056 A[RETURN] */
    static int getEncryptedPacketLength(ByteBuf byteBuf, int i10) {
        boolean z10;
        int iUnsignedShortBE;
        int i11;
        short unsignedByte;
        int iShortBE;
        boolean z11 = false;
        switch (byteBuf.getUnsignedByte(i10)) {
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
                z10 = true;
                break;
            default:
                z10 = false;
                break;
        }
        if (z10) {
            if (byteBuf.getUnsignedByte(i10 + 1) == 3) {
                iUnsignedShortBE = unsignedShortBE(byteBuf, i10 + 3) + 5;
                if (iUnsignedShortBE > 5) {
                    z11 = z10;
                }
            }
            if (!z11) {
                if ((byteBuf.getUnsignedByte(i10) & 128) != 0) {
                    i11 = 2;
                } else {
                    i11 = 3;
                }
                unsignedByte = byteBuf.getUnsignedByte(i10 + i11 + 1);
                if (unsignedByte == 2 && unsignedByte != 3) {
                    return -2;
                }
                if (i11 == 2) {
                    iShortBE = (shortBE(byteBuf, i10) & ShortCompanionObject.MAX_VALUE) + 2;
                } else {
                    iShortBE = (shortBE(byteBuf, i10) & 16383) + 3;
                }
                iUnsignedShortBE = iShortBE;
                if (iUnsignedShortBE <= i11) {
                    return -1;
                }
            }
            return iUnsignedShortBE;
        }
        z11 = z10;
        iUnsignedShortBE = 0;
        if (!z11) {
            if ((byteBuf.getUnsignedByte(i10) & 128) != 0) {
                i11 = 2;
            } else {
                i11 = 3;
            }
            unsignedByte = byteBuf.getUnsignedByte(i10 + i11 + 1);
            if (unsignedByte == 2) {
            }
            if (i11 == 2) {
                iShortBE = (shortBE(byteBuf, i10) & ShortCompanionObject.MAX_VALUE) + 2;
            } else {
                iShortBE = (shortBE(byteBuf, i10) & 16383) + 3;
            }
            iUnsignedShortBE = iShortBE;
            if (iUnsignedShortBE <= i11) {
                return -1;
            }
        }
        return iUnsignedShortBE;
    }

    static void handleHandshakeFailure(ChannelHandlerContext channelHandlerContext, Throwable th, boolean z10) {
        channelHandlerContext.flush();
        if (z10) {
            channelHandlerContext.fireUserEventTriggered((Object) new SslHandshakeCompletionEvent(th));
        }
        channelHandlerContext.close();
    }

    static boolean isTLSv13Cipher(String str) {
        return TLSV13_CIPHERS.contains(str);
    }

    static boolean isValidHostNameForSNI(String str) {
        return (str == null || str.indexOf(46) <= 0 || str.endsWith(o0.f49827a) || NetUtil.isValidIpV4Address(str) || NetUtil.isValidIpV6Address(str)) ? false : true;
    }

    private static short shortBE(ByteBuf byteBuf, int i10) {
        return byteBuf.order() == ByteOrder.BIG_ENDIAN ? byteBuf.getShort(i10) : byteBuf.getShortLE(i10);
    }

    static ByteBuf toBase64(ByteBufAllocator byteBufAllocator, ByteBuf byteBuf) {
        ByteBuf byteBufEncode = Base64.encode(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes(), true, Base64Dialect.STANDARD, byteBufAllocator);
        byteBuf.readerIndex(byteBuf.writerIndex());
        return byteBufEncode;
    }

    static SSLHandshakeException toSSLHandshakeException(Throwable th) {
        return th instanceof SSLHandshakeException ? (SSLHandshakeException) th : (SSLHandshakeException) new SSLHandshakeException(th.getMessage()).initCause(th);
    }

    private static short unsignedByte(byte b10) {
        return (short) (b10 & 255);
    }

    private static int unsignedShortBE(ByteBuf byteBuf, int i10) {
        return byteBuf.order() == ByteOrder.BIG_ENDIAN ? byteBuf.getUnsignedShort(i10) : byteBuf.getUnsignedShortLE(i10);
    }

    static void useFallbackCiphersIfDefaultIsEmpty(List<String> list, Iterable<String> iterable) {
        if (list.isEmpty()) {
            for (String str : iterable) {
                if (!str.startsWith("SSL_") && !str.contains("_RC4_")) {
                    list.add(str);
                }
            }
        }
    }

    static void zeroout(ByteBuf byteBuf) {
        if (byteBuf.isReadOnly()) {
            return;
        }
        byteBuf.setZero(0, byteBuf.capacity());
    }

    static void zerooutAndRelease(ByteBuf byteBuf) {
        zeroout(byteBuf);
        byteBuf.release();
    }

    private static short shortBE(ByteBuffer byteBuffer, int i10) {
        return byteBuffer.order() == ByteOrder.BIG_ENDIAN ? byteBuffer.getShort(i10) : ByteBufUtil.swapShort(byteBuffer.getShort(i10));
    }

    private static int unsignedShortBE(ByteBuffer byteBuffer, int i10) {
        return shortBE(byteBuffer, i10) & UShort.MAX_VALUE;
    }

    static void useFallbackCiphersIfDefaultIsEmpty(List<String> list, String... strArr) {
        useFallbackCiphersIfDefaultIsEmpty(list, Arrays.asList(strArr));
    }

    static int getEncryptedPacketLength(ByteBuffer[] byteBufferArr, int i10) {
        ByteBuffer byteBuffer = byteBufferArr[i10];
        if (byteBuffer.remaining() >= 5) {
            return getEncryptedPacketLength(byteBuffer);
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(5);
        while (true) {
            int i11 = i10 + 1;
            ByteBuffer byteBufferDuplicate = byteBufferArr[i10].duplicate();
            if (byteBufferDuplicate.remaining() > byteBufferAllocate.remaining()) {
                byteBufferDuplicate.limit(byteBufferDuplicate.position() + byteBufferAllocate.remaining());
            }
            byteBufferAllocate.put(byteBufferDuplicate);
            if (!byteBufferAllocate.hasRemaining()) {
                byteBufferAllocate.flip();
                return getEncryptedPacketLength(byteBufferAllocate);
            }
            i10 = i11;
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0034  */
    /* JADX WARN: Code duplicated, block: B:19:0x0041  */
    /* JADX WARN: Code duplicated, block: B:20:0x0043  */
    /* JADX WARN: Code duplicated, block: B:28:0x0058  */
    /* JADX WARN: Code duplicated, block: B:29:0x0060  */
    /* JADX WARN: Code duplicated, block: B:32:0x006a A[RETURN] */
    private static int getEncryptedPacketLength(ByteBuffer byteBuffer) {
        boolean z10;
        int iUnsignedShortBE;
        int i10;
        short sUnsignedByte;
        int iShortBE;
        int iPosition = byteBuffer.position();
        boolean z11 = false;
        switch (unsignedByte(byteBuffer.get(iPosition))) {
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
                z10 = true;
                break;
            default:
                z10 = false;
                break;
        }
        if (z10) {
            if (unsignedByte(byteBuffer.get(iPosition + 1)) == 3) {
                iUnsignedShortBE = unsignedShortBE(byteBuffer, iPosition + 3) + 5;
                if (iUnsignedShortBE > 5) {
                    z11 = z10;
                }
            }
            if (!z11) {
                if ((unsignedByte(byteBuffer.get(iPosition)) & 128) != 0) {
                    i10 = 2;
                } else {
                    i10 = 3;
                }
                sUnsignedByte = unsignedByte(byteBuffer.get(iPosition + i10 + 1));
                if (sUnsignedByte == 2 && sUnsignedByte != 3) {
                    return -2;
                }
                if (i10 == 2) {
                    iShortBE = (shortBE(byteBuffer, iPosition) & ShortCompanionObject.MAX_VALUE) + 2;
                } else {
                    iShortBE = (shortBE(byteBuffer, iPosition) & 16383) + 3;
                }
                iUnsignedShortBE = iShortBE;
                if (iUnsignedShortBE <= i10) {
                    return -1;
                }
            }
            return iUnsignedShortBE;
        }
        z11 = z10;
        iUnsignedShortBE = 0;
        if (!z11) {
            if ((unsignedByte(byteBuffer.get(iPosition)) & 128) != 0) {
                i10 = 2;
            } else {
                i10 = 3;
            }
            sUnsignedByte = unsignedByte(byteBuffer.get(iPosition + i10 + 1));
            if (sUnsignedByte == 2) {
            }
            if (i10 == 2) {
                iShortBE = (shortBE(byteBuffer, iPosition) & ShortCompanionObject.MAX_VALUE) + 2;
            } else {
                iShortBE = (shortBE(byteBuffer, iPosition) & 16383) + 3;
            }
            iUnsignedShortBE = iShortBE;
            if (iUnsignedShortBE <= i10) {
                return -1;
            }
        }
        return iUnsignedShortBE;
    }
}
