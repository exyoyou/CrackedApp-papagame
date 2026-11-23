package io.netty.handler.codec.mqtt;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.DecoderException;
import io.netty.handler.codec.MessageToMessageEncoder;
import io.netty.util.CharsetUtil;
import io.netty.util.internal.EmptyArrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ChannelHandler.Sharable
public final class MqttEncoder extends MessageToMessageEncoder<MqttMessage> {
    public static final MqttEncoder INSTANCE = new MqttEncoder();

    /* JADX INFO: renamed from: io.netty.handler.codec.mqtt.MqttEncoder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
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
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.PUBLISH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.SUBSCRIBE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.UNSUBSCRIBE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.SUBACK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.UNSUBACK.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.PUBACK.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.PUBREC.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.PUBREL.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[MqttMessageType.PUBCOMP.ordinal()] = 11;
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
        }
    }

    private MqttEncoder() {
    }

    static ByteBuf doEncode(ByteBufAllocator byteBufAllocator, MqttMessage mqttMessage) {
        switch (AnonymousClass1.$SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType[mqttMessage.fixedHeader().messageType().ordinal()]) {
            case 1:
                return encodeConnectMessage(byteBufAllocator, (MqttConnectMessage) mqttMessage);
            case 2:
                return encodeConnAckMessage(byteBufAllocator, (MqttConnAckMessage) mqttMessage);
            case 3:
                return encodePublishMessage(byteBufAllocator, (MqttPublishMessage) mqttMessage);
            case 4:
                return encodeSubscribeMessage(byteBufAllocator, (MqttSubscribeMessage) mqttMessage);
            case 5:
                return encodeUnsubscribeMessage(byteBufAllocator, (MqttUnsubscribeMessage) mqttMessage);
            case 6:
                return encodeSubAckMessage(byteBufAllocator, (MqttSubAckMessage) mqttMessage);
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                return encodeMessageWithOnlySingleByteFixedHeaderAndMessageId(byteBufAllocator, mqttMessage);
            case 12:
            case 13:
            case 14:
                return encodeMessageWithOnlySingleByteFixedHeader(byteBufAllocator, mqttMessage);
            default:
                throw new IllegalArgumentException("Unknown message type: " + mqttMessage.fixedHeader().messageType().value());
        }
    }

    private static ByteBuf encodeConnAckMessage(ByteBufAllocator byteBufAllocator, MqttConnAckMessage mqttConnAckMessage) {
        ByteBuf byteBufBuffer = byteBufAllocator.buffer(4);
        byteBufBuffer.writeByte(getFixedHeaderByte1(mqttConnAckMessage.fixedHeader()));
        byteBufBuffer.writeByte(2);
        byteBufBuffer.writeByte(mqttConnAckMessage.variableHeader().isSessionPresent() ? 1 : 0);
        byteBufBuffer.writeByte(mqttConnAckMessage.variableHeader().connectReturnCode().byteValue());
        return byteBufBuffer;
    }

    private static ByteBuf encodeConnectMessage(ByteBufAllocator byteBufAllocator, MqttConnectMessage mqttConnectMessage) {
        MqttFixedHeader mqttFixedHeaderFixedHeader = mqttConnectMessage.fixedHeader();
        MqttConnectVariableHeader mqttConnectVariableHeaderVariableHeader = mqttConnectMessage.variableHeader();
        MqttConnectPayload mqttConnectPayloadPayload = mqttConnectMessage.payload();
        MqttVersion mqttVersionFromProtocolNameAndLevel = MqttVersion.fromProtocolNameAndLevel(mqttConnectVariableHeaderVariableHeader.name(), (byte) mqttConnectVariableHeaderVariableHeader.version());
        if (!mqttConnectVariableHeaderVariableHeader.hasUserName() && mqttConnectVariableHeaderVariableHeader.hasPassword()) {
            throw new DecoderException("Without a username, the password MUST be not set");
        }
        String strClientIdentifier = mqttConnectPayloadPayload.clientIdentifier();
        if (!MqttCodecUtil.isValidClientId(mqttVersionFromProtocolNameAndLevel, strClientIdentifier)) {
            throw new MqttIdentifierRejectedException("invalid clientIdentifier: " + strClientIdentifier);
        }
        byte[] bArrEncodeStringUtf8 = encodeStringUtf8(strClientIdentifier);
        int length = bArrEncodeStringUtf8.length + 2 + 0;
        String strWillTopic = mqttConnectPayloadPayload.willTopic();
        byte[] bArrEncodeStringUtf9 = strWillTopic != null ? encodeStringUtf8(strWillTopic) : EmptyArrays.EMPTY_BYTES;
        byte[] bArrWillMessageInBytes = mqttConnectPayloadPayload.willMessageInBytes();
        if (bArrWillMessageInBytes == null) {
            bArrWillMessageInBytes = EmptyArrays.EMPTY_BYTES;
        }
        if (mqttConnectVariableHeaderVariableHeader.isWillFlag()) {
            length = length + bArrEncodeStringUtf9.length + 2 + bArrWillMessageInBytes.length + 2;
        }
        String strUserName = mqttConnectPayloadPayload.userName();
        byte[] bArrEncodeStringUtf10 = strUserName != null ? encodeStringUtf8(strUserName) : EmptyArrays.EMPTY_BYTES;
        if (mqttConnectVariableHeaderVariableHeader.hasUserName()) {
            length += bArrEncodeStringUtf10.length + 2;
        }
        byte[] bArrPasswordInBytes = mqttConnectPayloadPayload.passwordInBytes();
        if (bArrPasswordInBytes == null) {
            bArrPasswordInBytes = EmptyArrays.EMPTY_BYTES;
        }
        if (mqttConnectVariableHeaderVariableHeader.hasPassword()) {
            length += bArrPasswordInBytes.length + 2;
        }
        byte[] bArrProtocolNameBytes = mqttVersionFromProtocolNameAndLevel.protocolNameBytes();
        int length2 = bArrProtocolNameBytes.length + 2 + 4 + length;
        ByteBuf byteBufBuffer = byteBufAllocator.buffer(getVariableLengthInt(length2) + 1 + length2);
        byteBufBuffer.writeByte(getFixedHeaderByte1(mqttFixedHeaderFixedHeader));
        writeVariableLengthInt(byteBufBuffer, length2);
        byteBufBuffer.writeShort(bArrProtocolNameBytes.length);
        byteBufBuffer.writeBytes(bArrProtocolNameBytes);
        byteBufBuffer.writeByte(mqttConnectVariableHeaderVariableHeader.version());
        byteBufBuffer.writeByte(getConnVariableHeaderFlag(mqttConnectVariableHeaderVariableHeader));
        byteBufBuffer.writeShort(mqttConnectVariableHeaderVariableHeader.keepAliveTimeSeconds());
        byteBufBuffer.writeShort(bArrEncodeStringUtf8.length);
        byteBufBuffer.writeBytes(bArrEncodeStringUtf8, 0, bArrEncodeStringUtf8.length);
        if (mqttConnectVariableHeaderVariableHeader.isWillFlag()) {
            byteBufBuffer.writeShort(bArrEncodeStringUtf9.length);
            byteBufBuffer.writeBytes(bArrEncodeStringUtf9, 0, bArrEncodeStringUtf9.length);
            byteBufBuffer.writeShort(bArrWillMessageInBytes.length);
            byteBufBuffer.writeBytes(bArrWillMessageInBytes, 0, bArrWillMessageInBytes.length);
        }
        if (mqttConnectVariableHeaderVariableHeader.hasUserName()) {
            byteBufBuffer.writeShort(bArrEncodeStringUtf10.length);
            byteBufBuffer.writeBytes(bArrEncodeStringUtf10, 0, bArrEncodeStringUtf10.length);
        }
        if (mqttConnectVariableHeaderVariableHeader.hasPassword()) {
            byteBufBuffer.writeShort(bArrPasswordInBytes.length);
            byteBufBuffer.writeBytes(bArrPasswordInBytes, 0, bArrPasswordInBytes.length);
        }
        return byteBufBuffer;
    }

    private static ByteBuf encodeMessageWithOnlySingleByteFixedHeader(ByteBufAllocator byteBufAllocator, MqttMessage mqttMessage) {
        MqttFixedHeader mqttFixedHeaderFixedHeader = mqttMessage.fixedHeader();
        ByteBuf byteBufBuffer = byteBufAllocator.buffer(2);
        byteBufBuffer.writeByte(getFixedHeaderByte1(mqttFixedHeaderFixedHeader));
        byteBufBuffer.writeByte(0);
        return byteBufBuffer;
    }

    private static ByteBuf encodeMessageWithOnlySingleByteFixedHeaderAndMessageId(ByteBufAllocator byteBufAllocator, MqttMessage mqttMessage) {
        MqttFixedHeader mqttFixedHeaderFixedHeader = mqttMessage.fixedHeader();
        int iMessageId = ((MqttMessageIdVariableHeader) mqttMessage.variableHeader()).messageId();
        ByteBuf byteBufBuffer = byteBufAllocator.buffer(getVariableLengthInt(2) + 1 + 2);
        byteBufBuffer.writeByte(getFixedHeaderByte1(mqttFixedHeaderFixedHeader));
        writeVariableLengthInt(byteBufBuffer, 2);
        byteBufBuffer.writeShort(iMessageId);
        return byteBufBuffer;
    }

    private static ByteBuf encodePublishMessage(ByteBufAllocator byteBufAllocator, MqttPublishMessage mqttPublishMessage) {
        MqttFixedHeader mqttFixedHeaderFixedHeader = mqttPublishMessage.fixedHeader();
        MqttPublishVariableHeader mqttPublishVariableHeaderVariableHeader = mqttPublishMessage.variableHeader();
        ByteBuf byteBufDuplicate = mqttPublishMessage.payload().duplicate();
        byte[] bArrEncodeStringUtf8 = encodeStringUtf8(mqttPublishVariableHeaderVariableHeader.topicName());
        int length = bArrEncodeStringUtf8.length + 2 + (mqttFixedHeaderFixedHeader.qosLevel().value() <= 0 ? 0 : 2) + byteBufDuplicate.readableBytes();
        ByteBuf byteBufBuffer = byteBufAllocator.buffer(getVariableLengthInt(length) + 1 + length);
        byteBufBuffer.writeByte(getFixedHeaderByte1(mqttFixedHeaderFixedHeader));
        writeVariableLengthInt(byteBufBuffer, length);
        byteBufBuffer.writeShort(bArrEncodeStringUtf8.length);
        byteBufBuffer.writeBytes(bArrEncodeStringUtf8);
        if (mqttFixedHeaderFixedHeader.qosLevel().value() > 0) {
            byteBufBuffer.writeShort(mqttPublishVariableHeaderVariableHeader.messageId());
        }
        byteBufBuffer.writeBytes(byteBufDuplicate);
        return byteBufBuffer;
    }

    private static byte[] encodeStringUtf8(String str) {
        return str.getBytes(CharsetUtil.UTF_8);
    }

    private static ByteBuf encodeSubAckMessage(ByteBufAllocator byteBufAllocator, MqttSubAckMessage mqttSubAckMessage) {
        int size = mqttSubAckMessage.payload().grantedQoSLevels().size() + 2;
        ByteBuf byteBufBuffer = byteBufAllocator.buffer(getVariableLengthInt(size) + 1 + size);
        byteBufBuffer.writeByte(getFixedHeaderByte1(mqttSubAckMessage.fixedHeader()));
        writeVariableLengthInt(byteBufBuffer, size);
        byteBufBuffer.writeShort(mqttSubAckMessage.variableHeader().messageId());
        Iterator<Integer> it2 = mqttSubAckMessage.payload().grantedQoSLevels().iterator();
        while (it2.hasNext()) {
            byteBufBuffer.writeByte(it2.next().intValue());
        }
        return byteBufBuffer;
    }

    private static ByteBuf encodeSubscribeMessage(ByteBufAllocator byteBufAllocator, MqttSubscribeMessage mqttSubscribeMessage) {
        MqttFixedHeader mqttFixedHeaderFixedHeader = mqttSubscribeMessage.fixedHeader();
        MqttMessageIdVariableHeader mqttMessageIdVariableHeaderVariableHeader = mqttSubscribeMessage.variableHeader();
        MqttSubscribePayload mqttSubscribePayloadPayload = mqttSubscribeMessage.payload();
        Iterator<MqttTopicSubscription> it2 = mqttSubscribePayloadPayload.topicSubscriptions().iterator();
        int length = 0;
        while (it2.hasNext()) {
            length = length + encodeStringUtf8(it2.next().topicName()).length + 2 + 1;
        }
        int i10 = 2 + length;
        ByteBuf byteBufBuffer = byteBufAllocator.buffer(getVariableLengthInt(i10) + 1 + i10);
        byteBufBuffer.writeByte(getFixedHeaderByte1(mqttFixedHeaderFixedHeader));
        writeVariableLengthInt(byteBufBuffer, i10);
        byteBufBuffer.writeShort(mqttMessageIdVariableHeaderVariableHeader.messageId());
        for (MqttTopicSubscription mqttTopicSubscription : mqttSubscribePayloadPayload.topicSubscriptions()) {
            byte[] bArrEncodeStringUtf8 = encodeStringUtf8(mqttTopicSubscription.topicName());
            byteBufBuffer.writeShort(bArrEncodeStringUtf8.length);
            byteBufBuffer.writeBytes(bArrEncodeStringUtf8, 0, bArrEncodeStringUtf8.length);
            byteBufBuffer.writeByte(mqttTopicSubscription.qualityOfService().value());
        }
        return byteBufBuffer;
    }

    private static ByteBuf encodeUnsubscribeMessage(ByteBufAllocator byteBufAllocator, MqttUnsubscribeMessage mqttUnsubscribeMessage) {
        MqttFixedHeader mqttFixedHeaderFixedHeader = mqttUnsubscribeMessage.fixedHeader();
        MqttMessageIdVariableHeader mqttMessageIdVariableHeaderVariableHeader = mqttUnsubscribeMessage.variableHeader();
        MqttUnsubscribePayload mqttUnsubscribePayloadPayload = mqttUnsubscribeMessage.payload();
        Iterator<String> it2 = mqttUnsubscribePayloadPayload.topics().iterator();
        int length = 0;
        while (it2.hasNext()) {
            length += encodeStringUtf8(it2.next()).length + 2;
        }
        int i10 = 2 + length;
        ByteBuf byteBufBuffer = byteBufAllocator.buffer(getVariableLengthInt(i10) + 1 + i10);
        byteBufBuffer.writeByte(getFixedHeaderByte1(mqttFixedHeaderFixedHeader));
        writeVariableLengthInt(byteBufBuffer, i10);
        byteBufBuffer.writeShort(mqttMessageIdVariableHeaderVariableHeader.messageId());
        Iterator<String> it3 = mqttUnsubscribePayloadPayload.topics().iterator();
        while (it3.hasNext()) {
            byte[] bArrEncodeStringUtf8 = encodeStringUtf8(it3.next());
            byteBufBuffer.writeShort(bArrEncodeStringUtf8.length);
            byteBufBuffer.writeBytes(bArrEncodeStringUtf8, 0, bArrEncodeStringUtf8.length);
        }
        return byteBufBuffer;
    }

    private static int getConnVariableHeaderFlag(MqttConnectVariableHeader mqttConnectVariableHeader) {
        int i10 = mqttConnectVariableHeader.hasUserName() ? 128 : 0;
        if (mqttConnectVariableHeader.hasPassword()) {
            i10 |= 64;
        }
        if (mqttConnectVariableHeader.isWillRetain()) {
            i10 |= 32;
        }
        int iWillQos = i10 | ((mqttConnectVariableHeader.willQos() & 3) << 3);
        if (mqttConnectVariableHeader.isWillFlag()) {
            iWillQos |= 4;
        }
        return mqttConnectVariableHeader.isCleanSession() ? iWillQos | 2 : iWillQos;
    }

    private static int getFixedHeaderByte1(MqttFixedHeader mqttFixedHeader) {
        int iValue = (mqttFixedHeader.messageType().value() << 4) | 0;
        if (mqttFixedHeader.isDup()) {
            iValue |= 8;
        }
        int iValue2 = iValue | (mqttFixedHeader.qosLevel().value() << 1);
        return mqttFixedHeader.isRetain() ? iValue2 | 1 : iValue2;
    }

    private static int getVariableLengthInt(int i10) {
        int i11 = 0;
        do {
            i10 /= 128;
            i11++;
        } while (i10 > 0);
        return i11;
    }

    private static void writeVariableLengthInt(ByteBuf byteBuf, int i10) {
        do {
            int i11 = i10 % 128;
            i10 /= 128;
            if (i10 > 0) {
                i11 |= 128;
            }
            byteBuf.writeByte(i11);
        } while (i10 > 0);
    }

    @Override // io.netty.handler.codec.MessageToMessageEncoder
    protected /* bridge */ /* synthetic */ void encode(ChannelHandlerContext channelHandlerContext, MqttMessage mqttMessage, List list) throws Exception {
        encode2(channelHandlerContext, mqttMessage, (List<Object>) list);
    }

    /* JADX INFO: renamed from: encode, reason: avoid collision after fix types in other method */
    protected void encode2(ChannelHandlerContext channelHandlerContext, MqttMessage mqttMessage, List<Object> list) throws Exception {
        list.add(doEncode(channelHandlerContext.alloc(), mqttMessage));
    }
}
