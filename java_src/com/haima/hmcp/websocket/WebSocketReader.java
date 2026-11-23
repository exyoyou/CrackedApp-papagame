package com.haima.hmcp.websocket;

import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.websocket.exceptions.WebSocketException;
import com.haima.hmcp.websocket.interfaces.IThreadMessenger;
import com.haima.hmcp.websocket.messages.BinaryMessage;
import com.haima.hmcp.websocket.messages.Close;
import com.haima.hmcp.websocket.messages.ConnectionLost;
import com.haima.hmcp.websocket.messages.Ping;
import com.haima.hmcp.websocket.messages.Pong;
import com.haima.hmcp.websocket.messages.ProtocolViolation;
import com.haima.hmcp.websocket.messages.RawTextMessage;
import com.haima.hmcp.websocket.messages.ServerError;
import com.haima.hmcp.websocket.messages.ServerHandshake;
import com.haima.hmcp.websocket.messages.TextMessage;
import com.haima.hmcp.websocket.types.WebSocketOptions;
import com.haima.hmcp.websocket.utils.Utf8Validator;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.Socket;
import java.net.SocketException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes5.dex */
class WebSocketReader extends Thread {
    private static final int STATE_CLOSED = 0;
    private static final int STATE_CLOSING = 2;
    private static final int STATE_CONNECTING = 1;
    private static final int STATE_OPEN = 3;
    private static final String TAG = "com.haima.hmcp.websocket.WebSocketReader";
    private BufferedInputStream mBufferedStream;
    private FrameHeader mFrameHeader;
    private boolean mInsideMessage;
    private byte[] mMessageData;
    private int mMessageOpcode;
    private ByteArrayOutputStream mMessagePayload;
    private final IThreadMessenger mMessenger;
    private final WebSocketOptions mOptions;
    private int mPosition;
    private Socket mSocket;
    private int mState;
    private boolean mStopped;
    private Utf8Validator mUtf8Validator;

    private static class FrameHeader {
        public boolean mFin;
        public int mHeaderLen;
        public byte[] mMask;
        public int mOpcode;
        public int mPayloadLen;
        public int mReserved;
        public int mTotalLen;

        private FrameHeader() {
        }
    }

    public WebSocketReader(IThreadMessenger iThreadMessenger, Socket socket, WebSocketOptions webSocketOptions, String str) throws IOException {
        super(str);
        this.mStopped = false;
        this.mInsideMessage = false;
        this.mUtf8Validator = new Utf8Validator();
        this.mMessenger = iThreadMessenger;
        this.mOptions = webSocketOptions;
        this.mSocket = socket;
        this.mMessageData = new byte[webSocketOptions.getMaxFramePayloadSize() + 14];
        this.mBufferedStream = new BufferedInputStream(this.mSocket.getInputStream(), webSocketOptions.getMaxFramePayloadSize() + 14);
        this.mMessagePayload = new ByteArrayOutputStream(webSocketOptions.getMaxMessagePayloadSize());
        this.mFrameHeader = null;
        this.mState = 1;
        LogUtils.d(TAG, "Created");
    }

    private boolean consumeData() throws Exception {
        int i10 = this.mState;
        if (i10 == 3 || i10 == 2) {
            return processData();
        }
        if (i10 == 1) {
            return processHandshake();
        }
        return false;
    }

    private void emitServerError(String str) {
        this.mMessenger.notify(new ServerError(str));
        this.mState = 0;
        this.mStopped = true;
    }

    private Map<String, String> parseHttpHeaders(String[] strArr) {
        HashMap map = new HashMap();
        for (String str : strArr) {
            if (str.length() > 0) {
                String[] strArrSplit = str.split(": ");
                if (strArrSplit.length == 2) {
                    map.put(strArrSplit[0].toLowerCase(), strArrSplit[1]);
                    LogUtils.d(TAG, String.format(Locale.US, "'%s'='%s'", strArrSplit[0].toLowerCase(), strArrSplit[1]));
                }
            }
        }
        return map;
    }

