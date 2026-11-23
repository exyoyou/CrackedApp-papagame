package com.netcheck.LDNetDiagnoService;

import com.haima.hmcp.utils.LogUtils;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LDNetSocket {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f75816h = 80;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f75817i = 4;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f75818j = "DNS解析正常,连接超时,TCP建立失败";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f75819k = "DNS解析正常,IO异常,TCP建立失败";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f75820l = "DNS解析失败,主机地址不可达";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static LDNetSocket f75821m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static boolean f75822n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f75823a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public InetAddress[] f75825c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public List<String> f75826d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean[] f75827e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f75824b = 6000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long[] f75828f = new long[4];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f75829g = true;

    public interface a {
        void OnNetSocketFinished(String str);

        void OnNetSocketUpdated(String str);
    }

    static {
        try {
            System.loadLibrary("tracepath");
            f75822n = true;
        } catch (Exception e10) {
            e10.printStackTrace();
        } catch (UnsatisfiedLinkError e11) {
            e11.printStackTrace();
        }
    }

    private LDNetSocket() {
    }

    private boolean b(InetAddress inetAddress, String str) throws Throwable {
        byte b10;
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = false;
        z10 = false;
        z10 = false;
        z10 = false;
        if (inetAddress != null && str != null) {
            InetSocketAddress inetSocketAddress = new InetSocketAddress(inetAddress, 80);
            this.f75823a.OnNetSocketUpdated("Connect to host: " + str + "...\n");
            int i10 = 0;
            while (true) {
                if (i10 >= 4) {
                    b10 = 0;
                    break;
                }
                c(inetSocketAddress, this.f75824b, i10);
                long j10 = this.f75828f[i10];
                if (j10 == -1) {
                    this.f75823a.OnNetSocketUpdated((i10 + 1) + "'s time=TimeOut,  ");
                    this.f75824b = this.f75824b + 4000;
                    if (i10 > 0 && this.f75828f[i10 - 1] == -1) {
                        b10 = -1;
                        break;
                    }
                    i10++;
                } else {
                    if (j10 == -2) {
                        this.f75823a.OnNetSocketUpdated((i10 + 1) + "'s time=IOException");
                        if (i10 > 0 && this.f75828f[i10 - 1] == -2) {
                            b10 = -2;
                            break;
                        }
                    } else {
                        this.f75823a.OnNetSocketUpdated((i10 + 1) + "'s time=" + this.f75828f[i10] + "ms,  ");
                    }
                    i10++;
                }
            }
            if (b10 != -1 && b10 != -2) {
                long j11 = 0;
                int i11 = 0;
                for (int i12 = 0; i12 < 4; i12++) {
                    long j12 = this.f75828f[i12];
                    if (j12 > 0) {
                        j11 += j12;
                        i11++;
                    }
                }
                if (i11 > 0) {
                    sb2.append("average=" + (j11 / ((long) i11)) + "ms");
                }
                z10 = true;
            }
        }
        this.f75823a.OnNetSocketUpdated(sb2.toString());
        return z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.net.Socket] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0046 -> B:34:0x0049). Please report as a decompilation issue!!! */
    private void c(InetSocketAddress inetSocketAddress, int i10, int i11) throws Throwable {
        ?? r10 = 0;
        Socket socket = null;
        Socket socket2 = null;
        r10 = 0;
        try {
            try {
                try {
                    Socket socket3 = new Socket();
                    try {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        socket3.connect(inetSocketAddress, i10);
                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                        long[] jArr = this.f75828f;
                        jArr[i11] = jCurrentTimeMillis2 - jCurrentTimeMillis;
                        socket3.close();
                        r10 = jArr;
                    } catch (SocketTimeoutException e10) {
                        e = e10;
                        socket = socket3;
                        this.f75828f[i11] = -1;
                        e.printStackTrace();
                        r10 = socket;
                        if (socket != null) {
                            socket.close();
                            r10 = socket;
                        }
                    } catch (IOException e11) {
                        e = e11;
                        socket2 = socket3;
                        this.f75828f[i11] = -2;
                        e.printStackTrace();
                        r10 = socket2;
                        if (socket2 != null) {
                            socket2.close();
                            r10 = socket2;
                        }
                    } catch (Throwable th) {
                        th = th;
                        r10 = socket3;
                        if (r10 != 0) {
                            try {
                                r10.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (SocketTimeoutException e13) {
                e = e13;
            } catch (IOException e14) {
                e = e14;
            }
        } catch (IOException e15) {
            e15.printStackTrace();
            r10 = r10;
        }
    }

    private boolean d(String str) {
        InetAddress[] inetAddressArr = this.f75825c;
        if (inetAddressArr == null || this.f75826d == null) {
            this.f75823a.OnNetSocketFinished(f75820l);
        } else {
            int length = inetAddressArr.length;
            this.f75827e = new boolean[length];
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 != 0) {
                    this.f75823a.OnNetSocketUpdated("\n");
                }
                this.f75827e[i10] = b(this.f75825c[i10], this.f75826d.get(i10));
            }
            for (boolean z10 : this.f75827e) {
                if (Boolean.valueOf(z10).booleanValue()) {
                    this.f75823a.OnNetSocketFinished("\n");
                    return true;
                }
            }
        }
        this.f75823a.OnNetSocketFinished("\n");
        return false;
    }

    public static LDNetSocket e() {
        if (f75821m == null) {
            f75821m = new LDNetSocket();
        }
        return f75821m;
    }

    public boolean a(String str) {
        if (!this.f75829g || !f75822n) {
            return d(str);
        }
        try {
            startJNITelnet(str, "80");
            return true;
        } catch (UnsatisfiedLinkError e10) {
            e10.printStackTrace();
            LogUtils.i("LDNetSocket", "call jni failed, call execUseJava");
            return d(str);
        }
    }

    public void f(a aVar) {
        this.f75823a = aVar;
    }

    public void g(String str) {
        this.f75823a.OnNetSocketUpdated(str);
    }

    public void h() {
        if (f75821m != null) {
            f75821m = null;
        }
    }

    public native void startJNITelnet(String str, String str2);
}
