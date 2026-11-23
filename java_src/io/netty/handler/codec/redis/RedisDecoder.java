package io.netty.handler.codec.redis;

import com.bykv.vk.component.ttvideo.player.C;
import com.sigmob.sdk.archives.tar.e;
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.ByteToMessageDecoder;
import io.netty.util.ByteProcessor;
import io.netty.util.CharsetUtil;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class RedisDecoder extends ByteToMessageDecoder {
    private final boolean decodeInlineCommands;
    private final int maxInlineMessageLength;
    private final RedisMessagePool messagePool;
    private int remainingBulkLength;
    private State state;
    private final ToPositiveLongProcessor toPositiveLongProcessor;
    private RedisMessageType type;

    /* JADX INFO: renamed from: io.netty.handler.codec.redis.RedisDecoder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$redis$RedisDecoder$State;
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$redis$RedisMessageType;

        static {
            int[] iArr = new int[RedisMessageType.values().length];
            $SwitchMap$io$netty$handler$codec$redis$RedisMessageType = iArr;
            try {
                iArr[RedisMessageType.ARRAY_HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$redis$RedisMessageType[RedisMessageType.BULK_STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$redis$RedisMessageType[RedisMessageType.INLINE_COMMAND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$redis$RedisMessageType[RedisMessageType.SIMPLE_STRING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$redis$RedisMessageType[RedisMessageType.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$redis$RedisMessageType[RedisMessageType.INTEGER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[State.values().length];
            $SwitchMap$io$netty$handler$codec$redis$RedisDecoder$State = iArr2;
            try {
                iArr2[State.DECODE_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$redis$RedisDecoder$State[State.DECODE_INLINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$redis$RedisDecoder$State[State.DECODE_LENGTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$redis$RedisDecoder$State[State.DECODE_BULK_STRING_EOL.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$redis$RedisDecoder$State[State.DECODE_BULK_STRING_CONTENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    private enum State {
        DECODE_TYPE,
        DECODE_INLINE,
        DECODE_LENGTH,
        DECODE_BULK_STRING_EOL,
        DECODE_BULK_STRING_CONTENT
    }

    private static final class ToPositiveLongProcessor implements ByteProcessor {
        private long result;

        private ToPositiveLongProcessor() {
        }

        public long content() {
            return this.result;
        }

        @Override // io.netty.util.ByteProcessor
        public boolean process(byte b10) throws Exception {
            if (b10 >= 48 && b10 <= 57) {
                this.result = (this.result * 10) + ((long) (b10 - e.H));
                return true;
            }
            throw new RedisCodecException("bad byte in number: " + ((int) b10));
        }

        public void reset() {
            this.result = 0L;
        }

        /* synthetic */ ToPositiveLongProcessor(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public RedisDecoder() {
        this(false);
    }

    private boolean decodeBulkString(ByteBuf byteBuf, List<Object> list) throws Exception {
        int i10 = this.remainingBulkLength;
        if (i10 == -1) {
            list.add(FullBulkStringRedisMessage.NULL_INSTANCE);
            resetDecoder();
            return true;
        }
        if (i10 == 0) {
            this.state = State.DECODE_BULK_STRING_EOL;
            return decodeBulkStringEndOfLine(byteBuf, list);
        }
        list.add(new BulkStringHeaderRedisMessage(i10));
        this.state = State.DECODE_BULK_STRING_CONTENT;
        return decodeBulkStringContent(byteBuf, list);
    }

    private boolean decodeBulkStringContent(ByteBuf byteBuf, List<Object> list) throws Exception {
        int i10 = byteBuf.readableBytes();
        if (i10 == 0) {
            return false;
        }
        int i11 = this.remainingBulkLength;
        if (i11 == 0 && i10 < 2) {
            return false;
        }
        if (i10 < i11 + 2) {
            int iMin = Math.min(i11, i10);
            this.remainingBulkLength -= iMin;
            list.add(new DefaultBulkStringRedisContent(byteBuf.readSlice(iMin).retain()));
            return true;
        }
        ByteBuf slice = byteBuf.readSlice(i11);
        readEndOfLine(byteBuf);
        list.add(new DefaultLastBulkStringRedisContent(slice.retain()));
        resetDecoder();
        return true;
    }

    private boolean decodeBulkStringEndOfLine(ByteBuf byteBuf, List<Object> list) throws Exception {
        if (byteBuf.readableBytes() < 2) {
            return false;
        }
        readEndOfLine(byteBuf);
        list.add(FullBulkStringRedisMessage.EMPTY_INSTANCE);
        resetDecoder();
        return true;
    }

    private boolean decodeInline(ByteBuf byteBuf, List<Object> list) throws Exception {
        ByteBuf line = readLine(byteBuf);
        if (line != null) {
            list.add(newInlineRedisMessage(this.type, line));
            resetDecoder();
            return true;
        }
        if (byteBuf.readableBytes() <= this.maxInlineMessageLength) {
            return false;
        }
        throw new RedisCodecException("length: " + byteBuf.readableBytes() + " (expected: <= " + this.maxInlineMessageLength + ")");
    }

    private boolean decodeLength(ByteBuf byteBuf, List<Object> list) throws Exception {
        ByteBuf line = readLine(byteBuf);
        if (line == null) {
            return false;
        }
        long redisNumber = parseRedisNumber(line);
        if (redisNumber < -1) {
            throw new RedisCodecException("length: " + redisNumber + " (expected: >= -1)");
        }
        int i10 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$redis$RedisMessageType[this.type.ordinal()];
        if (i10 == 1) {
            list.add(new ArrayHeaderRedisMessage(redisNumber));
            resetDecoder();
            return true;
        }
        if (i10 != 2) {
            throw new RedisCodecException("bad type: " + this.type);
        }
        if (redisNumber <= 536870912) {
            this.remainingBulkLength = (int) redisNumber;
            return decodeBulkString(byteBuf, list);
        }
        throw new RedisCodecException("length: " + redisNumber + " (expected: <= " + C.ENCODING_PCM_A_LAW + ")");
    }

    private boolean decodeType(ByteBuf byteBuf) throws Exception {
        if (!byteBuf.isReadable()) {
            return false;
        }
        RedisMessageType from = RedisMessageType.readFrom(byteBuf, this.decodeInlineCommands);
        this.type = from;
        this.state = from.isInline() ? State.DECODE_INLINE : State.DECODE_LENGTH;
        return true;
    }

    private RedisMessage newInlineRedisMessage(RedisMessageType redisMessageType, ByteBuf byteBuf) {
        int i10 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$redis$RedisMessageType[redisMessageType.ordinal()];
        if (i10 == 3) {
            return new InlineCommandRedisMessage(byteBuf.toString(CharsetUtil.UTF_8));
        }
        if (i10 == 4) {
            SimpleStringRedisMessage simpleString = this.messagePool.getSimpleString(byteBuf);
            return simpleString != null ? simpleString : new SimpleStringRedisMessage(byteBuf.toString(CharsetUtil.UTF_8));
        }
        if (i10 == 5) {
            ErrorRedisMessage error = this.messagePool.getError(byteBuf);
            return error != null ? error : new ErrorRedisMessage(byteBuf.toString(CharsetUtil.UTF_8));
        }
        if (i10 == 6) {
            IntegerRedisMessage integer = this.messagePool.getInteger(byteBuf);
            return integer != null ? integer : new IntegerRedisMessage(parseRedisNumber(byteBuf));
        }
        throw new RedisCodecException("bad type: " + redisMessageType);
    }

    private long parsePositiveNumber(ByteBuf byteBuf) {
        this.toPositiveLongProcessor.reset();
        byteBuf.forEachByte(this.toPositiveLongProcessor);
        return this.toPositiveLongProcessor.content();
    }

    private long parseRedisNumber(ByteBuf byteBuf) {
        int i10 = byteBuf.readableBytes();
        int i11 = (i10 <= 0 || byteBuf.getByte(byteBuf.readerIndex()) != 45) ? 0 : 1;
        if (i10 <= i11) {
            throw new RedisCodecException("no number to parse: " + byteBuf.toString(CharsetUtil.US_ASCII));
        }
        if (i10 <= i11 + 19) {
            return i11 != 0 ? -parsePositiveNumber(byteBuf.skipBytes(i11)) : parsePositiveNumber(byteBuf);
        }
        throw new RedisCodecException("too many characters to be a valid RESP Integer: " + byteBuf.toString(CharsetUtil.US_ASCII));
    }

    private static void readEndOfLine(ByteBuf byteBuf) {
        short s10 = byteBuf.readShort();
        if (RedisConstants.EOL_SHORT == s10) {
            return;
        }
        byte[] bArrShortToBytes = RedisCodecUtil.shortToBytes(s10);
        throw new RedisCodecException("delimiter: [" + ((int) bArrShortToBytes[0]) + "," + ((int) bArrShortToBytes[1]) + "] (expected: \\r\\n)");
    }

    private static ByteBuf readLine(ByteBuf byteBuf) {
        int iForEachByte;
        if (!byteBuf.isReadable(2) || (iForEachByte = byteBuf.forEachByte(ByteProcessor.FIND_LF)) < 0) {
            return null;
        }
        ByteBuf slice = byteBuf.readSlice((iForEachByte - byteBuf.readerIndex()) - 1);
        readEndOfLine(byteBuf);
        return slice;
    }

    private void resetDecoder() {
        this.state = State.DECODE_TYPE;
        this.remainingBulkLength = 0;
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        while (true) {
            try {
                int i10 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$redis$RedisDecoder$State[this.state.ordinal()];
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 != 4) {
                                if (i10 != 5) {
                                    throw new RedisCodecException("Unknown state: " + this.state);
                                }
                                if (!decodeBulkStringContent(byteBuf, list)) {
                                    return;
                                }
                            } else if (!decodeBulkStringEndOfLine(byteBuf, list)) {
                                return;
                            }
                        } else if (!decodeLength(byteBuf, list)) {
                            return;
                        }
                    } else if (!decodeInline(byteBuf, list)) {
                        return;
                    }
                } else if (!decodeType(byteBuf)) {
                    return;
                }
            } catch (RedisCodecException e10) {
                resetDecoder();
                throw e10;
            } catch (Exception e11) {
                resetDecoder();
                throw new RedisCodecException(e11);
            }
        }
    }

    public RedisDecoder(boolean z10) {
        this(65536, FixedRedisMessagePool.INSTANCE, z10);
    }

    public RedisDecoder(int i10, RedisMessagePool redisMessagePool) {
        this(i10, redisMessagePool, false);
    }

    public RedisDecoder(int i10, RedisMessagePool redisMessagePool, boolean z10) {
        this.toPositiveLongProcessor = new ToPositiveLongProcessor(null);
        this.state = State.DECODE_TYPE;
        if (i10 > 0 && i10 <= 536870912) {
            this.maxInlineMessageLength = i10;
            this.messagePool = redisMessagePool;
            this.decodeInlineCommands = z10;
        } else {
            throw new RedisCodecException("maxInlineMessageLength: " + i10 + " (expected: <= " + C.ENCODING_PCM_A_LAW + ")");
        }
    }
}
