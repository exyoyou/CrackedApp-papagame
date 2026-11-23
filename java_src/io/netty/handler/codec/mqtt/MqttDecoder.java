package io.netty.handler.codec.mqtt;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.DecoderException;
import io.netty.handler.codec.ReplayingDecoder;
import io.netty.util.CharsetUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MqttDecoder extends ReplayingDecoder<DecoderState> {
    private static final int DEFAULT_MAX_BYTES_IN_MESSAGE = 8092;
    private int bytesRemainingInVariablePart;
    private final int maxBytesInMessage;
    private MqttFixedHeader mqttFixedHeader;
    private Object variableHeader;

    /* JADX INFO: renamed from: io.netty.handler.codec.mqtt.MqttDecoder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$mqtt$MqttDecoder$DecoderState;
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType;

        static {
            int[] iArr = new int[MqttMessageType.values().length];
            $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType = iArr;
            try {
                iArr[MqttMessageType.CONNECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.CONNACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.SUBSCRIBE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.UNSUBSCRIBE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.SUBACK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.UNSUBACK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.PUBACK.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.PUBREC.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.PUBCOMP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.PUBREL.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.PUBLISH.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.PINGREQ.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.PINGRESP.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.DISCONNECT.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            int[] iArr2 = new int[DecoderState.values().length];
            $SwitchMap$io$netty$handler$codec$mqtt$MqttDecoder$DecoderState = iArr2;
            try {
                iArr2[DecoderState.READ_FIXED_HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttDecoder$DecoderState[DecoderState.READ_VARIABLE_HEADER.ordinal()] = 2;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttDecoder$DecoderState[DecoderState.READ_PAYLOAD.ordinal()] = 3;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttDecoder$DecoderState[DecoderState.BAD_MESSAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    enum DecoderState {
        READ_FIXED_HEADER,
        READ_VARIABLE_HEADER,
        READ_PAYLOAD,
        BAD_MESSAGE
    }

    private static final class Result<T> {
        private final int numberOfBytesConsumed;
        private final T value;

        Result(T t10, int i10) {
            this.value = t10;
            this.numberOfBytesConsumed = i10;
        }
    }

    public MqttDecoder() {
        this(DEFAULT_MAX_BYTES_IN_MESSAGE);
    }

    private static Result<byte[]> decodeByteArray(ByteBuf byteBuf) {
        Result<Integer> resultDecodeMsbLsb = decodeMsbLsb(byteBuf);
        int iIntValue = ((Integer) ((Result) resultDecodeMsbLsb).value).intValue();
        byte[] bArr = new byte[iIntValue];
        byteBuf.readBytes(bArr);
        return new Result<>(bArr, ((Result) resultDecodeMsbLsb).numberOfBytesConsumed + iIntValue);
    }

    private static Result<MqttConnAckVariableHeader> decodeConnAckVariableHeader(ByteBuf byteBuf) {
        return new Result<>(new MqttConnAckVariableHeader(MqttConnectReturnCode.valueOf(byteBuf.readByte()), (byteBuf.readUnsignedByte() & 1) == 1), 2);
    }

    private static Result<MqttConnectPayload> decodeConnectionPayload(ByteBuf byteBuf, MqttConnectVariableHeader mqttConnectVariableHeader) {
        Result<String> resultDecodeString;
        Result<byte[]> resultDecodeByteArray;
        Result<String> resultDecodeString2;
        Result<byte[]> resultDecodeByteArray2;
        Result<String> resultDecodeString3 = decodeString(byteBuf);
        String str = (String) ((Result) resultDecodeString3).value;
        if (!MqttCodecUtil.isValidClientId(MqttVersion.fromProtocolNameAndLevel(mqttConnectVariableHeader.name(), (byte) mqttConnectVariableHeader.version()), str)) {
            throw new MqttIdentifierRejectedException("invalid clientIdentifier: " + str);
        }
        int i10 = ((Result) resultDecodeString3).numberOfBytesConsumed;
        if (mqttConnectVariableHeader.isWillFlag()) {
            resultDecodeString = decodeString(byteBuf, 0, 32767);
            int i11 = i10 + ((Result) resultDecodeString).numberOfBytesConsumed;
            resultDecodeByteArray = decodeByteArray(byteBuf);
            i10 = i11 + ((Result) resultDecodeByteArray).numberOfBytesConsumed;
        } else {
            resultDecodeString = null;
            resultDecodeByteArray = null;
        }
        if (mqttConnectVariableHeader.hasUserName()) {
            resultDecodeString2 = decodeString(byteBuf);
            i10 += ((Result) resultDecodeString2).numberOfBytesConsumed;
        } else {
            resultDecodeString2 = null;
        }
        if (mqttConnectVariableHeader.hasPassword()) {
            resultDecodeByteArray2 = decodeByteArray(byteBuf);
            i10 += ((Result) resultDecodeByteArray2).numberOfBytesConsumed;
        } else {
            resultDecodeByteArray2 = null;
        }
        return new Result<>(new MqttConnectPayload((String) ((Result) resultDecodeString3).value, resultDecodeString != null ? (String) ((Result) resultDecodeString).value : null, resultDecodeByteArray != null ? (byte[]) ((Result) resultDecodeByteArray).value : null, resultDecodeString2 != null ? (String) ((Result) resultDecodeString2).value : null, resultDecodeByteArray2 != null ? (byte[]) ((Result) resultDecodeByteArray2).value : null), i10);
    }

    private static Result<MqttConnectVariableHeader> decodeConnectionVariableHeader(ByteBuf byteBuf) {
        Result<String> resultDecodeString = decodeString(byteBuf);
        int i10 = ((Result) resultDecodeString).numberOfBytesConsumed;
        MqttVersion mqttVersionFromProtocolNameAndLevel = MqttVersion.fromProtocolNameAndLevel((String) ((Result) resultDecodeString).value, byteBuf.readByte());
        short unsignedByte = byteBuf.readUnsignedByte();
        Result<Integer> resultDecodeMsbLsb = decodeMsbLsb(byteBuf);
        int i11 = i10 + 1 + 1 + ((Result) resultDecodeMsbLsb).numberOfBytesConsumed;
        boolean z10 = (unsignedByte & 128) == 128;
        boolean z11 = (unsignedByte & 64) == 64;
        boolean z12 = (unsignedByte & 32) == 32;
        int i12 = (unsignedByte & 24) >> 3;
        boolean z13 = (unsignedByte & 4) == 4;
        boolean z14 = (unsignedByte & 2) == 2;
        if (mqttVersionFromProtocolNameAndLevel == MqttVersion.MQTT_3_1_1) {
            if (!((unsignedByte & 1) == 0)) {
                throw new DecoderException("non-zero reserved flag");
            }
        }
        return new Result<>(new MqttConnectVariableHeader(mqttVersionFromProtocolNameAndLevel.protocolName(), mqttVersionFromProtocolNameAndLevel.protocolLevel(), z10, z11, z12, i12, z13, z14, ((Integer) ((Result) resultDecodeMsbLsb).value).intValue()), i11);
    }

    private static MqttFixedHeader decodeFixedHeader(ByteBuf byteBuf) {
        int i10;
        int i11;
        short unsignedByte = byteBuf.readUnsignedByte();
        MqttMessageType mqttMessageTypeValueOf = MqttMessageType.valueOf(unsignedByte >> 4);
        int i12 = 0;
        boolean z10 = (unsignedByte & 8) == 8;
        int i13 = (unsignedByte & 6) >> 1;
        boolean z11 = (unsignedByte & 1) != 0;
        int i14 = 0;
        int i15 = 1;
        while (true) {
            short unsignedByte2 = byteBuf.readUnsignedByte();
            i10 = ((unsignedByte2 & 127) * i15) + i12;
            i15 *= 128;
            i14++;
            i11 = unsignedByte2 & 128;
            if (i11 == 0 || i14 >= 4) {
                break;
            }
            i12 = i10;
        }
        if (i14 != 4 || i11 == 0) {
            return MqttCodecUtil.validateFixedHeader(MqttCodecUtil.resetUnusedFields(new MqttFixedHeader(mqttMessageTypeValueOf, z10, MqttQoS.valueOf(i13), z11, i10)));
        }
        throw new DecoderException("remaining length exceeds 4 digits (" + mqttMessageTypeValueOf + ')');
    }

    private static Result<Integer> decodeMessageId(ByteBuf byteBuf) {
        Result<Integer> resultDecodeMsbLsb = decodeMsbLsb(byteBuf);
        if (MqttCodecUtil.isValidMessageId(((Integer) ((Result) resultDecodeMsbLsb).value).intValue())) {
            return resultDecodeMsbLsb;
        }
        throw new DecoderException("invalid messageId: " + ((Result) resultDecodeMsbLsb).value);
    }

    private static Result<MqttMessageIdVariableHeader> decodeMessageIdVariableHeader(ByteBuf byteBuf) {
        Result<Integer> resultDecodeMessageId = decodeMessageId(byteBuf);
        return new Result<>(MqttMessageIdVariableHeader.from(((Integer) ((Result) resultDecodeMessageId).value).intValue()), ((Result) resultDecodeMessageId).numberOfBytesConsumed);
    }

    private static Result<Integer> decodeMsbLsb(ByteBuf byteBuf) {
        return decodeMsbLsb(byteBuf, 0, 65535);
    }

    private static Result<?> decodePayload(ByteBuf byteBuf, MqttMessageType mqttMessageType, int i10, Object obj) {
        int i11 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[mqttMessageType.ordinal()];
        if (i11 == 1) {
            return decodeConnectionPayload(byteBuf, (MqttConnectVariableHeader) obj);
        }
        if (i11 == 11) {
            return decodePublishPayload(byteBuf, i10);
        }
        if (i11 == 3) {
            return decodeSubscribePayload(byteBuf, i10);
        }
        if (i11 != 4) {
            return i11 != 5 ? new Result<>(null, 0) : decodeSubackPayload(byteBuf, i10);
        }
        return decodeUnsubscribePayload(byteBuf, i10);
    }

    private static Result<ByteBuf> decodePublishPayload(ByteBuf byteBuf, int i10) {
        return new Result<>(byteBuf.readRetainedSlice(i10), i10);
    }

    private static Result<MqttPublishVariableHeader> decodePublishVariableHeader(ByteBuf byteBuf, MqttFixedHeader mqttFixedHeader) {
        int iIntValue;
        Result<String> resultDecodeString = decodeString(byteBuf);
        if (!MqttCodecUtil.isValidPublishTopicName((String) ((Result) resultDecodeString).value)) {
            throw new DecoderException("invalid publish topic name: " + ((String) ((Result) resultDecodeString).value) + " (contains wildcards)");
        }
        int i10 = ((Result) resultDecodeString).numberOfBytesConsumed;
        if (mqttFixedHeader.qosLevel().value() > 0) {
            Result<Integer> resultDecodeMessageId = decodeMessageId(byteBuf);
            iIntValue = ((Integer) ((Result) resultDecodeMessageId).value).intValue();
            i10 += ((Result) resultDecodeMessageId).numberOfBytesConsumed;
        } else {
            iIntValue = -1;
        }
        return new Result<>(new MqttPublishVariableHeader((String) ((Result) resultDecodeString).value, iIntValue), i10);
    }

    private static Result<String> decodeString(ByteBuf byteBuf) {
        return decodeString(byteBuf, 0, Integer.MAX_VALUE);
    }

    private static Result<MqttSubAckPayload> decodeSubackPayload(ByteBuf byteBuf, int i10) {
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 < i10) {
            int unsignedByte = byteBuf.readUnsignedByte();
            if (unsignedByte != MqttQoS.FAILURE.value()) {
                unsignedByte &= 3;
            }
            i11++;
            arrayList.add(Integer.valueOf(unsignedByte));
        }
        return new Result<>(new MqttSubAckPayload(arrayList), i11);
    }

    private static Result<MqttSubscribePayload> decodeSubscribePayload(ByteBuf byteBuf, int i10) {
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 < i10) {
            Result<String> resultDecodeString = decodeString(byteBuf);
            int i12 = i11 + ((Result) resultDecodeString).numberOfBytesConsumed;
            i11 = i12 + 1;
            arrayList.add(new MqttTopicSubscription((String) ((Result) resultDecodeString).value, MqttQoS.valueOf(byteBuf.readUnsignedByte() & 3)));
        }
        return new Result<>(new MqttSubscribePayload(arrayList), i11);
    }

    private static Result<MqttUnsubscribePayload> decodeUnsubscribePayload(ByteBuf byteBuf, int i10) {
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 < i10) {
            Result<String> resultDecodeString = decodeString(byteBuf);
            i11 += ((Result) resultDecodeString).numberOfBytesConsumed;
            arrayList.add(((Result) resultDecodeString).value);
        }
        return new Result<>(new MqttUnsubscribePayload(arrayList), i11);
    }

    private static Result<?> decodeVariableHeader(ByteBuf byteBuf, MqttFixedHeader mqttFixedHeader) {
        switch (AnonymousClass1.$SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[mqttFixedHeader.messageType().ordinal()]) {
            case 1:
                return decodeConnectionVariableHeader(byteBuf);
            case 2:
                return decodeConnAckVariableHeader(byteBuf);
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                return decodeMessageIdVariableHeader(byteBuf);
            case 11:
                return decodePublishVariableHeader(byteBuf, mqttFixedHeader);
            case 12:
            case 13:
            case 14:
                return new Result<>(null, 0);
            default:
                return new Result<>(null, 0);
        }
    }

    private MqttMessage invalidMessage(Throwable th) {
        checkpoint(DecoderState.BAD_MESSAGE);
        return MqttMessageFactory.newInvalidMessage(this.mqttFixedHeader, this.variableHeader, th);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0070 A[Catch: Exception -> 0x00b6, TryCatch #2 {Exception -> 0x00b6, blocks: (B:17:0x0057, B:19:0x0070, B:21:0x008a, B:22:0x00b5), top: B:37:0x0057 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x008a A[Catch: Exception -> 0x00b6, TryCatch #2 {Exception -> 0x00b6, blocks: (B:17:0x0057, B:19:0x0070, B:21:0x008a, B:22:0x00b5), top: B:37:0x0057 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:21:0x008a, please report this as an issue */
    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        Result<?> resultDecodePayload;
        int i10;
        int i11 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$mqtt$MqttDecoder$DecoderState[state().ordinal()];
        try {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        if (i11 != 4) {
                            throw new Error();
                        }
                        byteBuf.skipBytes(actualReadableBytes());
                        return;
                    }
                }
                try {
                    resultDecodePayload = decodePayload(byteBuf, this.mqttFixedHeader.messageType(), this.bytesRemainingInVariablePart, this.variableHeader);
                    i10 = this.bytesRemainingInVariablePart - ((Result) resultDecodePayload).numberOfBytesConsumed;
                    this.bytesRemainingInVariablePart = i10;
                    if (i10 == 0) {
                        checkpoint(DecoderState.READ_FIXED_HEADER);
                        MqttMessage mqttMessageNewMessage = MqttMessageFactory.newMessage(this.mqttFixedHeader, this.variableHeader, ((Result) resultDecodePayload).value);
                        this.mqttFixedHeader = null;
                        this.variableHeader = null;
                        list.add(mqttMessageNewMessage);
                        return;
                    }
                    throw new DecoderException("non-zero remaining payload bytes: " + this.bytesRemainingInVariablePart + " (" + this.mqttFixedHeader.messageType() + ')');
                } catch (Exception e10) {
                    list.add(invalidMessage(e10));
                    return;
                }
            }
            try {
                MqttFixedHeader mqttFixedHeaderDecodeFixedHeader = decodeFixedHeader(byteBuf);
                this.mqttFixedHeader = mqttFixedHeaderDecodeFixedHeader;
                this.bytesRemainingInVariablePart = mqttFixedHeaderDecodeFixedHeader.remainingLength();
                checkpoint(DecoderState.READ_VARIABLE_HEADER);
            } catch (Exception e11) {
                list.add(invalidMessage(e11));
                return;
            }
            Result<?> resultDecodeVariableHeader = decodeVariableHeader(byteBuf, this.mqttFixedHeader);
            this.variableHeader = ((Result) resultDecodeVariableHeader).value;
            int i12 = this.bytesRemainingInVariablePart;
            if (i12 > this.maxBytesInMessage) {
                throw new DecoderException("too large message: " + this.bytesRemainingInVariablePart + " bytes");
            }
            this.bytesRemainingInVariablePart = i12 - ((Result) resultDecodeVariableHeader).numberOfBytesConsumed;
            checkpoint(DecoderState.READ_PAYLOAD);
            resultDecodePayload = decodePayload(byteBuf, this.mqttFixedHeader.messageType(), this.bytesRemainingInVariablePart, this.variableHeader);
            i10 = this.bytesRemainingInVariablePart - ((Result) resultDecodePayload).numberOfBytesConsumed;
            this.bytesRemainingInVariablePart = i10;
            if (i10 == 0) {
                checkpoint(DecoderState.READ_FIXED_HEADER);
                MqttMessage mqttMessageNewMessage2 = MqttMessageFactory.newMessage(this.mqttFixedHeader, this.variableHeader, ((Result) resultDecodePayload).value);
                this.mqttFixedHeader = null;
                this.variableHeader = null;
                list.add(mqttMessageNewMessage2);
                return;
            }
            throw new DecoderException("non-zero remaining payload bytes: " + this.bytesRemainingInVariablePart + " (" + this.mqttFixedHeader.messageType() + ')');
        } catch (Exception e12) {
            list.add(invalidMessage(e12));
        }
    }

    public MqttDecoder(int i10) {
        super(DecoderState.READ_FIXED_HEADER);
        this.maxBytesInMessage = i10;
    }

    private static Result<Integer> decodeMsbLsb(ByteBuf byteBuf, int i10, int i11) {
        int unsignedByte = byteBuf.readUnsignedByte() | (byteBuf.readUnsignedByte() << 8);
        if (unsignedByte < i10 || unsignedByte > i11) {
            unsignedByte = -1;
        }
        return new Result<>(Integer.valueOf(unsignedByte), 2);
    }

    private static Result<String> decodeString(ByteBuf byteBuf, int i10, int i11) {
        Result<Integer> resultDecodeMsbLsb = decodeMsbLsb(byteBuf);
        int iIntValue = ((Integer) ((Result) resultDecodeMsbLsb).value).intValue();
        int i12 = ((Result) resultDecodeMsbLsb).numberOfBytesConsumed;
        if (iIntValue < i10 || iIntValue > i11) {
            byteBuf.skipBytes(iIntValue);
            return new Result<>(null, i12 + iIntValue);
        }
        String string = byteBuf.toString(byteBuf.readerIndex(), iIntValue, CharsetUtil.UTF_8);
        byteBuf.skipBytes(iIntValue);
        return new Result<>(string, i12 + iIntValue);
    }
}
