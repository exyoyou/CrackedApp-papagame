package io.netty.handler.codec.socksx.v4;

import com.join.mgps.socket.entity.b;
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.DecoderException;
import io.netty.handler.codec.DecoderResult;
import io.netty.handler.codec.ReplayingDecoder;
import io.netty.handler.codec.socksx.SocksVersion;
import io.netty.util.CharsetUtil;
import io.netty.util.NetUtil;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Socks4ServerDecoder extends ReplayingDecoder<State> {
    private static final int MAX_FIELD_LENGTH = 255;
    private String dstAddr;
    private int dstPort;
    private Socks4CommandType type;
    private String userId;

    /* JADX INFO: renamed from: io.netty.handler.codec.socksx.v4.Socks4ServerDecoder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$socksx$v4$Socks4ServerDecoder$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$io$netty$handler$codec$socksx$v4$Socks4ServerDecoder$State = iArr;
            try {
                iArr[State.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$socksx$v4$Socks4ServerDecoder$State[State.READ_USERID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$socksx$v4$Socks4ServerDecoder$State[State.READ_DOMAIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$socksx$v4$Socks4ServerDecoder$State[State.SUCCESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$socksx$v4$Socks4ServerDecoder$State[State.FAILURE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    enum State {
        START,
        READ_USERID,
        READ_DOMAIN,
        SUCCESS,
        FAILURE
    }

    public Socks4ServerDecoder() {
        super(State.START);
        setSingleDecode(true);
    }

    private void fail(List<Object> list, Exception exc) {
        if (!(exc instanceof DecoderException)) {
            exc = new DecoderException(exc);
        }
        Socks4CommandType socks4CommandType = this.type;
        if (socks4CommandType == null) {
            socks4CommandType = Socks4CommandType.CONNECT;
        }
        String str = this.dstAddr;
        if (str == null) {
            str = "";
        }
        int i10 = this.dstPort;
        if (i10 == 0) {
            i10 = 65535;
        }
        String str2 = this.userId;
        DefaultSocks4CommandRequest defaultSocks4CommandRequest = new DefaultSocks4CommandRequest(socks4CommandType, str, i10, str2 != null ? str2 : "");
        defaultSocks4CommandRequest.setDecoderResult(DecoderResult.failure(exc));
        list.add(defaultSocks4CommandRequest);
        checkpoint(State.FAILURE);
    }

    private static String readString(String str, ByteBuf byteBuf) {
        int iBytesBefore = byteBuf.bytesBefore(256, (byte) 0);
        if (iBytesBefore >= 0) {
            String string = byteBuf.readSlice(iBytesBefore).toString(CharsetUtil.US_ASCII);
            byteBuf.skipBytes(1);
            return string;
        }
        throw new DecoderException("field '" + str + "' longer than 255 chars");
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0097 A[Catch: Exception -> 0x00b6, TryCatch #0 {Exception -> 0x00b6, blocks: (B:2:0x0000, B:13:0x001f, B:24:0x0091, B:26:0x0097, B:18:0x0060, B:20:0x006a, B:22:0x0074, B:23:0x007c, B:17:0x0053, B:14:0x0028, B:16:0x0034, B:27:0x009f, B:28:0x00b5), top: B:32:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:35:? A[RETURN, SYNTHETIC] */
    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        int iActualReadableBytes;
        try {
            int i10 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$socksx$v4$Socks4ServerDecoder$State[state().ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                return;
                            }
                            byteBuf.skipBytes(actualReadableBytes());
                            return;
                        }
                    }
                    iActualReadableBytes = actualReadableBytes();
                    if (iActualReadableBytes > 0) {
                        list.add(byteBuf.readRetainedSlice(iActualReadableBytes));
                    }
                }
                if (!b.f73008j.equals(this.dstAddr) && this.dstAddr.startsWith("0.0.0.")) {
                    this.dstAddr = readString("dstAddr", byteBuf);
                }
                list.add(new DefaultSocks4CommandRequest(this.type, this.dstAddr, this.dstPort, this.userId));
                checkpoint(State.SUCCESS);
                iActualReadableBytes = actualReadableBytes();
                if (iActualReadableBytes > 0) {
                    list.add(byteBuf.readRetainedSlice(iActualReadableBytes));
                }
            }
            short unsignedByte = byteBuf.readUnsignedByte();
            if (unsignedByte != SocksVersion.SOCKS4a.byteValue()) {
                throw new DecoderException("unsupported protocol version: " + ((int) unsignedByte));
            }
            this.type = Socks4CommandType.valueOf(byteBuf.readByte());
            this.dstPort = byteBuf.readUnsignedShort();
            this.dstAddr = NetUtil.intToIpAddress(byteBuf.readInt());
            checkpoint(State.READ_USERID);
            this.userId = readString("userid", byteBuf);
            checkpoint(State.READ_DOMAIN);
            if (!b.f73008j.equals(this.dstAddr)) {
                this.dstAddr = readString("dstAddr", byteBuf);
            }
            list.add(new DefaultSocks4CommandRequest(this.type, this.dstAddr, this.dstPort, this.userId));
            checkpoint(State.SUCCESS);
            iActualReadableBytes = actualReadableBytes();
            if (iActualReadableBytes > 0) {
                list.add(byteBuf.readRetainedSlice(iActualReadableBytes));
            }
        } catch (Exception e10) {
            fail(list, e10);
        }
    }
}
