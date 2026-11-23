package io.netty.handler.codec.stomp;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.DecoderException;
import io.netty.handler.codec.DecoderResult;
import io.netty.handler.codec.ReplayingDecoder;
import io.netty.handler.codec.TooLongFrameException;
import io.netty.util.AsciiString;
import io.netty.util.ByteProcessor;
import io.netty.util.internal.AppendableCharSequence;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.StringUtil;
import java.util.List;
import okio.Utf8;

/* JADX INFO: loaded from: classes.dex */
public class StompSubframeDecoder extends ReplayingDecoder<State> {
    private static final int DEFAULT_CHUNK_SIZE = 8132;
    private static final int DEFAULT_MAX_LINE_LENGTH = 1024;
    private int alreadyReadChunkSize;
    private final Utf8LineParser commandParser;
    private long contentLength;
    private final HeaderParser headerParser;
    private LastStompContentSubframe lastContent;
    private final int maxChunkSize;

    /* JADX INFO: renamed from: io.netty.handler.codec.stomp.StompSubframeDecoder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$stomp$StompSubframeDecoder$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$io$netty$handler$codec$stomp$StompSubframeDecoder$State = iArr;
            try {
                iArr[State.SKIP_CONTROL_CHARACTERS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$stomp$StompSubframeDecoder$State[State.READ_HEADERS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$stomp$StompSubframeDecoder$State[State.BAD_FRAME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$stomp$StompSubframeDecoder$State[State.READ_CONTENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$stomp$StompSubframeDecoder$State[State.FINALIZE_FRAME_READ.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private static final class HeaderParser extends Utf8LineParser {
        private String name;
        private boolean valid;
        private final boolean validateHeaders;

        HeaderParser(AppendableCharSequence appendableCharSequence, int i10, boolean z10) {
            super(appendableCharSequence, i10);
            this.validateHeaders = z10;
        }

        boolean parseHeader(StompHeaders stompHeaders, ByteBuf byteBuf) {
            AppendableCharSequence appendableCharSequence = super.parse(byteBuf);
            if (appendableCharSequence == null) {
                return false;
            }
            if (this.name == null && appendableCharSequence.length() == 0) {
                return false;
            }
            if (this.valid) {
                stompHeaders.add(this.name, appendableCharSequence.toString());
                return true;
            }
            if (!this.validateHeaders) {
                return true;
            }
            if (StringUtil.isNullOrEmpty(this.name)) {
                throw new IllegalArgumentException("received an invalid header line '" + appendableCharSequence.toString() + '\'');
            }
            throw new IllegalArgumentException("a header value or name contains a prohibited character ':', " + (this.name + ':' + appendableCharSequence.toString()));
        }

        @Override // io.netty.handler.codec.stomp.StompSubframeDecoder.Utf8LineParser, io.netty.util.ByteProcessor
        public boolean process(byte b10) throws Exception {
            if (b10 == 58) {
                if (this.name == null) {
                    AppendableCharSequence appendableCharSequenceCharSequence = charSequence();
                    if (appendableCharSequenceCharSequence.length() != 0) {
                        this.name = appendableCharSequenceCharSequence.substring(0, appendableCharSequenceCharSequence.length());
                        appendableCharSequenceCharSequence.reset();
                        this.valid = true;
                        return true;
                    }
                    this.name = "";
                } else {
                    this.valid = false;
                }
            }
            return super.process(b10);
        }

        @Override // io.netty.handler.codec.stomp.StompSubframeDecoder.Utf8LineParser
        protected void reset() {
            this.name = null;
            this.valid = false;
            super.reset();
        }
    }

    enum State {
        SKIP_CONTROL_CHARACTERS,
        READ_HEADERS,
        READ_CONTENT,
        FINALIZE_FRAME_READ,
        BAD_FRAME,
        INVALID_CHUNK
    }

    private static class Utf8LineParser implements ByteProcessor {
        private final AppendableCharSequence charSeq;
        private char interim;
        private int lineLength;
        private final int maxLineLength;
        private boolean nextRead;

        Utf8LineParser(AppendableCharSequence appendableCharSequence, int i10) {
            this.charSeq = (AppendableCharSequence) ObjectUtil.checkNotNull(appendableCharSequence, "charSeq");
            this.maxLineLength = i10;
        }

        AppendableCharSequence charSequence() {
            return this.charSeq;
        }

        AppendableCharSequence parse(ByteBuf byteBuf) {
            reset();
            int iForEachByte = byteBuf.forEachByte(this);
            if (iForEachByte == -1) {
                return null;
            }
            byteBuf.readerIndex(iForEachByte + 1);
            return this.charSeq;
        }

        @Override // io.netty.util.ByteProcessor
        public boolean process(byte b10) throws Exception {
            if (b10 == 13) {
                this.lineLength++;
                return true;
            }
            if (b10 == 10) {
                return false;
            }
            int i10 = this.lineLength + 1;
            this.lineLength = i10;
            if (i10 > this.maxLineLength) {
                throw new TooLongFrameException("An STOMP line is larger than " + this.maxLineLength + " bytes.");
            }
            if (this.nextRead) {
                this.interim = (char) (((b10 & Utf8.REPLACEMENT_BYTE) << 6) | this.interim);
                this.nextRead = false;
            } else {
                char c10 = this.interim;
                if (c10 != 0) {
                    this.charSeq.append((char) ((b10 & Utf8.REPLACEMENT_BYTE) | c10));
                    this.interim = (char) 0;
                } else if (b10 >= 0) {
                    this.charSeq.append((char) b10);
                } else if ((b10 & 224) == 192) {
                    this.interim = (char) ((b10 & 31) << 6);
                } else {
                    this.interim = (char) ((b10 & 15) << 12);
                    this.nextRead = true;
                }
            }
            return true;
        }

        protected void reset() {
            this.charSeq.reset();
            this.lineLength = 0;
            this.interim = (char) 0;
            this.nextRead = false;
        }
    }

    public StompSubframeDecoder() {
        this(1024, DEFAULT_CHUNK_SIZE);
    }

    private static long getContentLength(StompHeaders stompHeaders) {
        AsciiString asciiString = StompHeaders.CONTENT_LENGTH;
        long j10 = stompHeaders.getLong(asciiString, 0L);
        if (j10 >= 0) {
            return j10;
        }
        throw new DecoderException(((Object) asciiString) + " must be non-negative");
    }

    private StompCommand readCommand(ByteBuf byteBuf) {
        AppendableCharSequence appendableCharSequence = this.commandParser.parse(byteBuf);
        if (appendableCharSequence == null) {
            throw new DecoderException("Failed to read command from channel");
        }
        String string = appendableCharSequence.toString();
        try {
            return StompCommand.valueOf(string);
        } catch (IllegalArgumentException unused) {
            throw new DecoderException("Cannot to parse command " + string);
        }
    }

    private State readHeaders(ByteBuf byteBuf, StompHeaders stompHeaders) {
        while (this.headerParser.parseHeader(stompHeaders, byteBuf)) {
        }
        if (stompHeaders.contains(StompHeaders.CONTENT_LENGTH)) {
            long contentLength = getContentLength(stompHeaders);
            this.contentLength = contentLength;
            if (contentLength == 0) {
                return State.FINALIZE_FRAME_READ;
            }
        }
        return State.READ_CONTENT;
    }

    private void resetDecoder() {
        checkpoint(State.SKIP_CONTROL_CHARACTERS);
        this.contentLength = -1L;
        this.alreadyReadChunkSize = 0;
        this.lastContent = null;
    }

    private static void skipControlCharacters(ByteBuf byteBuf) {
        while (true) {
            byte b10 = byteBuf.readByte();
            if (b10 != 13 && b10 != 10) {
                byteBuf.readerIndex(byteBuf.readerIndex() - 1);
                return;
            }
        }
    }

    private static void skipNullCharacter(ByteBuf byteBuf) {
        byte b10 = byteBuf.readByte();
        if (b10 == 0) {
            return;
        }
        throw new IllegalStateException("unexpected byte in buffer " + ((int) b10) + " while expecting NULL byte");
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0051  */
    /* JADX WARN: Code duplicated, block: B:19:0x0054  */
    /* JADX WARN: Code duplicated, block: B:20:0x0056 A[Catch: Exception -> 0x00ff, TryCatch #0 {Exception -> 0x00ff, blocks: (B:15:0x0042, B:45:0x00e2, B:47:0x00e9, B:48:0x00ed, B:20:0x0056, B:23:0x005d, B:26:0x0062, B:28:0x006a, B:31:0x0072, B:33:0x0086, B:34:0x0093, B:36:0x009c, B:38:0x00af, B:40:0x00b7, B:42:0x00c7, B:44:0x00d6, B:49:0x00f6, B:41:0x00be), top: B:61:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x005c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x005d A[Catch: Exception -> 0x00ff, TryCatch #0 {Exception -> 0x00ff, blocks: (B:15:0x0042, B:45:0x00e2, B:47:0x00e9, B:48:0x00ed, B:20:0x0056, B:23:0x005d, B:26:0x0062, B:28:0x006a, B:31:0x0072, B:33:0x0086, B:34:0x0093, B:36:0x009c, B:38:0x00af, B:40:0x00b7, B:42:0x00c7, B:44:0x00d6, B:49:0x00f6, B:41:0x00be), top: B:61:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0061  */
    /* JADX WARN: Code duplicated, block: B:28:0x006a A[Catch: Exception -> 0x00ff, TryCatch #0 {Exception -> 0x00ff, blocks: (B:15:0x0042, B:45:0x00e2, B:47:0x00e9, B:48:0x00ed, B:20:0x0056, B:23:0x005d, B:26:0x0062, B:28:0x006a, B:31:0x0072, B:33:0x0086, B:34:0x0093, B:36:0x009c, B:38:0x00af, B:40:0x00b7, B:42:0x00c7, B:44:0x00d6, B:49:0x00f6, B:41:0x00be), top: B:61:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0071  */
    /* JADX WARN: Code duplicated, block: B:33:0x0086 A[Catch: Exception -> 0x00ff, TryCatch #0 {Exception -> 0x00ff, blocks: (B:15:0x0042, B:45:0x00e2, B:47:0x00e9, B:48:0x00ed, B:20:0x0056, B:23:0x005d, B:26:0x0062, B:28:0x006a, B:31:0x0072, B:33:0x0086, B:34:0x0093, B:36:0x009c, B:38:0x00af, B:40:0x00b7, B:42:0x00c7, B:44:0x00d6, B:49:0x00f6, B:41:0x00be), top: B:61:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0093 A[Catch: Exception -> 0x00ff, TryCatch #0 {Exception -> 0x00ff, blocks: (B:15:0x0042, B:45:0x00e2, B:47:0x00e9, B:48:0x00ed, B:20:0x0056, B:23:0x005d, B:26:0x0062, B:28:0x006a, B:31:0x0072, B:33:0x0086, B:34:0x0093, B:36:0x009c, B:38:0x00af, B:40:0x00b7, B:42:0x00c7, B:44:0x00d6, B:49:0x00f6, B:41:0x00be), top: B:61:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x009c A[Catch: Exception -> 0x00ff, TryCatch #0 {Exception -> 0x00ff, blocks: (B:15:0x0042, B:45:0x00e2, B:47:0x00e9, B:48:0x00ed, B:20:0x0056, B:23:0x005d, B:26:0x0062, B:28:0x006a, B:31:0x0072, B:33:0x0086, B:34:0x0093, B:36:0x009c, B:38:0x00af, B:40:0x00b7, B:42:0x00c7, B:44:0x00d6, B:49:0x00f6, B:41:0x00be), top: B:61:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00af A[Catch: Exception -> 0x00ff, TryCatch #0 {Exception -> 0x00ff, blocks: (B:15:0x0042, B:45:0x00e2, B:47:0x00e9, B:48:0x00ed, B:20:0x0056, B:23:0x005d, B:26:0x0062, B:28:0x006a, B:31:0x0072, B:33:0x0086, B:34:0x0093, B:36:0x009c, B:38:0x00af, B:40:0x00b7, B:42:0x00c7, B:44:0x00d6, B:49:0x00f6, B:41:0x00be), top: B:61:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00b5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x00b7 A[Catch: Exception -> 0x00ff, TryCatch #0 {Exception -> 0x00ff, blocks: (B:15:0x0042, B:45:0x00e2, B:47:0x00e9, B:48:0x00ed, B:20:0x0056, B:23:0x005d, B:26:0x0062, B:28:0x006a, B:31:0x0072, B:33:0x0086, B:34:0x0093, B:36:0x009c, B:38:0x00af, B:40:0x00b7, B:42:0x00c7, B:44:0x00d6, B:49:0x00f6, B:41:0x00be), top: B:61:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00be A[Catch: Exception -> 0x00ff, TryCatch #0 {Exception -> 0x00ff, blocks: (B:15:0x0042, B:45:0x00e2, B:47:0x00e9, B:48:0x00ed, B:20:0x0056, B:23:0x005d, B:26:0x0062, B:28:0x006a, B:31:0x0072, B:33:0x0086, B:34:0x0093, B:36:0x009c, B:38:0x00af, B:40:0x00b7, B:42:0x00c7, B:44:0x00d6, B:49:0x00f6, B:41:0x00be), top: B:61:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00d6 A[Catch: Exception -> 0x00ff, TryCatch #0 {Exception -> 0x00ff, blocks: (B:15:0x0042, B:45:0x00e2, B:47:0x00e9, B:48:0x00ed, B:20:0x0056, B:23:0x005d, B:26:0x0062, B:28:0x006a, B:31:0x0072, B:33:0x0086, B:34:0x0093, B:36:0x009c, B:38:0x00af, B:40:0x00b7, B:42:0x00c7, B:44:0x00d6, B:49:0x00f6, B:41:0x00be), top: B:61:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00e9 A[Catch: Exception -> 0x00ff, TryCatch #0 {Exception -> 0x00ff, blocks: (B:15:0x0042, B:45:0x00e2, B:47:0x00e9, B:48:0x00ed, B:20:0x0056, B:23:0x005d, B:26:0x0062, B:28:0x006a, B:31:0x0072, B:33:0x0086, B:34:0x0093, B:36:0x009c, B:38:0x00af, B:40:0x00b7, B:42:0x00c7, B:44:0x00d6, B:49:0x00f6, B:41:0x00be), top: B:61:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00f6 A[Catch: Exception -> 0x00ff, TRY_LEAVE, TryCatch #0 {Exception -> 0x00ff, blocks: (B:15:0x0042, B:45:0x00e2, B:47:0x00e9, B:48:0x00ed, B:20:0x0056, B:23:0x005d, B:26:0x0062, B:28:0x006a, B:31:0x0072, B:33:0x0086, B:34:0x0093, B:36:0x009c, B:38:0x00af, B:40:0x00b7, B:42:0x00c7, B:44:0x00d6, B:49:0x00f6, B:41:0x00be), top: B:61:0x0042 }] */
    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        StompCommand command;
        DefaultStompHeadersSubframe defaultStompHeadersSubframe;
        DefaultStompHeadersSubframe defaultStompHeadersSubframe2;
        int i10;
        int i11;
        int i12;
        long j10;
        int iIndexOf;
        int iWriterIndex;
        ByteBuf bytes;
        int i13;
        ByteBuf bytes2;
        int i14;
        int[] iArr = AnonymousClass1.$SwitchMap$io$netty$handler$codec$stomp$StompSubframeDecoder$State;
        int i15 = iArr[state().ordinal()];
        try {
            try {
                try {
                    if (i15 != 1) {
                        if (i15 != 2) {
                            if (i15 == 3) {
                                byteBuf.skipBytes(actualReadableBytes());
                                return;
                            }
                        }
                        i10 = iArr[state().ordinal()];
                        if (i10 != 4) {
                            i11 = byteBuf.readableBytes();
                            if (i11 == 0) {
                                return;
                            }
                            i12 = this.maxChunkSize;
                            if (i11 > i12) {
                                i11 = i12;
                            }
                            j10 = this.contentLength;
                            if (j10 >= 0) {
                                i13 = (int) (j10 - ((long) this.alreadyReadChunkSize));
                                if (i11 > i13) {
                                    i11 = i13;
                                }
                                bytes2 = ByteBufUtil.readBytes(channelHandlerContext.alloc(), byteBuf, i11);
                                i14 = this.alreadyReadChunkSize + i11;
                                this.alreadyReadChunkSize = i14;
                                if (i14 >= this.contentLength) {
                                    list.add(new DefaultStompContentSubframe(bytes2));
                                    return;
                                } else {
                                    this.lastContent = new DefaultLastStompContentSubframe(bytes2);
                                    checkpoint(State.FINALIZE_FRAME_READ);
                                }
                            } else {
                                iIndexOf = ByteBufUtil.indexOf(byteBuf, byteBuf.readerIndex(), byteBuf.writerIndex(), (byte) 0);
                                if (iIndexOf == byteBuf.readerIndex()) {
                                    checkpoint(State.FINALIZE_FRAME_READ);
                                } else {
                                    if (iIndexOf > 0) {
                                        iWriterIndex = iIndexOf - byteBuf.readerIndex();
                                    } else {
                                        iWriterIndex = byteBuf.writerIndex() - byteBuf.readerIndex();
                                    }
                                    bytes = ByteBufUtil.readBytes(channelHandlerContext.alloc(), byteBuf, iWriterIndex);
                                    this.alreadyReadChunkSize += iWriterIndex;
                                    if (iIndexOf > 0) {
                                        list.add(new DefaultStompContentSubframe(bytes));
                                        return;
                                    } else {
                                        this.lastContent = new DefaultLastStompContentSubframe(bytes);
                                        checkpoint(State.FINALIZE_FRAME_READ);
                                    }
                                }
                            }
                        } else if (i10 != 5) {
                            return;
                        }
                        skipNullCharacter(byteBuf);
                        if (this.lastContent == null) {
                            this.lastContent = LastStompContentSubframe.EMPTY_LAST_CONTENT;
                        }
                        list.add(this.lastContent);
                        resetDecoder();
                        return;
                    }
                    skipControlCharacters(byteBuf);
                    checkpoint(State.READ_HEADERS);
                    i10 = iArr[state().ordinal()];
                    if (i10 != 4) {
                        i11 = byteBuf.readableBytes();
                        if (i11 == 0) {
                            return;
                        }
                        i12 = this.maxChunkSize;
                        if (i11 > i12) {
                            i11 = i12;
                        }
                        j10 = this.contentLength;
                        if (j10 >= 0) {
                            i13 = (int) (j10 - ((long) this.alreadyReadChunkSize));
                            if (i11 > i13) {
                                i11 = i13;
                            }
                            bytes2 = ByteBufUtil.readBytes(channelHandlerContext.alloc(), byteBuf, i11);
                            i14 = this.alreadyReadChunkSize + i11;
                            this.alreadyReadChunkSize = i14;
                            if (i14 >= this.contentLength) {
                                list.add(new DefaultStompContentSubframe(bytes2));
                                return;
                            } else {
                                this.lastContent = new DefaultLastStompContentSubframe(bytes2);
                                checkpoint(State.FINALIZE_FRAME_READ);
                            }
                        } else {
                            iIndexOf = ByteBufUtil.indexOf(byteBuf, byteBuf.readerIndex(), byteBuf.writerIndex(), (byte) 0);
                            if (iIndexOf == byteBuf.readerIndex()) {
                                checkpoint(State.FINALIZE_FRAME_READ);
                            } else {
                                if (iIndexOf > 0) {
                                    iWriterIndex = iIndexOf - byteBuf.readerIndex();
                                } else {
                                    iWriterIndex = byteBuf.writerIndex() - byteBuf.readerIndex();
                                }
                                bytes = ByteBufUtil.readBytes(channelHandlerContext.alloc(), byteBuf, iWriterIndex);
                                this.alreadyReadChunkSize += iWriterIndex;
                                if (iIndexOf > 0) {
                                    list.add(new DefaultStompContentSubframe(bytes));
                                    return;
                                } else {
                                    this.lastContent = new DefaultLastStompContentSubframe(bytes);
                                    checkpoint(State.FINALIZE_FRAME_READ);
                                }
                            }
                        }
                    } else if (i10 != 5) {
                        return;
                    }
                    skipNullCharacter(byteBuf);
                    if (this.lastContent == null) {
                        this.lastContent = LastStompContentSubframe.EMPTY_LAST_CONTENT;
                    }
                    list.add(this.lastContent);
                    resetDecoder();
                    return;
                } catch (Exception e10) {
                    DefaultLastStompContentSubframe defaultLastStompContentSubframe = new DefaultLastStompContentSubframe(Unpooled.EMPTY_BUFFER);
                    defaultLastStompContentSubframe.setDecoderResult(DecoderResult.failure(e10));
                    list.add(defaultLastStompContentSubframe);
                    checkpoint(State.BAD_FRAME);
                    return;
                }
                checkpoint(readHeaders(byteBuf, defaultStompHeadersSubframe2.headers()));
                list.add(defaultStompHeadersSubframe2);
            } catch (Exception e11) {
                e = e11;
                defaultStompHeadersSubframe = defaultStompHeadersSubframe2;
                if (defaultStompHeadersSubframe == null) {
                    defaultStompHeadersSubframe = new DefaultStompHeadersSubframe(command);
                }
                defaultStompHeadersSubframe.setDecoderResult(DecoderResult.failure(e));
                list.add(defaultStompHeadersSubframe);
                checkpoint(State.BAD_FRAME);
                return;
            }
            command = readCommand(byteBuf);
            defaultStompHeadersSubframe2 = new DefaultStompHeadersSubframe(command);
        } catch (Exception e12) {
            e = e12;
        }
        command = StompCommand.UNKNOWN;
        defaultStompHeadersSubframe = null;
    }

    public StompSubframeDecoder(boolean z10) {
        this(1024, DEFAULT_CHUNK_SIZE, z10);
    }

    public StompSubframeDecoder(int i10, int i11) {
        this(i10, i11, false);
    }

    public StompSubframeDecoder(int i10, int i11, boolean z10) {
        super(State.SKIP_CONTROL_CHARACTERS);
        this.contentLength = -1L;
        ObjectUtil.checkPositive(i10, "maxLineLength");
        ObjectUtil.checkPositive(i11, "maxChunkSize");
        this.maxChunkSize = i11;
        this.commandParser = new Utf8LineParser(new AppendableCharSequence(16), i10);
        this.headerParser = new HeaderParser(new AppendableCharSequence(128), i10, z10);
    }
}
