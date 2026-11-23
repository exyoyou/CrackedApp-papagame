package io.netty.handler.codec.smtp;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.DecoderException;
import io.netty.handler.codec.LineBasedFrameDecoder;
import io.netty.util.CharsetUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SmtpResponseDecoder extends LineBasedFrameDecoder {
    private List<CharSequence> details;

    public SmtpResponseDecoder(int i10) {
        super(i10);
    }

    private static DecoderException newDecoderException(ByteBuf byteBuf, int i10, int i11) {
        return new DecoderException("Received invalid line: '" + byteBuf.toString(i10, i11, CharsetUtil.US_ASCII) + '\'');
    }

    private static int parseCode(ByteBuf byteBuf) {
        return (parseNumber(byteBuf.readByte()) * 100) + (parseNumber(byteBuf.readByte()) * 10) + parseNumber(byteBuf.readByte());
    }

    private static int parseNumber(byte b10) {
        return Character.digit((char) b10, 10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.LineBasedFrameDecoder
    public SmtpResponse decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf) throws Exception {
        ByteBuf byteBuf2 = (ByteBuf) super.decode(channelHandlerContext, byteBuf);
        if (byteBuf2 == null) {
            return null;
        }
        try {
            int i10 = byteBuf2.readableBytes();
            int i11 = byteBuf2.readerIndex();
            if (i10 < 3) {
                throw newDecoderException(byteBuf, i11, i10);
            }
            int code = parseCode(byteBuf2);
            byte b10 = byteBuf2.readByte();
            String string = byteBuf2.isReadable() ? byteBuf2.toString(CharsetUtil.US_ASCII) : null;
            List listEmptyList = this.details;
            if (b10 == 32) {
                this.details = null;
                if (listEmptyList == null) {
                    listEmptyList = string == null ? Collections.emptyList() : Collections.singletonList(string);
                } else if (string != null) {
                    listEmptyList.add(string);
                }
                DefaultSmtpResponse defaultSmtpResponse = new DefaultSmtpResponse(code, (List<CharSequence>) listEmptyList);
                byteBuf2.release();
                return defaultSmtpResponse;
            }
            if (b10 != 45) {
                throw newDecoderException(byteBuf, i11, i10);
            }
            if (string != null) {
                if (listEmptyList == null) {
                    listEmptyList = new ArrayList(4);
                    this.details = listEmptyList;
                }
                listEmptyList.add(string);
            }
            byteBuf2.release();
            return null;
        } catch (Throwable th) {
            byteBuf2.release();
            throw th;
        }
    }
}
