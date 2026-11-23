package io.netty.handler.codec.socks;

/* JADX INFO: loaded from: classes.dex */
public enum SocksProtocolVersion {
    SOCKS4a((byte) 4),
    SOCKS5((byte) 5),
    UNKNOWN((byte) -1);


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte f91647b;

    SocksProtocolVersion(byte b10) {
        this.f91647b = b10;
    }

    @Deprecated
    public static SocksProtocolVersion fromByte(byte b10) {
        return valueOf(b10);
    }

    public byte byteValue() {
        return this.f91647b;
    }

    public static SocksProtocolVersion valueOf(byte b10) {
        for (SocksProtocolVersion socksProtocolVersion : values()) {
            if (socksProtocolVersion.f91647b == b10) {
                return socksProtocolVersion;
            }
        }
        return UNKNOWN;
    }
}
