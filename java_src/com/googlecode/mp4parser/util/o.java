package com.googlecode.mp4parser.util;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public class o {
    public static UUID a(byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.BIG_ENDIAN);
        return new UUID(byteBufferWrap.getLong(), byteBufferWrap.getLong());
    }

    public static byte[] b(UUID uuid) {
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        byte[] bArr = new byte[16];
        for (int i10 = 0; i10 < 8; i10++) {
            bArr[i10] = (byte) (mostSignificantBits >>> ((7 - i10) * 8));
        }
        for (int i11 = 8; i11 < 16; i11++) {
            bArr[i11] = (byte) (leastSignificantBits >>> ((7 - i11) * 8));
        }
        return bArr;
    }
}
