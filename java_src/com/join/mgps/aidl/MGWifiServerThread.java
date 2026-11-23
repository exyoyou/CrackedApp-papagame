package com.join.mgps.aidl;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.AccountUtil_;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

/* JADX INFO: loaded from: classes3.dex */
public class MGWifiServerThread {
    private static final int SERVERPORT = 8193;
    private Handler handler;
    private Context mContext;
    private ServerSocket mserverSocket;
    private String TAG = getClass().getSimpleName();
    private Boolean isrun = Boolean.TRUE;
    private Boolean shutDownPositive = Boolean.FALSE;
    private List<b> clientMap = new Vector(0);
    private boolean isDisconnected = false;
    long lastSyncTime = 0;
    boolean monitoring = true;

    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                try {
                    MGWifiServerThread.this.clientMap.clear();
                    if (MGWifiServerThread.this.mserverSocket != null) {
                        MGWifiServerThread.this.mserverSocket.close();
                        MGWifiServerThread.this.mserverSocket = null;
                    }
                    MGWifiServerThread.this.mserverSocket = new ServerSocket(8193);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("tbl>>>isrun:");
                    sb2.append(MGWifiServerThread.this.isrun);
                    MGWifiServerThread.this.handler.sendEmptyMessage(r6.c.B);
                    while (MGWifiServerThread.this.isrun.booleanValue()) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("tbl>>>mserverSocket.isClosed():");
                        sb3.append(MGWifiServerThread.this.mserverSocket.isClosed());
                        if (MGWifiServerThread.this.mserverSocket.isClosed()) {
                            break;
                        }
                        String unused = MGWifiServerThread.this.TAG;
                        b bVar = MGWifiServerThread.this.new b(MGWifiServerThread.this.mserverSocket.accept());
                        MGWifiServerThread.this.clientMap.add(bVar);
                        new Thread(bVar).start();
                    }
                    String unused2 = MGWifiServerThread.this.TAG;
                    if (MGWifiServerThread.this.mserverSocket != null) {
                        try {
                            MGWifiServerThread.this.mserverSocket.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                    }
                } catch (SocketException e11) {
                    e11.printStackTrace();
                }
            } catch (Exception e12) {
                e12.printStackTrace();
                String unused3 = MGWifiServerThread.this.TAG;
                if (MGWifiServerThread.this.shutDownPositive.booleanValue()) {
                    return;
                }
                MGWifiServerThread.this.handler.sendEmptyMessage(r6.c.C);
            }
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Socket f64055b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private BufferedOutputStream f64056c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private DataInputStream f64057d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f64058e = false;

        class a extends Thread {
            a() {
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                while (true) {
                    try {
                        Thread.sleep(1000L);
                        b.this.f64056c.write(FightProtocalManager.ackSync().getBytes());
                        b.this.f64056c.flush();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.aidl.MGWifiServerThread$b$b, reason: collision with other inner class name */
        class C0698b extends Thread {
            C0698b() {
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                try {
                    b.this.f64056c.write(FightProtocalManager.startGame().getBytes());
                    b.this.f64056c.flush();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }

        class c extends Thread {
            c() {
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                try {
                    MGWifiServerThread.this.monitoring = false;
                    String strDisconnect = FightProtocalManager.disconnect();
                    String unused = MGWifiServerThread.this.TAG;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("disconnect ");
                    sb2.append(strDisconnect);
                    b.this.f64056c.write(strDisconnect.getBytes());
                    b.this.f64056c.flush();
                } catch (IOException e10) {
                    e10.printStackTrace();
                    MGWifiServerThread.this.shutDown();
                }
            }
        }

        public b(Socket _socket) {
            this.f64055b = _socket;
            try {
                this.f64056c = new BufferedOutputStream(this.f64055b.getOutputStream());
                this.f64057d = new DataInputStream(this.f64055b.getInputStream());
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }

        private void d(byte[] data) {
            try {
                String str = new String(data, "gbk");
                String unused = MGWifiServerThread.this.TAG;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("server send=");
                sb2.append(str);
                this.f64056c.write(data);
                this.f64056c.flush();
            } catch (Exception e10) {
                e10.printStackTrace();
                MGWifiServerThread.this.handler.sendEmptyMessage(9002);
                MGWifiServerThread.this.isrun = Boolean.FALSE;
            }
        }

        public void b(boolean positive) {
            Socket socket = this.f64055b;
            if (socket != null) {
                try {
                    if (!socket.isClosed()) {
                        this.f64055b.shutdownInput();
                        this.f64055b.shutdownOutput();
                        this.f64055b.close();
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
            if (positive) {
                MGWifiServerThread.this.handler.sendEmptyMessage(r6.c.D);
            } else {
                MGWifiServerThread.this.handler.sendEmptyMessage(9002);
            }
        }

        public void c() {
            new c().start();
        }

        public void e() {
            new C0698b().start();
        }

        @Override // java.lang.Runnable
        public void run() {
            FightProtocal fightProtocal;
            try {
                this.f64056c.write(FightProtocalManager.ackSignal("", "", AccountUtil_.getInstance_(MGWifiServerThread.this.mContext).getAccountData().getAvatarSrc()).getBytes());
                this.f64056c.flush();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            while (!this.f64055b.isClosed()) {
                try {
                    int iAvailable = this.f64057d.available();
                    while (iAvailable == 0) {
                        iAvailable = this.f64057d.available();
                    }
                    byte[] bArr = new byte[iAvailable];
                    this.f64057d.read(bArr);
                    String str = new String(bArr, "gbk");
                    String unused = MGWifiServerThread.this.TAG;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("tbl>>>server receive:");
                    sb2.append(iAvailable);
                    try {
                        fightProtocal = (FightProtocal) JsonMapper.getInstance().fromJson(str, FightProtocal.class);
                    } catch (Exception e11) {
                        e11.printStackTrace();
                        fightProtocal = null;
                    }
                    if (fightProtocal != null) {
                        if (fightProtocal.getType() == FightProtocal.TYPE_ACK && FightProtocalManager.ackReceivedSignal(fightProtocal)) {
                            String unused2 = MGWifiServerThread.this.TAG;
                            Message message = new Message();
                            message.what = 9001;
                            message.obj = fightProtocal.getBrand() + "-" + fightProtocal.getOpponent();
                            MGWifiServerThread.this.handler.sendMessage(message);
                            fightProtocal.setBrand(Build.BRAND);
                            fightProtocal.setOpponent(AccountUtil_.getInstance_(MGWifiServerThread.this.mContext).getAccountData().getAvatarSrc());
                            d(JsonMapper.getInstance().toJson(fightProtocal).getBytes());
                            MGWifiServerThread.this.new c().start();
                            new a().start();
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_DISCONNECT) {
                            String unused3 = MGWifiServerThread.this.TAG;
                            MGWifiServerThread.this.monitoring = false;
                            d(FightProtocalManager.ackDisconnect(fightProtocal).getBytes());
                            b(false);
                            MGWifiServerThread.this.shutDown();
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_AckDISCONNECT) {
                            String unused4 = MGWifiServerThread.this.TAG;
                            MGWifiServerThread.this.monitoring = false;
                            b(true);
                            MGWifiServerThread.this.shutDown();
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_SYNC) {
                            MGWifiServerThread.this.lastSyncTime = System.currentTimeMillis();
                        }
                    }
                } catch (IOException e12) {
                    e12.printStackTrace();
                }
            }
        }
    }

    class c extends Thread {
        c() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (MGWifiServerThread.this.monitoring) {
                try {
                    Thread.sleep(500L);
                    if (MGWifiServerThread.this.lastSyncTime != 0) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        MGWifiServerThread mGWifiServerThread = MGWifiServerThread.this;
                        if (jCurrentTimeMillis - mGWifiServerThread.lastSyncTime > 4000) {
                            if (mGWifiServerThread.monitoring) {
                                mGWifiServerThread.handler.sendEmptyMessage(9002);
                                return;
                            }
                            return;
                        }
                        continue;
                    }
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public MGWifiServerThread(Context context, Handler handler) {
        this.mContext = context;
        this.handler = handler;
    }

    public void disConnect() {
        if (this.clientMap.size() == 0) {
            shutDown();
            return;
        }
        Iterator<b> it2 = this.clientMap.iterator();
        while (it2.hasNext()) {
            it2.next().c();
        }
    }

    public byte[] getData() {
        return this.clientMap.size() == 0 ? new byte[0] : new byte[0];
    }

    public void run() {
        if (this.mserverSocket != null) {
            shutDown();
        }
        new a().start();
    }

    public void send(byte[] data) {
        if (this.clientMap.size() == 0) {
            return;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("server send:");
            sb2.append(new String(data, "gbk"));
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
    }

    public void shutDown() {
        try {
            this.shutDownPositive = Boolean.TRUE;
            if (this.mserverSocket != null) {
                this.clientMap.clear();
                this.mserverSocket.close();
            }
            this.isrun = Boolean.FALSE;
            this.mserverSocket = null;
            System.gc();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void startGame() {
        if (this.clientMap.size() == 0) {
            shutDown();
            return;
        }
        Iterator<b> it2 = this.clientMap.iterator();
        while (it2.hasNext()) {
            it2.next().e();
        }
    }
}
