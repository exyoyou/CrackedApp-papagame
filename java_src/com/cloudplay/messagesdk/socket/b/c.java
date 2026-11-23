package com.cloudplay.messagesdk.socket.b;

import android.util.Base64;
import com.cloudplay.messagesdk.socket.websocket.exceptions.ParseFailed;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes9.dex */
public class c {
    private static byte[] a(String str) throws IOException {
        return str.getBytes("UTF-8");
    }

    private static String a() throws Exception {
        byte[] bArr = new byte[16];
        new Random().nextBytes(bArr);
        return Base64.encode(bArr, 0).toString();
    }

    public static byte[] a(com.cloudplay.messagesdk.socket.b.g.c cVar) throws ParseFailed {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            int i10 = 0;
            byteArrayOutputStream.write(a(String.format("GET %s HTTP/1.1", cVar.f24191c != null ? cVar.f24190b + "?" + cVar.f24191c : cVar.f24190b)));
            byteArrayOutputStream.write(a("\r\n"));
            byteArrayOutputStream.write(a("Host: " + cVar.f24189a));
            byteArrayOutputStream.write(a("\r\n"));
            byteArrayOutputStream.write(a("Upgrade: WebSocket"));
            byteArrayOutputStream.write(a("\r\n"));
            byteArrayOutputStream.write(a("Connection: Upgrade"));
            byteArrayOutputStream.write(a("\r\n"));
            byteArrayOutputStream.write(a("Sec-WebSocket-Key: " + a()));
            byteArrayOutputStream.write(a("\r\n"));
            String str = cVar.f24192d;
            if (str != null && !str.equals("")) {
                byteArrayOutputStream.write(a("Origin: " + cVar.f24192d));
                byteArrayOutputStream.write(a("\r\n"));
            }
            String[] strArr = cVar.f24193e;
            if (strArr != null && strArr.length > 0) {
                byteArrayOutputStream.write(a("Sec-WebSocket-Protocol: "));
                while (true) {
                    String[] strArr2 = cVar.f24193e;
                    if (i10 >= strArr2.length) {
                        break;
                    }
                    byteArrayOutputStream.write(a(strArr2[i10]));
                    if (i10 != cVar.f24193e.length - 1) {
                        byteArrayOutputStream.write(a(", "));
                    }
                    i10++;
                }
                byteArrayOutputStream.write(a("\r\n"));
            }
            byteArrayOutputStream.write(a("Sec-WebSocket-Version: 13"));
            byteArrayOutputStream.write(a("\r\n"));
            Map<String, String> map = cVar.f24194f;
            if (map != null) {
                for (String str2 : map.keySet()) {
                    byteArrayOutputStream.write(a(str2 + ":" + cVar.f24194f.get(str2)));
                    byteArrayOutputStream.write(a("\r\n"));
                }
            }
            byteArrayOutputStream.write(a("\r\n"));
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new ParseFailed(e10.getMessage());
        }
    }
}
