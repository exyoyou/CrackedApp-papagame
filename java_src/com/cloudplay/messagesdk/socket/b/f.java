package com.cloudplay.messagesdk.socket.b;

import com.cloudplay.messagesdk.socket.b.g.j;
import com.cloudplay.messagesdk.socket.b.g.k;
import com.cloudplay.messagesdk.socket.b.g.l;
import com.cloudplay.messagesdk.socket.b.g.m;
import com.cloudplay.messagesdk.socket.b.g.n;
import com.cloudplay.messagesdk.socket.b.g.o;
import com.cloudplay.messagesdk.socket.websocket.exceptions.WebSocketException;
import com.cloudplay.messagesdk.socket.websocket.interfaces.IThreadMessenger;
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

/* JADX INFO: loaded from: classes9.dex */
class f extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IThreadMessenger f24166a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.cloudplay.messagesdk.socket.b.h.b f24167b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BufferedInputStream f24168c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Socket f24169d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f24170e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private byte[] f24171f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ByteArrayOutputStream f24172g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f24173h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f24174i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f24175j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f24176k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private b f24177l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.cloudplay.messagesdk.socket.b.i.b f24178m;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f24179a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f24180b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f24181c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f24182d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f24183e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f24184f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public byte[] f24185g;

        private b() {
        }
    }

    public f(IThreadMessenger iThreadMessenger, Socket socket, com.cloudplay.messagesdk.socket.b.h.b bVar, String str) throws IOException {
        super(str);
        this.f24173h = false;
        this.f24175j = false;
        this.f24178m = new com.cloudplay.messagesdk.socket.b.i.b();
        this.f24166a = iThreadMessenger;
        this.f24167b = bVar;
        this.f24169d = socket;
        this.f24171f = new byte[bVar.e() + 14];
        this.f24168c = new BufferedInputStream(this.f24169d.getInputStream(), bVar.e() + 14);
        this.f24172g = new ByteArrayOutputStream(bVar.f());
        this.f24177l = null;
        this.f24174i = 1;
        com.cloudplay.messagesdk.a.e.a("WebSocketReader", "WebSocketReader() created");
    }

    private boolean c() throws Exception {
        byte[] bArr;
        b bVar;
        int i10;
        String str;
        int i11;
        long j10;
        int i12;
        b bVar2 = this.f24177l;
        if (bVar2 != null) {
            if (this.f24170e < bVar2.f24184f) {
                return false;
            }
            int i13 = bVar2.f24183e;
            if (i13 > 0) {
                bArr = new byte[i13];
                System.arraycopy(this.f24171f, bVar2.f24182d, bArr, 0, i13);
            } else {
                bArr = null;
            }
            byte[] bArr2 = this.f24171f;
            int i14 = this.f24177l.f24184f;
            System.arraycopy(bArr2, i14, bArr2, 0, bArr2.length - i14);
            int i15 = this.f24170e;
            b bVar3 = this.f24177l;
            this.f24170e = i15 - bVar3.f24184f;
            int i16 = bVar3.f24179a;
            if (i16 > 7) {
                if (i16 == 8) {
                    int i17 = bVar3.f24183e;
                    if (i17 >= 2) {
                        i10 = ((bArr[0] & 255) * 256) + (bArr[1] & 255);
                        if (i10 < 1000 || (!(i10 < 1000 || i10 > 2999 || i10 == 1000 || i10 == 1001 || i10 == 1002 || i10 == 1003 || i10 == 1007 || i10 == 1008 || i10 == 1009 || i10 == 1010 || i10 == 1011) || i10 >= 5000)) {
                            throw new WebSocketException("invalid close code " + i10);
                        }
                        if (i17 > 2) {
                            int i18 = i17 - 2;
                            byte[] bArr3 = new byte[i18];
                            System.arraycopy(bArr, 2, bArr3, 0, i18);
                            com.cloudplay.messagesdk.socket.b.i.b bVar4 = new com.cloudplay.messagesdk.socket.b.i.b();
                            bVar4.a(bArr3);
                            if (!bVar4.a()) {
                                throw new WebSocketException("invalid close reasons (not UTF-8)");
                            }
                            str = new String(bArr3, "UTF-8");
                        }
                        a(i10, str);
                        this.f24174i = 0;
                    } else {
                        i10 = 1005;
                    }
                    str = null;
                    a(i10, str);
                    this.f24174i = 0;
                } else if (i16 == 9) {
                    b(bArr);
                } else {
                    if (i16 != 10) {
                        throw new Exception("logic error");
                    }
                    c(bArr);
                }
                bVar = null;
            } else {
                if (!this.f24175j) {
                    this.f24175j = true;
                    this.f24176k = i16;
                    if (i16 == 1 && this.f24167b.o()) {
                        this.f24178m.b();
                    }
                }
                if (bArr != null) {
                    if (this.f24172g.size() + bArr.length > this.f24167b.f()) {
                        throw new WebSocketException("message payload too large");
                    }
                    if (this.f24176k == 1 && this.f24167b.o() && !this.f24178m.a(bArr)) {
                        throw new WebSocketException("invalid UTF-8 in text message payload");
                    }
                    this.f24172g.write(bArr);
                }
                if (this.f24177l.f24180b) {
                    int i19 = this.f24176k;
                    if (i19 == 1) {
                        if (this.f24167b.o() && !this.f24178m.a()) {
                            throw new WebSocketException("UTF-8 text message payload ended within Unicode code point");
                        }
                        if (this.f24167b.g()) {
                            d(this.f24172g.toByteArray());
                        } else {
                            a(new String(this.f24172g.toByteArray(), "UTF-8"));
                        }
                    } else {
                        if (i19 != 2) {
                            throw new Exception("logic error");
                        }
                        a(this.f24172g.toByteArray());
                    }
                    this.f24175j = false;
                    this.f24172g.reset();
                }
                bVar = null;
            }
            this.f24177l = bVar;
            return this.f24170e > 0;
        }
        int i20 = this.f24170e;
        if (i20 < 2) {
            return false;
        }
        byte[] bArr4 = this.f24171f;
        byte b10 = bArr4[0];
        boolean z10 = (b10 & 128) != 0;
        int i21 = (b10 & 112) >> 4;
        int i22 = b10 & 15;
        byte b11 = bArr4[1];
        boolean z11 = (b11 & 128) != 0;
        int i23 = b11 & ByteCompanionObject.MAX_VALUE;
        if (i21 != 0) {
            throw new WebSocketException("RSV != 0 and no extension negotiated");
        }
        if (z11) {
            throw new WebSocketException("masked server frame");
        }
        if (i22 > 7) {
            if (!z10) {
                throw new WebSocketException("fragmented control frame");
            }
            if (i23 > 125) {
                throw new WebSocketException("control frame with payload length > 125 octets");
            }
            if (i22 != 8 && i22 != 9 && i22 != 10) {
                throw new WebSocketException("control frame using reserved opcode " + i22);
            }
            if (i22 == 8 && i23 == 1) {
                throw new WebSocketException("received close control frame with payload len 1");
            }
        } else {
            if (i22 != 0 && i22 != 1 && i22 != 2) {
                throw new WebSocketException("data frame using reserved opcode " + i22);
            }
            boolean z12 = this.f24175j;
            if (!z12 && i22 == 0) {
                throw new WebSocketException("received continuation data frame outside fragmented message");
            }
            if (z12 && i22 != 0) {
                throw new WebSocketException("received non-continuation data frame while inside fragmented message");
            }
        }
        int i24 = z11 ? 4 : 0;
        if (i23 < 126) {
            i11 = i24 + 2;
        } else if (i23 == 126) {
            i11 = i24 + 4;
        } else {
            if (i23 != 127) {
                throw new Exception("logic error");
            }
            i11 = i24 + 10;
        }
        if (i20 < i11) {
            return false;
        }
        if (i23 == 126) {
            j10 = (bArr4[3] & 255) | ((bArr4[2] & 255) << 8);
            if (j10 < 126) {
                throw new WebSocketException("invalid data frame length (not using minimal length encoding)");
            }
            i12 = 4;
        } else if (i23 == 127) {
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
            j10 = i23;
            i12 = 2;
        }
        if (j10 > this.f24167b.e()) {
            throw new WebSocketException("frame payload too large");
        }
        b bVar5 = new b();
        this.f24177l = bVar5;
        bVar5.f24179a = i22;
        bVar5.f24180b = z10;
        bVar5.f24181c = i21;
        int i25 = (int) j10;
        bVar5.f24183e = i25;
        bVar5.f24182d = i11;
        bVar5.f24184f = i11 + i25;
        if (z11) {
            bVar5.f24185g = new byte[4];
            for (int i26 = 0; i26 < 4; i26++) {
                this.f24177l.f24185g[i12] = (byte) (this.f24171f[i12 + i26] & 255);
            }
        } else {
            bVar5.f24185g = null;
        }
        b bVar6 = this.f24177l;
        return bVar6.f24183e == 0 || this.f24170e >= bVar6.f24184f;
    }

    public void a() {
        this.f24174i = 0;
        com.cloudplay.messagesdk.a.e.a("WebSocketReader", "quit() mState:" + this.f24174i);
    }

    protected void b(byte[] bArr) {
        this.f24166a.notify(new com.cloudplay.messagesdk.socket.b.g.h(bArr));
    }

    protected void d(byte[] bArr) {
        this.f24166a.notify(new l(bArr));
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        com.cloudplay.messagesdk.a.e.a("WebSocketReader", "run()");
        do {
            try {
                try {
                    try {
                        BufferedInputStream bufferedInputStream = this.f24168c;
                        byte[] bArr = this.f24171f;
                        int i10 = this.f24170e;
                        int i11 = bufferedInputStream.read(bArr, i10, bArr.length - i10);
                        this.f24170e += i11;
                        if (i11 > 0) {
                            System.currentTimeMillis();
                            while (b()) {
                            }
                        } else if (this.f24174i == 0) {
                            this.f24173h = true;
                        } else if (i11 < 0) {
                            com.cloudplay.messagesdk.a.e.a("WebSocketReader", "run() ConnectionLost");
                            this.f24166a.notify(new com.cloudplay.messagesdk.socket.b.g.e(null));
                            this.f24173h = true;
                        }
                    } catch (SocketException e10) {
                        if (this.f24174i != 0 && !this.f24169d.isClosed()) {
                            com.cloudplay.messagesdk.a.e.a("WebSocketReader", "run() SocketException (" + e10.toString() + ")");
                            this.f24166a.notify(new com.cloudplay.messagesdk.socket.b.g.e(null));
                        }
                    }
                } catch (WebSocketException e11) {
                    com.cloudplay.messagesdk.a.e.a("WebSocketReader", "run() WebSocketException (" + e11.toString() + ")");
                    this.f24166a.notify(new k(e11));
                    this.f24173h = true;
                } catch (Exception e12) {
                    com.cloudplay.messagesdk.a.e.a("WebSocketReader", "run() Exception (" + e12.toString() + ")");
                    this.f24166a.notify(new Error(e12));
                    this.f24173h = true;
                }
            } catch (Throwable th) {
                this.f24173h = true;
                throw th;
            }
        } while (!this.f24173h);
        this.f24173h = true;
        com.cloudplay.messagesdk.a.e.a("WebSocketReader", "run() Ended");
    }

    private void b(String str) {
        this.f24166a.notify(new m(str));
        this.f24174i = 0;
        this.f24173h = true;
    }

    private boolean d() throws UnsupportedEncodingException {
        boolean z10;
        boolean z11;
        String string;
        int i10 = this.f24170e - 4;
        while (true) {
            z10 = false;
            if (i10 < 0) {
                break;
            }
            byte[] bArr = this.f24171f;
            if (bArr[i10] == 13 && bArr[i10 + 1] == 10 && bArr[i10 + 2] == 13 && bArr[i10 + 3] == 10) {
                int i11 = i10 + 4;
                String[] strArrSplit = new String(Arrays.copyOf(bArr, i11), "UTF-8").split("\r\n");
                String str = strArrSplit[0];
                String[] strArrSplit2 = str.split(" ");
                if (strArrSplit2.length >= 2 && strArrSplit2[0].startsWith("HTTP")) {
                    String strTrim = strArrSplit2[0].trim();
                    if (!strTrim.equals("HTTP/1.1")) {
                        b(String.format("Unsupported HTTP version %s", strTrim));
                        break;
                    }
                    try {
                        int i12 = Integer.parseInt(strArrSplit2[1].trim());
                        if (i12 == 101) {
                            Map<String, String> mapA = a((String[]) Arrays.copyOfRange(strArrSplit, 1, strArrSplit.length));
                            if (!mapA.containsKey("upgrade")) {
                                b("HTTP Upgrade header missing");
                                break;
                            }
                            String str2 = mapA.get("upgrade");
                            if (str2 != null && !str2.toLowerCase().equals("upgrade")) {
                                if (!mapA.containsKey("connection")) {
                                    b("HTTP Connection header missing");
                                    break;
                                }
                                String[] strArrSplit3 = mapA.get("connection").split(",");
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
                                    b(String.format("HTTP Connection header does not include 'upgrade' value (case-insensitive) : %s", mapA.get("connection")));
                                    break;
                                }
                                if (!mapA.containsKey("sec-websocket-accept")) {
                                    b("HTTP Sec-WebSocket-Accept header missing in opening handshake reply");
                                    break;
                                }
                                byte[] bArr2 = this.f24171f;
                                System.arraycopy(bArr2, i11, bArr2, 0, bArr2.length - i11);
                                int i14 = this.f24170e - i11;
                                this.f24170e = i14;
                                z10 = i14 > 0;
                                this.f24174i = 3;
                                a(mapA);
                                break;
                            }
                            b(String.format("HTTP Upgrade header different from 'websocket' (case-insensitive) : %s", str2));
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
                        b(String.format(Locale.getDefault(), "WebSocket connection upgrade failed (%d %s)", Integer.valueOf(i12), string));
                        break;
                    } catch (NumberFormatException unused) {
                        b(String.format("Bad HTTP status code ('%s')", strArrSplit2[1].trim()));
                        break;
                    }
                }
                b(String.format("Bad HTTP response status line %s", str));
                break;
            }
            i10--;
        }
        return z10;
    }

    protected void a(Map<String, String> map) {
        this.f24166a.notify(new n(map));
    }

    protected void a(int i10, String str) {
        this.f24166a.notify(new com.cloudplay.messagesdk.socket.b.g.d(i10, str));
    }

    private boolean b() throws Exception {
        int i10 = this.f24174i;
        if (i10 == 3 || i10 == 2) {
            return c();
        }
        if (i10 == 1) {
            return d();
        }
        return false;
    }

    protected void a(String str) {
        this.f24166a.notify(new o(str));
    }

    protected void a(byte[] bArr) {
        this.f24166a.notify(new com.cloudplay.messagesdk.socket.b.g.a(bArr));
    }

    private Map<String, String> a(String[] strArr) {
        HashMap map = new HashMap();
        for (String str : strArr) {
            if (str.length() > 0) {
                String[] strArrSplit = str.split(": ");
                if (strArrSplit.length == 2) {
                    map.put(strArrSplit[0].toLowerCase(), strArrSplit[1]);
                    com.cloudplay.messagesdk.a.e.a("WebSocketReader", "parseHttpHeaders() " + String.format("'%s'='%s'", strArrSplit[0].toLowerCase(), strArrSplit[1]));
                }
            }
        }
        return map;
    }

    protected void c(byte[] bArr) {
        this.f24166a.notify(new j(bArr));
    }
}
