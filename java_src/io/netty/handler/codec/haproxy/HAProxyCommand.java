package io.netty.handler.codec.haproxy;

/* JADX INFO: loaded from: classes.dex */
public enum HAProxyCommand {
    LOCAL((byte) 0),
    PROXY((byte) 1);

    private static final byte COMMAND_MASK = 15;
    private final byte byteValue;

    HAProxyCommand(byte b10) {
        this.byteValue = b10;
    }

    public byte byteValue() {
        return this.byteValue;
    }

    public static HAProxyCommand valueOf(byte b10) {
        int i10 = b10 & 15;
        byte b11 = (byte) i10;
        if (b11 == 0) {
            return LOCAL;
        }
        if (b11 == 1) {
            return PROXY;
        }
        throw new IllegalArgumentException("unknown command: " + i10);
    }
}
