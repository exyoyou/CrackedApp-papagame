package com.join.mgps.socket;

import android.content.Context;
import com.join.mgps.Util.f2;
import com.join.mgps.Util.o0;
import com.join.mgps.socket.entity.g;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketException;

/* JADX INFO: loaded from: classes3.dex */
public class c implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f72938o = "c";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Socket f72939b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Context f72942e;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    a f72950m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    DataInputStream f72940c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    BufferedOutputStream f72941d = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f72943f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    long f72944g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f72945h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    String f72946i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f72947j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f72948k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f72949l = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    boolean f72951n = true;

    class a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        volatile boolean f72952b = true;

        a() {
        }

        public void a(boolean monitor) {
            this.f72952b = monitor;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (this.f72952b) {
                try {
                    c.this.d();
                    Thread.sleep(1000L);
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public c(Socket mSocket, Context context) {
        this.f72939b = mSocket;
        this.f72942e = context;
    }

    public void a() {
        try {
            DataInputStream dataInputStream = this.f72940c;
            if (dataInputStream != null) {
                dataInputStream.close();
            }
            BufferedOutputStream bufferedOutputStream = this.f72941d;
            if (bufferedOutputStream != null) {
                bufferedOutputStream.close();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    int b(long totoleSize, long currentSize) {
        int i10 = (int) ((currentSize / totoleSize) * 100.0f);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getReceiverProgress: ");
        sb2.append(i10);
        sb2.append(":::size::::");
        sb2.append(currentSize);
        return i10;
    }

    void c(int status) {
        a aVar = this.f72950m;
        if (aVar != null) {
            aVar.a(false);
        }
        this.f72949l = status;
        d();
    }

    void d() {
        int iB = b(this.f72944g, this.f72943f);
        com.join.mgps.socket.entity.c cVar = new com.join.mgps.socket.entity.c();
        cVar.f73021u = iB;
        cVar.f73019s = this.f72946i;
        int i10 = this.f72949l;
        cVar.f73022v = i10;
        cVar.f73024x = this.f72947j;
        cVar.f73020t = this.f72945h;
        cVar.f72998a = 1;
        cVar.f73023w = 1;
        if (i10 == 3 || i10 == 4) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("receiverFile: 接收完成:::");
            sb2.append(this.f72950m.f72952b);
            a aVar = this.f72950m;
            if (aVar != null && aVar.f72952b) {
                return;
            }
        }
        org.greenrobot.eventbus.c.f().q(cVar);
    }

    void e(String content) {
        g gVar = new g();
        gVar.f73036s = content;
        gVar.f72998a = 0;
        org.greenrobot.eventbus.c.f().q(gVar);
    }

    void g(DataInputStream input) {
        if (input == null) {
            return;
        }
        byte[] bArr = new byte[1048576];
        this.f72943f = 0L;
        this.f72944g = 0L;
        this.f72945h = null;
        this.f72946i = null;
        this.f72947j = null;
        this.f72948k = 0;
        try {
            try {
                try {
                    this.f72944g = input.readLong();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("receiverFile: 文件大小 ");
                    sb2.append(this.f72944g);
                    this.f72946i = input.readUTF();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("receiverFile: 文件保存名称 ");
                    sb3.append(this.f72946i);
                    this.f72947j = input.readUTF();
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("receiverFile: 文件编号 ");
                    sb4.append(this.f72947j);
                    String str = f2.g(this.f72942e) + File.separator + this.f72946i;
                    this.f72945h = str;
                    if (!o0.E(str)) {
                        o0.K(this.f72945h);
                    }
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("receiverFile: 文件完整名 ");
                    sb5.append(this.f72945h);
                    this.f72941d = new BufferedOutputStream(new FileOutputStream(new File(this.f72945h)));
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("saveFile: 文件大小：");
                    sb6.append(this.f72944g);
                    sb6.append("::::::文件完整路径：：");
                    sb6.append(this.f72945h);
                    a aVar = new a();
                    this.f72950m = aVar;
                    aVar.start();
                    while (this.f72951n) {
                        long j10 = this.f72943f;
                        long j11 = ((long) 1048576) + j10;
                        long j12 = this.f72944g;
                        if (j11 <= j12) {
                            int i10 = input.read(bArr, 0, 1048576);
                            this.f72948k = i10;
                            if (i10 == -1) {
                                c(4);
                                break;
                            }
                            this.f72941d.write(bArr, 0, i10);
                            this.f72943f += (long) this.f72948k;
                            StringBuilder sb7 = new StringBuilder();
                            sb7.append("receiverFile000000: 接收了多少");
                            sb7.append(this.f72948k);
                            sb7.append("-----bufferSize------");
                            sb7.append(1048576);
                            if (this.f72944g <= this.f72943f) {
                                c(3);
                                break;
                            }
                            this.f72949l = 2;
                        } else {
                            int i11 = input.read(bArr, 0, (int) (j12 - j10));
                            this.f72948k = i11;
                            if (i11 == -1) {
                                c(4);
                                break;
                            }
                            this.f72941d.write(bArr, 0, i11);
                            this.f72943f += (long) this.f72948k;
                            StringBuilder sb8 = new StringBuilder();
                            sb8.append("receiverFile: 接收了多少");
                            sb8.append(this.f72948k);
                            sb8.append("----bufferSize-----");
                            if (this.f72944g <= this.f72943f) {
                                c(3);
                                break;
                            }
                            this.f72949l = 2;
                        }
                    }
                    this.f72941d.flush();
                    a aVar2 = this.f72950m;
                    if (aVar2 != null) {
                        aVar2.a(false);
                    }
                    if (this.f72941d != null) {
                        this.f72941d.close();
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            } catch (IOException e11) {
                o0.m(this.f72945h);
                c(4);
                e11.printStackTrace();
                a aVar3 = this.f72950m;
                if (aVar3 != null) {
                    aVar3.a(false);
                }
                if (this.f72941d != null) {
                    this.f72941d.close();
                }
            }
        } catch (Throwable th) {
            try {
                a aVar4 = this.f72950m;
                if (aVar4 != null) {
                    aVar4.a(false);
                }
                if (this.f72941d != null) {
                    this.f72941d.close();
                }
            } catch (IOException e12) {
                e12.printStackTrace();
            }
            throw th;
        }
    }

    void h(DataInputStream input) {
        if (input == null) {
            return;
        }
        try {
            String utf = input.readUTF();
            e(utf);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("receiverText: 接收的文本数据为");
            sb2.append(utf);
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public void i(boolean monitor) {
        this.f72951n = monitor;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SocketReceiverService: 接收大小");
            sb2.append(this.f72939b.getReceiveBufferSize());
            this.f72940c = new DataInputStream(new BufferedInputStream(this.f72939b.getInputStream()));
            while (this.f72951n) {
                Socket socket = this.f72939b;
                if (socket != null && this.f72940c != null && !socket.isClosed()) {
                    int i10 = this.f72940c.readInt();
                    if (i10 == 1) {
                        h(this.f72940c);
                    } else if (i10 == 2) {
                        g(this.f72940c);
                    }
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException e10) {
                        Thread.currentThread().interrupt();
                        e10.printStackTrace();
                    }
                }
            }
        } catch (SocketException e11) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(e11.getClass().getName());
            sb3.append(":");
            sb3.append(e11.getMessage());
        } catch (IOException e12) {
            e12.printStackTrace();
        }
    }
}
