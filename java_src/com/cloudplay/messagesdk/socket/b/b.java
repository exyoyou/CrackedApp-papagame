package com.cloudplay.messagesdk.socket.b;

import com.cloudplay.messagesdk.socket.websocket.exceptions.ParseFailed;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Random;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes9.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Random f24130a = new Random();

    public byte[] a(byte[] bArr) throws ParseFailed {
        if (bArr == null || bArr.length <= 125) {
            return a(9, bArr, true, true);
        }
        throw new ParseFailed("ping payload exceeds 125 octets");
    }

    public byte[] b(byte[] bArr) throws ParseFailed {
        if (bArr == null || bArr.length <= 125) {
            return a(10, bArr, true, true);
        }
        throw new ParseFailed("ping payload exceeds 125 octets");
    }

    public byte[] c(byte[] bArr) {
        return a(2, bArr, true, true);
    }

    public byte[] d(byte[] bArr) {
        return a(1, bArr, true, true);
    }

    public byte[] a(int i10, String str) throws ParseFailed {
        byte[] bArr;
        if (i10 > 0) {
            if (str == null || str.equals("")) {
                bArr = new byte[2];
            } else {
                try {
                    byte[] bytes = str.getBytes("UTF-8");
                    bArr = new byte[bytes.length + 2];
                    System.arraycopy(bytes, 0, bArr, 2, bytes.length);
                } catch (UnsupportedEncodingException unused) {
                    throw new ParseFailed("reason is an invalid utf-8 string");
                }
            }
            bArr[0] = (byte) ((i10 >> 8) & 255);
            bArr[1] = (byte) (i10 & 255);
            return a(8, bArr, true, true);
        }
        return a(8, null, true, true);
    }

    private byte[] a(int i10, byte[] bArr, boolean z10, boolean z11) {
        byte[] bArrA;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write((byte) ((z10 ? (byte) (-128) : (byte) 0) | ((byte) i10)));
        byte b10 = z11 ? (byte) -128 : (byte) 0;
        long length = bArr != null ? bArr.length : 0L;
        if (length <= 125) {
            byteArrayOutputStream.write((byte) (b10 | ((byte) length)));
        } else if (length <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            byteArrayOutputStream.write((byte) (b10 | 126));
            byteArrayOutputStream.write(new byte[]{(byte) ((length >> 8) & 255), (byte) (length & 255)}, 0, 2);
        } else {
            byteArrayOutputStream.write((byte) (b10 | ByteCompanionObject.MAX_VALUE));
            byteArrayOutputStream.write(new byte[]{(byte) ((length >> 56) & 255), (byte) ((length >> 48) & 255), (byte) ((length >> 40) & 255), (byte) ((length >> 32) & 255), (byte) ((length >> 24) & 255), (byte) ((length >> 16) & 255), (byte) ((length >> 8) & 255), (byte) (length & 255)}, 0, 8);
        }
        if (z11) {
            bArrA = a();
            byteArrayOutputStream.write(bArrA[0]);
            byteArrayOutputStream.write(bArrA[1]);
            byteArrayOutputStream.write(bArrA[2]);
            byteArrayOutputStream.write(bArrA[3]);
        } else {
            bArrA = null;
        }
        if (length > 0) {
            if (z11) {
                for (int i11 = 0; i11 < length; i11++) {
                    bArr[i11] = (byte) (bArr[i11] ^ bArrA[i11 % 4]);
                }
            }
            byteArrayOutputStream.write(bArr, 0, bArr.length);
        }
        return byteArrayOutputStream.toByteArray();
    }

    private byte[] a() {
        byte[] bArr = new byte[4];
        this.f24130a.nextBytes(bArr);
        return bArr;
    }
}
