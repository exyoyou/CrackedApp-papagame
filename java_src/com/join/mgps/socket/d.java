package com.join.mgps.socket;

import android.content.Context;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.t2;
import com.join.mgps.socket.entity.e;
import com.join.mgps.socket.entity.h;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketException;

/* JADX INFO: loaded from: classes3.dex */
public class d implements Runnable {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f72966n = "d";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Socket f72969d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Context f72970e;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    a f72976k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    DataOutputStream f72967b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    BufferedInputStream f72968c = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f72971f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    long f72972g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f72973h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    String f72974i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f72975j = 2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f72977l = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    String f72978m = null;

    class a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        volatile boolean f72979b = true;

        a() {
        }

        public void a(boolean monitor) {
            this.f72979b = monitor;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (this.f72979b) {
                try {
                    d.this.d();
                    Thread.sleep(1000L);
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public d(Socket mSocket, Context context) {
        this.f72969d = mSocket;
        this.f72970e = context;
    }

    public void a() {
        try {
            DataOutputStream dataOutputStream = this.f72967b;
            if (dataOutputStream != null) {
                dataOutputStream.close();
            }
            BufferedInputStream bufferedInputStream = this.f72968c;
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
        } catch (SocketException e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(e10.getClass().getName());
            sb2.append(":");
            sb2.append(e10.getMessage());
        } catch (IOException e11) {
            e11.printStackTrace();
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
        a aVar = this.f72976k;
        if (aVar != null) {
            aVar.a(false);
        }
        this.f72975j = status;
        d();
    }

    void d() {
        a aVar;
        int iB = b(this.f72972g, this.f72971f);
        com.join.mgps.socket.entity.c cVar = new com.join.mgps.socket.entity.c();
        cVar.f73021u = iB;
        cVar.f73019s = this.f72973h;
        cVar.f73020t = this.f72978m;
        int i10 = this.f72975j;
        cVar.f73022v = i10;
        cVar.f72998a = 1;
        cVar.f73024x = this.f72974i;
        cVar.f73023w = 0;
        if ((i10 == 3 || i10 == 4) && (aVar = this.f72976k) != null && aVar.f72979b) {
            return;
        }
        org.greenrobot.eventbus.c.f().q(cVar);
    }

    void e(com.join.mgps.socket.entity.d requestBean) {
        a aVar;
        if (this.f72967b == null || requestBean == null) {
            return;
        }
        this.f72971f = 0L;
        this.f72972g = 0L;
        this.f72973h = null;
        String strB = requestBean.b();
        this.f72978m = strB;
        this.f72974i = null;
        if (o0.D(strB)) {
            try {
                try {
                    this.f72968c = new BufferedInputStream(new FileInputStream(new File(this.f72978m)));
                    this.f72967b.writeInt(2);
                    this.f72967b.flush();
                    long jC = requestBean.c();
                    this.f72972g = jC;
                    this.f72967b.writeLong(jC);
                    this.f72967b.flush();
                    String strA = requestBean.a();
                    this.f72973h = strA;
                    this.f72967b.writeUTF(strA);
                    this.f72967b.flush();
                    String strD = requestBean.d();
                    this.f72974i = strD;
                    this.f72967b.writeUTF(strD);
                    this.f72967b.flush();
                    byte[] bArr = new byte[1048576];
                    a aVar2 = new a();
                    this.f72976k = aVar2;
                    aVar2.start();
                    while (true) {
                        int i10 = this.f72968c.read(bArr, 0, 1048576);
                        if (i10 == -1) {
                            break;
                        }
                        this.f72967b.write(bArr, 0, i10);
                        long j10 = this.f72971f + ((long) i10);
                        this.f72971f = j10;
                        if (j10 < this.f72972g) {
                            this.f72975j = 2;
                        } else {
                            c(3);
                        }
                    }
                    this.f72967b.flush();
                    this.f72968c.close();
                    aVar = this.f72976k;
                    if (aVar == null) {
                        return;
                    }
                } catch (Exception e10) {
                    c(4);
                    e10.printStackTrace();
                    aVar = this.f72976k;
                    if (aVar == null) {
                        return;
                    }
                }
                aVar.a(false);
            } catch (Throwable th) {
                a aVar3 = this.f72976k;
                if (aVar3 != null) {
                    aVar3.a(false);
                }
                throw th;
            }
        }
    }

    void g(h requestBean) {
        String strA = requestBean.a();
        if (this.f72967b == null || t2.h(strA)) {
            return;
        }
        try {
            if (!strA.equals(com.join.mgps.socket.entity.a.f72985f)) {
                strA.equals(com.join.mgps.socket.entity.a.f72986g);
            }
            this.f72967b.writeInt(1);
            this.f72967b.flush();
            this.f72967b.writeUTF(strA);
            this.f72967b.flush();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("receiverText: 发送的文本数据为");
            sb2.append(strA);
        } catch (SocketException e10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(e10.getClass().getName());
            sb3.append(":");
            sb3.append(e10.getMessage());
        } catch (IOException e11) {
            e11.printStackTrace();
        }
    }

    public void h(boolean monitor) {
        this.f72977l = monitor;
    }

    @Override // java.lang.Runnable
    public void run() {
        e eVarC;
        try {
            this.f72967b = new DataOutputStream(new BufferedOutputStream(this.f72969d.getOutputStream()));
            while (this.f72977l) {
                Socket socket = this.f72969d;
                if (socket != null && this.f72967b != null && !socket.isClosed() && (eVarC = com.join.mgps.socket.a.b().c()) != null) {
                    if (eVarC instanceof h) {
                        g((h) eVarC);
                    } else if (eVarC instanceof com.join.mgps.socket.entity.d) {
                        e((com.join.mgps.socket.entity.d) eVarC);
                    }
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException e10) {
                        Thread.currentThread().interrupt();
                        e10.printStackTrace();
                    }
                }
            }
        } catch (IOException e11) {
            e11.printStackTrace();
        }
    }
}