    private boolean processData() throws Exception {
        byte[] bArr;
        FrameHeader frameHeader;
        int i10;
        String str;
        int i11;
        long j10;
        int i12;
        FrameHeader frameHeader2 = this.mFrameHeader;
        if (frameHeader2 != null) {
            if (this.mPosition < frameHeader2.mTotalLen) {
                return false;
            }
            int i13 = frameHeader2.mPayloadLen;
            if (i13 > 0) {
                bArr = new byte[i13];
                System.arraycopy(this.mMessageData, frameHeader2.mHeaderLen, bArr, 0, i13);
            } else {
                bArr = null;
            }
            byte[] bArr2 = this.mMessageData;
            int i14 = this.mFrameHeader.mTotalLen;
            System.arraycopy(bArr2, i14, bArr2, 0, bArr2.length - i14);
            int i15 = this.mPosition;
            FrameHeader frameHeader3 = this.mFrameHeader;
            this.mPosition = i15 - frameHeader3.mTotalLen;
            int i16 = frameHeader3.mOpcode;
            if (i16 > 7) {
                if (i16 == 8) {
                    int i17 = frameHeader3.mPayloadLen;
                    if (i17 >= 2) {
                        i10 = ((bArr[0] & 255) * 256) + (bArr[1] & 255);
                        if (i10 < 1000 || (!(i10 < 1000 || i10 > 2999 || i10 == 1000 || i10 == 1001 || i10 == 1002 || i10 == 1003 || i10 == 1007 || i10 == 1008 || i10 == 1009 || i10 == 1010 || i10 == 1011) || i10 >= 5000)) {
                            throw new WebSocketException("invalid close code " + i10);
                        }
                        if (i17 > 2) {
                            byte[] bArr3 = new byte[i17 - 2];
                            System.arraycopy(bArr, 2, bArr3, 0, i17 - 2);
                            Utf8Validator utf8Validator = new Utf8Validator();
                            utf8Validator.validate(bArr3);
                            if (!utf8Validator.isValid()) {
                                throw new WebSocketException("invalid close reasons (not UTF-8)");
                            }
                            str = new String(bArr3, "UTF-8");
                        }
                        onClose(i10, str);
                        this.mState = 0;
                    } else {
                        i10 = 1005;
                    }
                    str = null;
                    onClose(i10, str);
                    this.mState = 0;
                } else if (i16 == 9) {
                    onPing(bArr);
                } else {
                    if (i16 != 10) {
                        throw new Exception("logic error");
                    }
                    onPong(bArr);
                }
                frameHeader = null;
            } else {
                if (!this.mInsideMessage) {
                    this.mInsideMessage = true;
                    this.mMessageOpcode = i16;
                    if (i16 == 1 && this.mOptions.getValidateIncomingUtf8()) {
                        this.mUtf8Validator.reset();
                    }
                }
                if (bArr != null) {
                    if (this.mMessagePayload.size() + bArr.length > this.mOptions.getMaxMessagePayloadSize()) {
                        throw new WebSocketException("message payload too large");
                    }
                    if (this.mMessageOpcode == 1 && this.mOptions.getValidateIncomingUtf8() && !this.mUtf8Validator.validate(bArr)) {
                        throw new WebSocketException("invalid UTF-8 in text message payload");
                    }
                    this.mMessagePayload.write(bArr);
                }
                if (this.mFrameHeader.mFin) {
                    int i18 = this.mMessageOpcode;
                    if (i18 == 1) {
                        if (this.mOptions.getValidateIncomingUtf8() && !this.mUtf8Validator.isValid()) {
                            throw new WebSocketException("UTF-8 text message payload ended within Unicode code point");
                        }
                        if (this.mOptions.getReceiveTextMessagesRaw()) {
                            onRawTextMessage(this.mMessagePayload.toByteArray());
                        } else {
                            onTextMessage(new String(this.mMessagePayload.toByteArray(), "UTF-8"));
                        }
                    } else {
                        if (i18 != 2) {
                            throw new Exception("logic error");
                        }
                        onBinaryMessage(this.mMessagePayload.toByteArray());
                    }
                    this.mInsideMessage = false;
                    this.mMessagePayload.reset();
                }
                frameHeader = null;
            }
            this.mFrameHeader = frameHeader;
            return this.mPosition > 0;
        }
        int i19 = this.mPosition;
        if (i19 < 2) {
            return false;
        }
        byte[] bArr4 = this.mMessageData;
        byte b10 = bArr4[0];
        boolean z10 = (b10 & 128) != 0;
        int i20 = (b10 & 112) >> 4;
        int i21 = b10 & 15;
        byte b11 = bArr4[1];
        boolean z11 = (b11 & 128) != 0;
        int i22 = b11 & ByteCompanionObject.MAX_VALUE;
        if (i20 != 0) {
            throw new WebSocketException("RSV != 0 and no extension negotiated");
        }
        if (z11) {
            throw new WebSocketException("masked server frame");
        }
        if (i21 > 7) {
            if (!z10) {
                throw new WebSocketException("fragmented control frame");
            }
            if (i22 > 125) {
                throw new WebSocketException("control frame with payload length > 125 octets");
            }
            if (i21 != 8 && i21 != 9 && i21 != 10) {
                throw new WebSocketException("control frame using reserved opcode " + i21);
            }
            if (i21 == 8 && i22 == 1) {
                throw new WebSocketException("received close control frame with payload len 1");
            }
        } else {
            if (i21 != 0 && i21 != 1 && i21 != 2) {
                throw new WebSocketException("data frame using reserved opcode " + i21);
            }
            boolean z12 = this.mInsideMessage;
            if (!z12 && i21 == 0) {
                throw new WebSocketException("received continuation data frame outside fragmented message");
            }
            if (z12 && i21 != 0) {
                throw new WebSocketException("received non-continuation data frame while inside fragmented message");
            }
        }
        int i23 = z11 ? 4 : 0;
        if (i22 < 126) {
            i11 = i23 + 2;
        } else if (i22 == 126) {
            i11 = i23 + 4;
        } else {
            if (i22 != 127) {
                throw new Exception("logic error");
            }
            i11 = i23 + 10;
        }
        if (i19 < i11) {
            return false;
        }
        if (i22 == 126) {
            j10 = (bArr4[3] & 255) | ((bArr4[2] & 255) << 8);
            if (j10 < 126) {
                throw new WebSocketException("invalid data frame length (not using minimal length encoding)");
            }
            i12 = 4;
        } else if (i22 == 127) {
            byte b12 = bArr4[2];
            if ((b12 & 128) != 0) {
                throw new WebSocketException("invalid data frame length (> 2^63)");
            }
            j10 = ((long) (bArr4[9] & 255)) | (((long) (bArr4[3] & 255)) << 48) | (((long) (b12 & 255)) << 56) | (((long) (bArr4[4] & 255)) << 40) | (((long) (bArr4[5] & 255)) << 32) | (((long) (bArr4[6] & 255)) << 24) | (((long) (bArr4[7] & 255)) << 16) | (((long) (bArr4[8] & 255)) << 8);
            if (j10 < 65536) {
                throw new WebSocketException("invalid data frame length (not using minimal length encoding)");
            }
            i12 = 10;
        } else {
            j10 = i22;
            i12 = 2;
        }
        if (j10 > this.mOptions.getMaxFramePayloadSize()) {
            CountlyUtil.recordErrorEvent("frame payload too large:" + j10 + ",max size:" + this.mOptions.getMaxFramePayloadSize());
            throw new WebSocketException("frame payload too large:" + this.mOptions.getMaxFramePayloadSize());
        }
        FrameHeader frameHeader4 = new FrameHeader();
        this.mFrameHeader = frameHeader4;
        frameHeader4.mOpcode = i21;
        frameHeader4.mFin = z10;
        frameHeader4.mReserved = i20;
        int i24 = (int) j10;
        frameHeader4.mPayloadLen = i24;
        frameHeader4.mHeaderLen = i11;
        frameHeader4.mTotalLen = i11 + i24;
        if (z11) {
            frameHeader4.mMask = new byte[4];
            for (int i25 = 0; i25 < 4; i25++) {
                this.mFrameHeader.mMask[i12] = (byte) (this.mMessageData[i12 + i25] & 255);
            }
        } else {
            frameHeader4.mMask = null;
        }
        FrameHeader frameHeader5 = this.mFrameHeader;
        return frameHeader5.mPayloadLen == 0 || this.mPosition >= frameHeader5.mTotalLen;
    }

