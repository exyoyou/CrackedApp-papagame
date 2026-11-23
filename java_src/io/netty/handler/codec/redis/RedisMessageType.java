package io.netty.handler.codec.redis;

import io.netty.buffer.ByteBuf;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;

/* JADX INFO: loaded from: classes.dex */
public enum RedisMessageType {
    INLINE_COMMAND(null, true),
    SIMPLE_STRING((byte) 43, true),
    ERROR((byte) 45, true),
    INTEGER(Byte.valueOf(HttpConstants.COLON), true),
    BULK_STRING(Byte.valueOf(BinaryMemcacheOpcodes.GATKQ), false),
    ARRAY_HEADER((byte) 42, false);

    private final boolean inline;
    private final Byte value;

    RedisMessageType(Byte b10, boolean z10) {
        this.value = b10;
        this.inline = z10;
    }

    public static RedisMessageType readFrom(ByteBuf byteBuf, boolean z10) {
        int i10 = byteBuf.readerIndex();
        RedisMessageType redisMessageTypeValueOf = valueOf(byteBuf.readByte());
        if (redisMessageTypeValueOf == INLINE_COMMAND) {
            if (!z10) {
                throw new RedisCodecException("Decoding of inline commands is disabled");
            }
            byteBuf.readerIndex(i10);
        }
        return redisMessageTypeValueOf;
    }

    public boolean isInline() {
        return this.inline;
    }

    public int length() {
        return this.value != null ? 1 : 0;
    }

    public void writeTo(ByteBuf byteBuf) {
        Byte b10 = this.value;
        if (b10 == null) {
            return;
        }
        byteBuf.writeByte(b10.byteValue());
    }

    private static RedisMessageType valueOf(byte b10) {
        if (b10 == 36) {
            return BULK_STRING;
        }
        if (b10 == 45) {
            return ERROR;
        }
        if (b10 == 58) {
            return INTEGER;
        }
        if (b10 != 42) {
            return b10 != 43 ? INLINE_COMMAND : SIMPLE_STRING;
        }
        return ARRAY_HEADER;
    }
}
