package com.join.mgps.service;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import androidx.annotation.Nullable;
import com.join.mgps.Util.g2;
import com.join.mgps.socket.entity.f;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;

/* JADX INFO: loaded from: classes3.dex */
public class SocketClientService extends Service {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f72874e = "SocketClientService";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f72875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f72876c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f72877d = 3;

    public class a extends Binder {
        public Socket socket = null;

        /* JADX INFO: renamed from: com.join.mgps.service.SocketClientService$a$a, reason: collision with other inner class name */
        class RunnableC0742a implements Runnable {
            RunnableC0742a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                while (SocketClientService.this.f72877d > 0) {
                    try {
                        g2.b(1000);
                        a.this.socket = new Socket();
                        a.this.socket.setKeepAlive(true);
                        a.this.socket.setTcpNoDelay(true);
                        a.this.socket.setSoLinger(true, 0);
                        a.this.socket.setSendBufferSize(1048576);
                        a.this.socket.setReceiveBufferSize(1048576);
                        a.this.socket.connect(new InetSocketAddress(SocketClientService.this.f72875b, 4000), 10000);
                        a.this.postSocketConnectedStatus(1);
                        String unused = SocketClientService.f72874e;
                        SocketClientService.this.f72877d = 0;
                    } catch (Exception e10) {
                        SocketClientService socketClientService = SocketClientService.this;
                        int i10 = socketClientService.f72877d - 1;
                        socketClientService.f72877d = i10;
                        if (i10 <= 0) {
                            String unused2 = SocketClientService.f72874e;
                            a.this.postSocketConnectedStatus(2);
                        }
                        e10.printStackTrace();
                    }
                }
            }
        }

        public a() {
        }

        public Socket getSocket() {
            return this.socket;
        }

        public void newSocket() {
            new Thread(new RunnableC0742a()).start();
        }

        void postSocketConnectedStatus(int status) {
            f fVar = new f();
            fVar.f73035a = status;
            org.greenrobot.eventbus.c.f().q(fVar);
        }
    }

    void b() {
        Socket socket;
        a aVar = this.f72876c;
        if (aVar == null || (socket = aVar.socket) == null || socket.isClosed()) {
            return;
        }
        try {
            this.f72876c.socket.close();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        this.f72875b = intent.getStringExtra(u.c.f97430f);
        return this.f72876c;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        b();
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        super.onRebind(intent);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        this.f72877d = 3;
        return 1;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return true;
    }
}
