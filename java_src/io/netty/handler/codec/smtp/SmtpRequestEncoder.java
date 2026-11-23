package io.netty.handler.codec.smtp;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.MessageToMessageEncoder;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public final class SmtpRequestEncoder extends MessageToMessageEncoder<Object> {
    private static final int CRLF_SHORT = 3338;
    private static final ByteBuf DOT_CRLF_BUFFER = Unpooled.unreleasableBuffer(Unpooled.directBuffer(3).writeByte(46).writeByte(13).writeByte(10));
    private static final byte SP = 32;
    private boolean contentExpected;

    private static void writeParameters(List<CharSequence> list, ByteBuf byteBuf, boolean z10) {
        if (list.isEmpty()) {
            return;
        }
        if (z10) {
            byteBuf.writeByte(32);
        }
        if (list instanceof RandomAccess) {
            int size = list.size() - 1;
            for (int i10 = 0; i10 < size; i10++) {
                ByteBufUtil.writeAscii(byteBuf, list.get(i10));
                byteBuf.writeByte(32);
            }
            ByteBufUtil.writeAscii(byteBuf, list.get(size));
            return;
        }
        Iterator<CharSequence> it2 = list.iterator();
        while (true) {
            ByteBufUtil.writeAscii(byteBuf, it2.next());
            if (!it2.hasNext()) {
                return;
            } else {
                byteBuf.writeByte(32);
            }
        }
    }

    @Override // io.netty.handler.codec.MessageToMessageEncoder
    public boolean acceptOutboundMessage(Object obj) throws Exception {
        return (obj instanceof SmtpRequest) || (obj instanceof SmtpContent);
    }

    @Override // io.netty.handler.codec.MessageToMessageEncoder
    protected void encode(ChannelHandlerContext channelHandlerContext, Object obj, List<Object> list) throws Exception {
        boolean z10 = false;
        if (obj instanceof SmtpRequest) {
            SmtpRequest smtpRequest = (SmtpRequest) obj;
            if (this.contentExpected) {
                if (!smtpRequest.command().equals(SmtpCommand.RSET)) {
                    throw new IllegalStateException("SmtpContent expected");
                }
                this.contentExpected = false;
            }
            ByteBuf byteBufBuffer = channelHandlerContext.alloc().buffer();
            try {
                smtpRequest.command().encode(byteBufBuffer);
                writeParameters(smtpRequest.parameters(), byteBufBuffer, smtpRequest.command() != SmtpCommand.EMPTY);
                ByteBufUtil.writeShortBE(byteBufBuffer, CRLF_SHORT);
                list.add(byteBufBuffer);
                try {
                    if (smtpRequest.command().isContentExpected()) {
                        this.contentExpected = true;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (z10) {
                        byteBufBuffer.release();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                z10 = true;
            }
        }
        if (obj instanceof SmtpContent) {
            if (!this.contentExpected) {
                throw new IllegalStateException("No SmtpContent expected");
            }
            list.add(((SmtpContent) obj).content().retain());
            if (obj instanceof LastSmtpContent) {
                list.add(DOT_CRLF_BUFFER.retainedDuplicate());
                this.contentExpected = false;
            }
        }
    }
}
