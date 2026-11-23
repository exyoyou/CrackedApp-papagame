package io.netty.handler.codec.socks;

/* JADX INFO: loaded from: classes.dex */
public enum SocksAuthScheme {
    NO_AUTH((byte) 0),
    AUTH_GSSAPI((byte) 1),
    AUTH_PASSWORD((byte) 2),
    UNKNOWN((byte) -1);


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte f91643b;

    SocksAuthScheme(byte b10) {
        this.f91643b = b10;
    }

    @Deprecated
    public static SocksAuthScheme fromByte(byte b10) {
        return valueOf(b10);
    }

    public byte byteValue() {
        return this.f91643b;
    }

    public static SocksAuthScheme valueOf(byte b10) {
        for (SocksAuthScheme socksAuthScheme : values()) {
            if (socksAuthScheme.f91643b == b10) {
                return socksAuthScheme;
            }
        }
        return UNKNOWN;
    }
}
