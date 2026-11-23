package io.netty.handler.codec.redis;

import com.baidu.mobads.sdk.internal.cb;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.util.CharsetUtil;
import io.netty.util.collection.LongObjectHashMap;
import io.netty.util.collection.LongObjectMap;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class FixedRedisMessagePool implements RedisMessagePool {
    private static final long MAX_CACHED_INTEGER_NUMBER = 128;
    private static final long MIN_CACHED_INTEGER_NUMBER = -1;
    private static final int SIZE_CACHED_INTEGER_NUMBER = 129;
    private final Map<ByteBuf, ErrorRedisMessage> byteBufToErrors;
    private final Map<ByteBuf, IntegerRedisMessage> byteBufToIntegers;
    private final Map<ByteBuf, SimpleStringRedisMessage> byteBufToSimpleStrings;
    private final LongObjectMap<byte[]> longToByteBufs;
    private final LongObjectMap<IntegerRedisMessage> longToIntegers;
    private final Map<String, ErrorRedisMessage> stringToErrors;
    private final Map<String, SimpleStringRedisMessage> stringToSimpleStrings;
    private static final String[] DEFAULT_SIMPLE_STRINGS = {cb.f7689k, "PONG", "QUEUED"};
    private static final String[] DEFAULT_ERRORS = {"ERR", "ERR index out of range", "ERR no such key", "ERR source and destination objects are the same", "ERR syntax error", "BUSY Redis is busy running a script. You can only call SCRIPT KILL or SHUTDOWN NOSAVE.", "BUSYKEY Target key name already exists.", "EXECABORT Transaction discarded because of previous errors.", "LOADING Redis is loading the dataset in memory", "MASTERDOWN Link with MASTER is down and slave-serve-stale-data is set to 'no'.", "MISCONF Redis is configured to save RDB snapshots, but is currently not able to persist on disk. Commands that may modify the data set are disabled. Please check Redis logs for details about the error.", "NOAUTH Authentication required.", "NOREPLICAS Not enough good slaves to write.", "NOSCRIPT No matching script. Please use EVAL.", "OOM command not allowed when used memory > 'maxmemory'.", "READONLY You can't write against a read only slave.", "WRONGTYPE Operation against a key holding the wrong kind of value"};
    public static final FixedRedisMessagePool INSTANCE = new FixedRedisMessagePool();

    private FixedRedisMessagePool() {
        String[] strArr = DEFAULT_SIMPLE_STRINGS;
        this.byteBufToSimpleStrings = new HashMap(strArr.length, 1.0f);
        this.stringToSimpleStrings = new HashMap(strArr.length, 1.0f);
        for (String str : strArr) {
            ByteBuf byteBufUnmodifiableBuffer = Unpooled.unmodifiableBuffer(Unpooled.unreleasableBuffer(Unpooled.wrappedBuffer(str.getBytes(CharsetUtil.UTF_8))));
            SimpleStringRedisMessage simpleStringRedisMessage = new SimpleStringRedisMessage(str);
            this.byteBufToSimpleStrings.put(byteBufUnmodifiableBuffer, simpleStringRedisMessage);
            this.stringToSimpleStrings.put(str, simpleStringRedisMessage);
        }
        String[] strArr2 = DEFAULT_ERRORS;
        this.byteBufToErrors = new HashMap(strArr2.length, 1.0f);
        this.stringToErrors = new HashMap(strArr2.length, 1.0f);
        for (String str2 : strArr2) {
            ByteBuf byteBufUnmodifiableBuffer2 = Unpooled.unmodifiableBuffer(Unpooled.unreleasableBuffer(Unpooled.wrappedBuffer(str2.getBytes(CharsetUtil.UTF_8))));
            ErrorRedisMessage errorRedisMessage = new ErrorRedisMessage(str2);
            this.byteBufToErrors.put(byteBufUnmodifiableBuffer2, errorRedisMessage);
            this.stringToErrors.put(str2, errorRedisMessage);
        }
        this.byteBufToIntegers = new HashMap(129, 1.0f);
        this.longToIntegers = new LongObjectHashMap(129, 1.0f);
        this.longToByteBufs = new LongObjectHashMap(129, 1.0f);
        for (long j10 = -1; j10 < 128; j10++) {
            byte[] bArrLongToAsciiBytes = RedisCodecUtil.longToAsciiBytes(j10);
            ByteBuf byteBufUnmodifiableBuffer3 = Unpooled.unmodifiableBuffer(Unpooled.unreleasableBuffer(Unpooled.wrappedBuffer(bArrLongToAsciiBytes)));
            IntegerRedisMessage integerRedisMessage = new IntegerRedisMessage(j10);
            this.byteBufToIntegers.put(byteBufUnmodifiableBuffer3, integerRedisMessage);
            this.longToIntegers.put(j10, integerRedisMessage);
            this.longToByteBufs.put(j10, bArrLongToAsciiBytes);
        }
    }

    @Override // io.netty.handler.codec.redis.RedisMessagePool
    public byte[] getByteBufOfInteger(long j10) {
        return this.longToByteBufs.get(j10);
    }

    @Override // io.netty.handler.codec.redis.RedisMessagePool
    public ErrorRedisMessage getError(String str) {
        return this.stringToErrors.get(str);
    }

    @Override // io.netty.handler.codec.redis.RedisMessagePool
    public IntegerRedisMessage getInteger(long j10) {
        return this.longToIntegers.get(j10);
    }

    @Override // io.netty.handler.codec.redis.RedisMessagePool
    public SimpleStringRedisMessage getSimpleString(String str) {
        return this.stringToSimpleStrings.get(str);
    }

    @Override // io.netty.handler.codec.redis.RedisMessagePool
    public ErrorRedisMessage getError(ByteBuf byteBuf) {
        return this.byteBufToErrors.get(byteBuf);
    }

    @Override // io.netty.handler.codec.redis.RedisMessagePool
    public IntegerRedisMessage getInteger(ByteBuf byteBuf) {
        return this.byteBufToIntegers.get(byteBuf);
    }

    @Override // io.netty.handler.codec.redis.RedisMessagePool
    public SimpleStringRedisMessage getSimpleString(ByteBuf byteBuf) {
        return this.byteBufToSimpleStrings.get(byteBuf);
    }
}
