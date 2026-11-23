package com.join.mgps.service;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import androidx.annotation.Nullable;
import com.join.mgps.socket.entity.f;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;

/* JADX INFO: loaded from: classes3.dex */
public class SocketServerService extends Service {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f72879c = "SocketServerService";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f72880b = new a();

    public class a extends Binder {
        private ServerSocket mSocketService;
        private boolean mointor = true;
        private Socket mSocket = null;

        /* JADX INFO: renamed from: com.join.mgps.service.SocketServerService$a$a, reason: collision with other inner class name */
        class RunnableC0743a implements Runnable {
            RunnableC0743a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                String unused = SocketServerService.f72879c;
                while (a.this.mointor) {
                    try {
                        a aVar = a.this;
                        aVar.mSocket = aVar.mSocketService.accept();
                        a.this.mointor = false;
                        a.this.postSocketConnectedStatus(1);
                        String unused2 = SocketServerService.f72879c;
                    } catch (IOException e10) {
                        a.this.postSocketConnectedStatus(2);
                        a.this.mointor = false;
                        e10.printStackTrace();
                    }
                }
            }
        }

        public a() {
        }

        private void acceptClient() {
            new Thread(new RunnableC0743a()).start();
        }

        public Socket getSocket() {
            return this.mSocket;
        }

        public void newServerSocket() {
            try {
                String unused = SocketServerService.f72879c;
                ServerSocket serverSocket = new ServerSocket();
                this.mSocketService = serverSocket;
                serverSocket.setReceiveBufferSize(1048576);
                this.mSocketService.bind(new InetSocketAddress(4000));
                acceptClient();
            } catch (IOException e10) {
                postSocketConnectedStatus(2);
                e10.printStackTrace();
            }
        }

        void postSocketConnectedStatus(int status) {
            f fVar = new f();
            fVar.f73035a = status;
            org.greenrobot.eventbus.c.f().q(fVar);
        }

        public void setMonitor(boolean mointor) {
            this.mointor = mointor;
        }
    }

    void b() {
        a aVar = this.f72880b;
        if (aVar == null) {
            return;
        }
        if (aVar.mSocketService != null && !this.f72880b.mSocketService.isClosed()) {
            try {
                this.f72880b.mSocketService.close();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        if (this.f72880b.mSocket == null || this.f72880b.mSocket.isClosed()) {
            return;
        }
        try {
            this.f72880b.mSocket.close();
        } catch (IOException e11) {
            e11.printStackTrace();
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return this.f72880b;
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
        return 1;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return true;
    }
}
