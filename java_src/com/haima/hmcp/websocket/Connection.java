package com.haima.hmcp.websocket;

import com.haima.hmcp.websocket.exceptions.ParseFailed;
import com.haima.hmcp.websocket.messages.BinaryMessage;
import com.haima.hmcp.websocket.messages.ClientHandshake;
import com.haima.hmcp.websocket.messages.Close;
import com.haima.hmcp.websocket.messages.Message;
import com.haima.hmcp.websocket.messages.Ping;
import com.haima.hmcp.websocket.messages.Pong;
import com.haima.hmcp.websocket.messages.RawTextMessage;
import com.haima.hmcp.websocket.messages.TextMessage;
import com.haima.hmcp.websocket.types.WebSocketOptions;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes5.dex */
public class Connection {
    private WebSocketOptions mOptions;
    private FrameProtocol mProtocol = new FrameProtocol();

    public Connection(WebSocketOptions webSocketOptions) {
        this.mOptions = webSocketOptions;
    }

    private byte[] sendText(String str) throws ParseFailed {
        try {
            return sendText(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            throw new ParseFailed("payload is an invalid utf-8 string");
        }
    }

    public byte[] send(Message message) throws ParseFailed {
        if (message instanceof TextMessage) {
            return sendText(((TextMessage) message).mPayload);
        }
        if (message instanceof RawTextMessage) {
            return sendText(((RawTextMessage) message).mPayload);
        }
        if (message instanceof BinaryMessage) {
            BinaryMessage binaryMessage = (BinaryMessage) message;
            if (binaryMessage.mPayload.length <= this.mOptions.getMaxMessagePayloadSize()) {
                return this.mProtocol.sendBinary(binaryMessage.mPayload);
            }
            throw new ParseFailed("message payload exceeds payload limit" + binaryMessage.mPayload.length + "----" + this.mOptions.getMaxMessagePayloadSize());
        }
        if (message instanceof Ping) {
            return this.mProtocol.ping(((Ping) message).mPayload);
        }
        if (message instanceof Pong) {
            return this.mProtocol.pong(((Pong) message).mPayload);
        }
        if (message instanceof Close) {
            Close close = (Close) message;
            return this.mProtocol.close(close.mCode, close.mReason);
        }
        if (message instanceof ClientHandshake) {
            return Handshake.handshake((ClientHandshake) message);
        }
        throw new ParseFailed("unknown message received by WebSocketWriter");
    }

    private byte[] sendText(byte[] bArr) throws ParseFailed {
        if (bArr.length <= this.mOptions.getMaxMessagePayloadSize()) {
            return this.mProtocol.sendText(bArr);
        }
        throw new ParseFailed("message payload exceeds payload limit" + bArr.length + "----" + this.mOptions.getMaxMessagePayloadSize());
    }
}
