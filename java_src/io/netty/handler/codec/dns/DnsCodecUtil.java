package io.netty.handler.codec.dns;

import com.join.mgps.Util.o0;
import external.org.apache.commons.lang3.d;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.handler.codec.CorruptedFrameException;
import io.netty.util.CharsetUtil;

/* JADX INFO: loaded from: classes.dex */
final class DnsCodecUtil {
    private DnsCodecUtil() {
    }

    static String decodeDomainName(ByteBuf byteBuf) {
        int iWriterIndex = byteBuf.writerIndex();
        int i10 = byteBuf.readableBytes();
        if (i10 == 0) {
            return o0.f49827a;
        }
        StringBuilder sb2 = new StringBuilder(i10 << 1);
        int i11 = -1;
        int i12 = 0;
        while (byteBuf.isReadable()) {
            short unsignedByte = byteBuf.readUnsignedByte();
            if (!((unsignedByte & 192) == 192)) {
                if (unsignedByte == 0) {
                    break;
                }
                if (!byteBuf.isReadable(unsignedByte)) {
                    throw new CorruptedFrameException("truncated label in a name");
                }
                sb2.append(byteBuf.toString(byteBuf.readerIndex(), unsignedByte, CharsetUtil.UTF_8));
                sb2.append(d.f90941a);
                byteBuf.skipBytes(unsignedByte);
            } else {
                if (i11 == -1) {
                    i11 = byteBuf.readerIndex() + 1;
                }
                if (!byteBuf.isReadable()) {
                    throw new CorruptedFrameException("truncated pointer in a name");
                }
                int unsignedByte2 = ((unsignedByte & 63) << 8) | byteBuf.readUnsignedByte();
                if (unsignedByte2 >= iWriterIndex) {
                    throw new CorruptedFrameException("name has an out-of-range pointer");
                }
                byteBuf.readerIndex(unsignedByte2);
                i12 += 2;
                if (i12 >= iWriterIndex) {
                    throw new CorruptedFrameException("name contains a loop.");
                }
            }
        }
        if (i11 != -1) {
            byteBuf.readerIndex(i11);
        }
        if (sb2.length() == 0) {
            return o0.f49827a;
        }
        if (sb2.charAt(sb2.length() - 1) != '.') {
            sb2.append(d.f90941a);
        }
        return sb2.toString();
    }

    static ByteBuf decompressDomainName(ByteBuf byteBuf) {
        String strDecodeDomainName = decodeDomainName(byteBuf);
        ByteBuf byteBufBuffer = byteBuf.alloc().buffer(strDecodeDomainName.length() << 1);
        encodeDomainName(strDecodeDomainName, byteBufBuffer);
        return byteBufBuffer;
    }

    static void encodeDomainName(String str, ByteBuf byteBuf) {
        if (o0.f49827a.equals(str)) {
            byteBuf.writeByte(0);
            return;
        }
        for (String str2 : str.split("\\.")) {
            int length = str2.length();
            if (length == 0) {
                break;
            }
            byteBuf.writeByte(length);
            ByteBufUtil.writeAscii(byteBuf, str2);
        }
        byteBuf.writeByte(0);
    }
}
