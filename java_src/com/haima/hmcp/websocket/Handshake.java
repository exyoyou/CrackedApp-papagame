package com.haima.hmcp.websocket;

import android.util.Base64;
import com.haima.hmcp.websocket.exceptions.ParseFailed;
import com.haima.hmcp.websocket.messages.ClientHandshake;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public class Handshake {
    private static final String CRLF = "\r\n";

    private static byte[] bytes(String str) throws IOException {
        return str.getBytes("UTF-8");
    }

    public static byte[] handshake(ClientHandshake clientHandshake) throws ParseFailed {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            int i10 = 0;
            byteArrayOutputStream.write(bytes(String.format(Locale.US, "GET %s HTTP/1.1", clientHandshake.mQuery != null ? clientHandshake.mPath + "?" + clientHandshake.mQuery : clientHandshake.mPath)));
            byteArrayOutputStream.write(bytes(CRLF));
            byteArrayOutputStream.write(bytes("Host: " + clientHandshake.mHost));
            byteArrayOutputStream.write(bytes(CRLF));
            byteArrayOutputStream.write(bytes("Upgrade: WebSocket"));
            byteArrayOutputStream.write(bytes(CRLF));
            byteArrayOutputStream.write(bytes("Connection: Upgrade"));
            byteArrayOutputStream.write(bytes(CRLF));
            byteArrayOutputStream.write(bytes("Sec-WebSocket-Key: " + newHandshakeKey()));
            byteArrayOutputStream.write(bytes(CRLF));
            String str = clientHandshake.mOrigin;
            if (str != null && !str.equals("")) {
                byteArrayOutputStream.write(bytes("Origin: " + clientHandshake.mOrigin));
                byteArrayOutputStream.write(bytes(CRLF));
            }
            String[] strArr = clientHandshake.mSubprotocols;
            if (strArr != null && strArr.length > 0) {
                byteArrayOutputStream.write(bytes("Sec-WebSocket-Protocol: "));
                while (true) {
                    String[] strArr2 = clientHandshake.mSubprotocols;
                    if (i10 >= strArr2.length) {
                        break;
                    }
                    byteArrayOutputStream.write(bytes(strArr2[i10]));
                    if (i10 != clientHandshake.mSubprotocols.length - 1) {
                        byteArrayOutputStream.write(bytes(", "));
                    }
                    i10++;
                }
                byteArrayOutputStream.write(bytes(CRLF));
            }
            byteArrayOutputStream.write(bytes("Sec-WebSocket-Version: 13"));
            byteArrayOutputStream.write(bytes(CRLF));
            Map<String, String> map = clientHandshake.mHeaderList;
            if (map != null) {
                for (String str2 : map.keySet()) {
                    byteArrayOutputStream.write(bytes(str2 + ":" + clientHandshake.mHeaderList.get(str2)));
                    byteArrayOutputStream.write(bytes(CRLF));
                }
            }
            byteArrayOutputStream.write(bytes(CRLF));
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new ParseFailed(e10.getMessage());
        }
    }

    private static String newHandshakeKey() throws Exception {
        byte[] bArr = new byte[16];
        new Random().nextBytes(bArr);
        return Base64.encode(bArr, 0).toString();
    }
}