    private boolean processHandshake() throws UnsupportedEncodingException {
        boolean z10;
        boolean z11;
        String string;
        int i10 = this.mPosition - 4;
        while (true) {
            z10 = false;
            if (i10 < 0) {
                break;
            }
            byte[] bArr = this.mMessageData;
            if (bArr[i10] == 13 && bArr[i10 + 1] == 10 && bArr[i10 + 2] == 13 && bArr[i10 + 3] == 10) {
                int i11 = i10 + 4;
                String[] strArrSplit = new String(Arrays.copyOf(bArr, i11), "UTF-8").split("\r\n");
                String str = strArrSplit[0];
                String[] strArrSplit2 = str.split(" ");
                if (strArrSplit2.length >= 2 && strArrSplit2[0].startsWith("HTTP")) {
                    String strTrim = strArrSplit2[0].trim();
                    if (!strTrim.equals("HTTP/1.1")) {
                        emitServerError(String.format("Unsupported HTTP version %s", strTrim));
                        break;
                    }
                    try {
                        int i12 = Integer.parseInt(strArrSplit2[1].trim());
                        if (i12 == 101) {
                            Map<String, String> httpHeaders = parseHttpHeaders((String[]) Arrays.copyOfRange(strArrSplit, 1, strArrSplit.length));
                            if (!httpHeaders.containsKey("upgrade")) {
                                emitServerError("HTTP Upgrade header missing");
                                break;
                            }
                            String str2 = httpHeaders.get("upgrade");
                            if (str2 != null && !str2.toLowerCase().equals("upgrade")) {
                                if (!httpHeaders.containsKey("connection")) {
                                    emitServerError("HTTP Connection header missing");
                                    break;
                                }
                                String[] strArrSplit3 = httpHeaders.get("connection").split(",");
                                int length = strArrSplit3.length;
                                int i13 = 0;
                                while (true) {
                                    if (i13 >= length) {
                                        z11 = false;
                                        break;
                                    }
                                    if (strArrSplit3[i13].toLowerCase().equals("upgrade")) {
                                        z11 = true;
                                        break;
                                    }
                                    i13++;
                                }
                                if (!z11) {
                                    emitServerError(String.format("HTTP Connection header does not include 'upgrade' value (case-insensitive) : %s", httpHeaders.get("connection")));
                                    break;
                                }
                                if (!httpHeaders.containsKey("sec-websocket-accept")) {
                                    emitServerError("HTTP Sec-WebSocket-Accept header missing in opening handshake reply");
                                    break;
                                }
                                byte[] bArr2 = this.mMessageData;
                                System.arraycopy(bArr2, i11, bArr2, 0, bArr2.length - i11);
                                int i14 = this.mPosition - i11;
                                this.mPosition = i14;
                                z10 = i14 > 0;
                                this.mState = 3;
                                onHandshake(httpHeaders);
                                break;
                            }
                            emitServerError(String.format("HTTP Upgrade header different from 'websocket' (case-insensitive) : %s", str2));
                            break;
                        }
                        if (strArrSplit2.length > 2) {
                            StringBuilder sb2 = new StringBuilder();
                            for (int i15 = 2; i15 < strArrSplit2.length; i15++) {
                                sb2.append(strArrSplit2[i15]);
                                if (i15 != strArrSplit2.length - 1) {
                                    sb2.append(" ");
                                }
                            }
                            string = sb2.toString();
                        } else {
                            string = "";
                        }
                        emitServerError(String.format("WebSocket connection upgrade failed (%d %s)", Integer.valueOf(i12), string));
                        break;
                    } catch (NumberFormatException unused) {
                        emitServerError(String.format("Bad HTTP status code ('%s')", strArrSplit2[1].trim()));
                        break;
                    }
                }
                emitServerError(String.format("Bad HTTP response status line %s", str));
                break;
            }
            i10--;
        }
        return z10;
    }

