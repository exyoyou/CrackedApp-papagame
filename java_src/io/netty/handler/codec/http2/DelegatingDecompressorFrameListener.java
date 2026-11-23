package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.embedded.EmbeddedChannel;
import io.netty.handler.codec.compression.ZlibCodecFactory;
import io.netty.handler.codec.compression.ZlibWrapper;
import io.netty.handler.codec.http.HttpHeaderNames;
import io.netty.handler.codec.http.HttpHeaderValues;
import io.netty.util.AsciiString;
import io.netty.util.internal.ObjectUtil;

/* JADX INFO: loaded from: classes.dex */
public class DelegatingDecompressorFrameListener extends Http2FrameListenerDecorator {
    private final Http2Connection connection;
    private boolean flowControllerInitialized;
    private final Http2Connection.PropertyKey propertyKey;
    private final boolean strict;

    private final class ConsumedBytesConverter implements Http2LocalFlowController {
        private final Http2LocalFlowController flowController;

        ConsumedBytesConverter(Http2LocalFlowController http2LocalFlowController) {
            this.flowController = (Http2LocalFlowController) ObjectUtil.checkNotNull(http2LocalFlowController, "flowController");
        }

        @Override // io.netty.handler.codec.http2.Http2FlowController
        public void channelHandlerContext(ChannelHandlerContext channelHandlerContext) throws Http2Exception {
            this.flowController.channelHandlerContext(channelHandlerContext);
        }

        @Override // io.netty.handler.codec.http2.Http2LocalFlowController
        public boolean consumeBytes(Http2Stream http2Stream, int i10) throws Http2Exception {
            Http2Decompressor http2DecompressorDecompressor = DelegatingDecompressorFrameListener.this.decompressor(http2Stream);
            if (http2DecompressorDecompressor != null) {
                i10 = http2DecompressorDecompressor.consumeBytes(http2Stream.id(), i10);
            }
            try {
                return this.flowController.consumeBytes(http2Stream, i10);
            } catch (Http2Exception e10) {
                throw e10;
            } catch (Throwable th) {
                throw Http2Exception.streamError(http2Stream.id(), Http2Error.INTERNAL_ERROR, th, "Error while returning bytes to flow control window", new Object[0]);
            }
        }

        @Override // io.netty.handler.codec.http2.Http2LocalFlowController
        public Http2LocalFlowController frameWriter(Http2FrameWriter http2FrameWriter) {
            return this.flowController.frameWriter(http2FrameWriter);
        }

        @Override // io.netty.handler.codec.http2.Http2FlowController
        public void incrementWindowSize(Http2Stream http2Stream, int i10) throws Http2Exception {
            this.flowController.incrementWindowSize(http2Stream, i10);
        }

        @Override // io.netty.handler.codec.http2.Http2FlowController
        public void initialWindowSize(int i10) throws Http2Exception {
            this.flowController.initialWindowSize(i10);
        }

        @Override // io.netty.handler.codec.http2.Http2LocalFlowController
        public void receiveFlowControlledFrame(Http2Stream http2Stream, ByteBuf byteBuf, int i10, boolean z10) throws Http2Exception {
            this.flowController.receiveFlowControlledFrame(http2Stream, byteBuf, i10, z10);
        }

        @Override // io.netty.handler.codec.http2.Http2LocalFlowController
        public int unconsumedBytes(Http2Stream http2Stream) {
            return this.flowController.unconsumedBytes(http2Stream);
        }

        @Override // io.netty.handler.codec.http2.Http2FlowController
        public int windowSize(Http2Stream http2Stream) {
            return this.flowController.windowSize(http2Stream);
        }

        @Override // io.netty.handler.codec.http2.Http2FlowController
        public int initialWindowSize() {
            return this.flowController.initialWindowSize();
        }

        @Override // io.netty.handler.codec.http2.Http2LocalFlowController
        public int initialWindowSize(Http2Stream http2Stream) {
            return this.flowController.initialWindowSize(http2Stream);
        }
    }

    private static final class Http2Decompressor {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private int compressed;
        private int decompressed;
        private final EmbeddedChannel decompressor;

        Http2Decompressor(EmbeddedChannel embeddedChannel) {
            this.decompressor = embeddedChannel;
        }

        int consumeBytes(int i10, int i11) throws Http2Exception {
            ObjectUtil.checkPositiveOrZero(i11, "decompressedBytes");
            int i12 = this.decompressed;
            if (i12 - i11 < 0) {
                throw Http2Exception.streamError(i10, Http2Error.INTERNAL_ERROR, "Attempting to return too many bytes for stream %d. decompressed: %d decompressedBytes: %d", Integer.valueOf(i10), Integer.valueOf(this.decompressed), Integer.valueOf(i11));
            }
            double d10 = ((double) i11) / ((double) i12);
            int i13 = this.compressed;
            int iMin = Math.min(i13, (int) Math.ceil(((double) i13) * d10));
            int i14 = this.compressed;
            if (i14 - iMin < 0) {
                throw Http2Exception.streamError(i10, Http2Error.INTERNAL_ERROR, "overflow when converting decompressed bytes to compressed bytes for stream %d.decompressedBytes: %d decompressed: %d compressed: %d consumedCompressed: %d", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(this.decompressed), Integer.valueOf(this.compressed), Integer.valueOf(iMin));
            }
            this.decompressed -= i11;
            this.compressed = i14 - iMin;
            return iMin;
        }

