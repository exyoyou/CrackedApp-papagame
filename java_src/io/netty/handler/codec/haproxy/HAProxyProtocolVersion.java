package io.netty.handler.codec.haproxy;

/* JADX INFO: loaded from: classes.dex */
public enum HAProxyProtocolVersion {
    V1((byte) 16),
    V2((byte) 32);

    private static final byte VERSION_MASK = -16;
    private final byte byteValue;

    HAProxyProtocolVersion(byte b10) {
        this.byteValue = b10;
    }

    public byte byteValue() {
        return this.byteValue;
    }

    public static HAProxyProtocolVersion valueOf(byte b10) {
        int i10 = b10 & VERSION_MASK;
        byte b11 = (byte) i10;
        if (b11 == 16) {
            return V1;
        }
        if (b11 == 32) {
            return V2;
        }
        throw new IllegalArgumentException("unknown version: " + i10);
    }
}