    protected void onBinaryMessage(byte[] bArr) {
        this.mMessenger.notify(new BinaryMessage(bArr));
    }

    protected void onClose(int i10, String str) {
        this.mMessenger.notify(new Close(i10, str));
    }

    protected void onHandshake(Map<String, String> map) {
        this.mMessenger.notify(new ServerHandshake(map));
    }

    protected void onPing(byte[] bArr) {
        this.mMessenger.notify(new Ping(bArr));
    }

    protected void onPong(byte[] bArr) {
        this.mMessenger.notify(new Pong(bArr));
    }

    protected void onRawTextMessage(byte[] bArr) {
        this.mMessenger.notify(new RawTextMessage(bArr));
    }

    protected void onTextMessage(String str) {
        this.mMessenger.notify(new TextMessage(str));
    }

    public void quit() {
        this.mState = 0;
        LogUtils.d(TAG, "Quit");
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        LogUtils.d(TAG, "Running");
        do {
            try {
                try {
                    try {
                        BufferedInputStream bufferedInputStream = this.mBufferedStream;
                        byte[] bArr = this.mMessageData;
                        int i10 = this.mPosition;
                        int i11 = bufferedInputStream.read(bArr, i10, bArr.length - i10);
                        this.mPosition += i11;
                        if (i11 > 0) {
                            while (consumeData()) {
                            }
                        } else if (this.mState == 0) {
                            this.mStopped = true;
                        } else if (i11 < 0) {
                            LogUtils.d(TAG, "run() : ConnectionLost");
                            this.mMessenger.notify(new ConnectionLost(null));
                            this.mStopped = true;
                        }
                    } catch (SocketException e10) {
                        if (this.mState != 0 && !this.mSocket.isClosed()) {
                            LogUtils.d(TAG, "run() : SocketException (" + e10.toString() + ")");
                            this.mMessenger.notify(new ConnectionLost(null));
                        }
                    }
                } catch (WebSocketException e11) {
                    LogUtils.d(TAG, "run() : WebSocketException (" + e11.toString() + ")");
                    this.mMessenger.notify(new ProtocolViolation(e11));
                } catch (Exception e12) {
                    LogUtils.d(TAG, "run() : Exception (" + e12.toString() + ")");
                    this.mMessenger.notify(new Error(e12));
                }
            } catch (Throwable th) {
                this.mStopped = true;
                throw th;
            }
        } while (!this.mStopped);
        this.mStopped = true;
        LogUtils.d(TAG, "Ended");
    }
}