        EmbeddedChannel decompressor() {
            return this.decompressor;
        }

        void incrementCompressedBytes(int i10) {
            this.compressed += i10;
        }

        void incrementDecompressedBytes(int i10) {
            this.decompressed += i10;
        }
    }

    public DelegatingDecompressorFrameListener(Http2Connection http2Connection, Http2FrameListener http2FrameListener) {
        this(http2Connection, http2FrameListener, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void cleanup(Http2Decompressor http2Decompressor) {
        http2Decompressor.decompressor().finishAndReleaseAll();
    }

    private void initDecompressor(ChannelHandlerContext channelHandlerContext, int i10, Http2Headers http2Headers, boolean z10) throws Http2Exception {
        Http2Stream http2StreamStream = this.connection.stream(i10);
        if (http2StreamStream == null) {
            return;
        }
        Http2Decompressor http2DecompressorDecompressor = decompressor(http2StreamStream);
        if (http2DecompressorDecompressor == null && !z10) {
            AsciiString asciiString = HttpHeaderNames.CONTENT_ENCODING;
            CharSequence charSequence = http2Headers.get(asciiString);
            if (charSequence == null) {
                charSequence = HttpHeaderValues.IDENTITY;
            }
            EmbeddedChannel embeddedChannelNewContentDecompressor = newContentDecompressor(channelHandlerContext, charSequence);
            if (embeddedChannelNewContentDecompressor != null) {
                http2DecompressorDecompressor = new Http2Decompressor(embeddedChannelNewContentDecompressor);
                http2StreamStream.setProperty(this.propertyKey, http2DecompressorDecompressor);
                CharSequence targetContentEncoding = getTargetContentEncoding(charSequence);
                if (HttpHeaderValues.IDENTITY.contentEqualsIgnoreCase(targetContentEncoding)) {
                    http2Headers.remove(asciiString);
                } else {
                    http2Headers.set(asciiString, targetContentEncoding);
                }
            }
        }
        if (http2DecompressorDecompressor != null) {
            http2Headers.remove(HttpHeaderNames.CONTENT_LENGTH);
            if (this.flowControllerInitialized) {
                return;
            }
            this.flowControllerInitialized = true;
            this.connection.local().flowController(new ConsumedBytesConverter((Http2LocalFlowController) this.connection.local().flowController()));
        }
    }

    private static ByteBuf nextReadableBuf(EmbeddedChannel embeddedChannel) {
        while (true) {
            ByteBuf byteBuf = (ByteBuf) embeddedChannel.readInbound();
            if (byteBuf == null) {
                return null;
            }
            if (byteBuf.isReadable()) {
                return byteBuf;
            }
            byteBuf.release();
        }
    }

    Http2Decompressor decompressor(Http2Stream http2Stream) {
        if (http2Stream == null) {
            return null;
        }
        return (Http2Decompressor) http2Stream.getProperty(this.propertyKey);
    }

    protected CharSequence getTargetContentEncoding(CharSequence charSequence) throws Http2Exception {
        return HttpHeaderValues.IDENTITY;
    }

    protected EmbeddedChannel newContentDecompressor(ChannelHandlerContext channelHandlerContext, CharSequence charSequence) throws Http2Exception {
        if (HttpHeaderValues.GZIP.contentEqualsIgnoreCase(charSequence) || HttpHeaderValues.X_GZIP.contentEqualsIgnoreCase(charSequence)) {
            return new EmbeddedChannel(channelHandlerContext.channel().id(), channelHandlerContext.channel().metadata().hasDisconnect(), channelHandlerContext.channel().config(), ZlibCodecFactory.newZlibDecoder(ZlibWrapper.GZIP));
        }
        if (HttpHeaderValues.DEFLATE.contentEqualsIgnoreCase(charSequence) || HttpHeaderValues.X_DEFLATE.contentEqualsIgnoreCase(charSequence)) {
            return new EmbeddedChannel(channelHandlerContext.channel().id(), channelHandlerContext.channel().metadata().hasDisconnect(), channelHandlerContext.channel().config(), ZlibCodecFactory.newZlibDecoder(this.strict ? ZlibWrapper.ZLIB : ZlibWrapper.ZLIB_OR_NONE));
        }
        return null;
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListenerDecorator, io.netty.handler.codec.http2.Http2FrameListener
    public int onDataRead(ChannelHandlerContext channelHandlerContext, int i10, ByteBuf byteBuf, int i11, boolean z10) throws Http2Exception {
        Http2Stream http2StreamStream = this.connection.stream(i10);
        Http2Decompressor http2DecompressorDecompressor = decompressor(http2StreamStream);
        if (http2DecompressorDecompressor == null) {
            return this.listener.onDataRead(channelHandlerContext, i10, byteBuf, i11, z10);
        }
        EmbeddedChannel embeddedChannelDecompressor = http2DecompressorDecompressor.decompressor();
        int i12 = byteBuf.readableBytes() + i11;
        http2DecompressorDecompressor.incrementCompressedBytes(i12);
        try {
            embeddedChannelDecompressor.writeInbound(byteBuf.retain());
            ByteBuf byteBufNextReadableBuf = nextReadableBuf(embeddedChannelDecompressor);
            if (byteBufNextReadableBuf == null && z10 && embeddedChannelDecompressor.finish()) {
                byteBufNextReadableBuf = nextReadableBuf(embeddedChannelDecompressor);
            }
            if (byteBufNextReadableBuf == null) {
                if (z10) {
                    this.listener.onDataRead(channelHandlerContext, i10, Unpooled.EMPTY_BUFFER, i11, true);
                }
                http2DecompressorDecompressor.incrementDecompressedBytes(i12);
                return i12;
            }
            try {
                Http2LocalFlowController http2LocalFlowController = (Http2LocalFlowController) this.connection.local().flowController();
                http2DecompressorDecompressor.incrementDecompressedBytes(i11);
                int i13 = i11;
                ByteBuf byteBuf2 = byteBufNextReadableBuf;
                while (true) {
                    try {
                        ByteBuf byteBufNextReadableBuf2 = nextReadableBuf(embeddedChannelDecompressor);
                        boolean z11 = byteBufNextReadableBuf2 == null && z10;
                        if (z11 && embeddedChannelDecompressor.finish()) {
                            byteBufNextReadableBuf2 = nextReadableBuf(embeddedChannelDecompressor);
                            z11 = byteBufNextReadableBuf2 == null;
                        }
                        http2DecompressorDecompressor.incrementDecompressedBytes(byteBuf2.readableBytes());
                        http2LocalFlowController.consumeBytes(http2StreamStream, this.listener.onDataRead(channelHandlerContext, i10, byteBuf2, i13, z11));
                        if (byteBufNextReadableBuf2 == null) {
                            byteBuf2.release();
                            return 0;
                        }
                        byteBuf2.release();
                        byteBuf2 = byteBufNextReadableBuf2;
                        i13 = 0;
                    } catch (Throwable th) {
                        th = th;
                        byteBufNextReadableBuf = byteBuf2;
                        byteBufNextReadableBuf.release();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Http2Exception e10) {
            throw e10;
        } catch (Throwable th3) {
            throw Http2Exception.streamError(http2StreamStream.id(), Http2Error.INTERNAL_ERROR, th3, "Decompressor error detected while delegating data read on streamId %d", Integer.valueOf(http2StreamStream.id()));
        }
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListenerDecorator, io.netty.handler.codec.http2.Http2FrameListener
    public void onHeadersRead(ChannelHandlerContext channelHandlerContext, int i10, Http2Headers http2Headers, int i11, boolean z10) throws Http2Exception {
        initDecompressor(channelHandlerContext, i10, http2Headers, z10);
        this.listener.onHeadersRead(channelHandlerContext, i10, http2Headers, i11, z10);
    }

    public DelegatingDecompressorFrameListener(Http2Connection http2Connection, Http2FrameListener http2FrameListener, boolean z10) {
        super(http2FrameListener);
        this.connection = http2Connection;
        this.strict = z10;
        this.propertyKey = http2Connection.newKey();
        http2Connection.addListener(new Http2ConnectionAdapter() { // from class: io.netty.handler.codec.http2.DelegatingDecompressorFrameListener.1
            @Override // io.netty.handler.codec.http2.Http2ConnectionAdapter, io.netty.handler.codec.http2.Http2Connection.Listener
            public void onStreamRemoved(Http2Stream http2Stream) {
                Http2Decompressor http2DecompressorDecompressor = DelegatingDecompressorFrameListener.this.decompressor(http2Stream);
                if (http2DecompressorDecompressor != null) {
                    DelegatingDecompressorFrameListener.cleanup(http2DecompressorDecompressor);
                }
            }
        });
    }

    @Override // io.netty.handler.codec.http2.Http2FrameListenerDecorator, io.netty.handler.codec.http2.Http2FrameListener
    public void onHeadersRead(ChannelHandlerContext channelHandlerContext, int i10, Http2Headers http2Headers, int i11, short s10, boolean z10, int i12, boolean z11) throws Http2Exception {
        initDecompressor(channelHandlerContext, i10, http2Headers, z11);
        this.listener.onHeadersRead(channelHandlerContext, i10, http2Headers, i11, s10, z10, i12, z11);
    }
}
