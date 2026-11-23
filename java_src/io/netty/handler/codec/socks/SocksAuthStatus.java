package io.netty.handler.codec.socks;

/* JADX INFO: loaded from: classes.dex */
public enum SocksAuthStatus {
    SUCCESS((byte) 0),
    FAILURE((byte) -1);


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte f91644b;

    SocksAuthStatus(byte b10) {
        this.f91644b = b10;
    }

    @Deprecated
    public static SocksAuthStatus fromByte(byte b10) {
        return valueOf(b10);
    }

    public byte byteValue() {
        return this.f91644b;
    }

    public static SocksAuthStatus valueOf(byte b10) {
        for (SocksAuthStatus socksAuthStatus : values()) {
            if (socksAuthStatus.f91644b == b10) {
                return socksAuthStatus;
            }
        }
        return FAILURE;
    }
}
