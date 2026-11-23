package io.netty.handler.codec.socks;

/* JADX INFO: loaded from: classes.dex */
public enum SocksSubnegotiationVersion {
    AUTH_PASSWORD((byte) 1),
    UNKNOWN((byte) -1);


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte f91648b;

    SocksSubnegotiationVersion(byte b10) {
        this.f91648b = b10;
    }

    @Deprecated
    public static SocksSubnegotiationVersion fromByte(byte b10) {
        return valueOf(b10);
    }

    public byte byteValue() {
        return this.f91648b;
    }

    public static SocksSubnegotiationVersion valueOf(byte b10) {
        for (SocksSubnegotiationVersion socksSubnegotiationVersion : values()) {
            if (socksSubnegotiationVersion.f91648b == b10) {
                return socksSubnegotiationVersion;
            }
        }
        return UNKNOWN;
    }
}
