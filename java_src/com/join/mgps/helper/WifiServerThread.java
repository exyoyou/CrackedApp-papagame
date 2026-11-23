package com.join.mgps.helper;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.aidl.FightProtocal;
import com.join.mgps.aidl.FightProtocalManager;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class WifiServerThread {
    private static final int SERVERPORT = 8193;
    private Handler handler;
    private Context mContext;
    private String mGameId;
    private String mGameName;
    private ServerSocket mserverSocket;
    private String TAG = getClass().getSimpleName();
    private Boolean isrun = Boolean.TRUE;
    private Boolean shutDownPositive = Boolean.FALSE;
    private List<c> clientMap = new ArrayList(0);
    private JsonMapper jsonMapper = JsonMapper.getInstance();
    private boolean checking = true;

    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                try {
                    WifiServerThread.this.clientMap.clear();
                    if (WifiServerThread.this.mserverSocket != null) {
                        WifiServerThread.this.mserverSocket.close();
                        WifiServerThread.this.mserverSocket = null;
                    }
                    WifiServerThread.this.mserverSocket = new ServerSocket(8193);
                    WifiServerThread.this.handler.sendEmptyMessage(r6.c.B);
                    while (WifiServerThread.this.isrun.booleanValue() && !WifiServerThread.this.mserverSocket.isClosed()) {
                        String unused = WifiServerThread.this.TAG;
                        c cVar = WifiServerThread.this.new c(WifiServerThread.this.mserverSocket.accept());
                        WifiServerThread.this.clientMap.clear();
                        WifiServerThread.this.clientMap.add(cVar);
                        new Thread(cVar).start();
                    }
                    String unused2 = WifiServerThread.this.TAG;
                    if (WifiServerThread.this.mserverSocket != null) {
                        try {
                            WifiServerThread.this.mserverSocket.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                    String unused3 = WifiServerThread.this.TAG;
                    if (WifiServerThread.this.shutDownPositive.booleanValue()) {
                        return;
                    }
                    WifiServerThread.this.handler.sendEmptyMessage(r6.c.C);
                }
            } catch (SocketException e12) {
                e12.printStackTrace();
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (WifiServerThread.this.clientMap.size() == 0) {
                    WifiServerThread.this.shutDown();
                    return;
                }
                Iterator it2 = WifiServerThread.this.clientMap.iterator();
                while (it2.hasNext()) {
                    ((c) it2.next()).c();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Socket f71636b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private BufferedOutputStream f71637c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private DataInputStream f71638d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f71639e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f71640f = false;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    String strDisconnect = FightProtocalManager.disconnect();
                    String unused = WifiServerThread.this.TAG;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("disconnect ");
                    sb2.append(strDisconnect);
                    c.this.f71637c.write(strDisconnect.getBytes());
                    c.this.f71637c.flush();
                } catch (IOException e10) {
                    e10.printStackTrace();
                    WifiServerThread.this.shutDown();
                }
            }
        }

        public c(Socket _socket) {
            this.f71636b = _socket;
            try {
                this.f71637c = new BufferedOutputStream(this.f71636b.getOutputStream());
                this.f71638d = new DataInputStream(this.f71636b.getInputStream());
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }

        private void d(byte[] data) {
            try {
                String str = new String(data, "utf8");
                String unused = WifiServerThread.this.TAG;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("server send=");
                sb2.append(str);
                this.f71637c.write(data);
                this.f71637c.flush();
            } catch (Exception e10) {
                e10.printStackTrace();
                WifiServerThread.this.checking = false;
                WifiServerThread.this.handler.sendEmptyMessage(9002);
                WifiServerThread.this.isrun = Boolean.FALSE;
            }
        }

        public void b(boolean positive) {
            Socket socket = this.f71636b;
            if (socket != null) {
                try {
                    if (!socket.isClosed()) {
                        this.f71636b.shutdownInput();
                        this.f71636b.shutdownOutput();
                        this.f71636b.close();
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
            if (positive) {
                WifiServerThread.this.handler.sendEmptyMessage(r6.c.D);
            } else {
                WifiServerThread.this.handler.sendEmptyMessage(9002);
            }
        }

        public void c() {
            new Thread(new a()).start();
        }

        public void e() {
            try {
                this.f71637c.write(FightProtocalManager.startGame().getBytes());
                this.f71637c.flush();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                d(FightProtocalManager.ackSignal(WifiServerThread.this.mGameId, WifiServerThread.this.mGameName, AccountUtil_.getInstance_(WifiServerThread.this.mContext).getAccountData().getAvatarSrc()).getBytes());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            while (!this.f71636b.isClosed()) {
                try {
                    Message message = new Message();
                    int iAvailable = this.f71638d.available();
                    while (iAvailable == 0) {
                        iAvailable = this.f71638d.available();
                    }
                    byte[] bArr = new byte[iAvailable];
                    this.f71638d.read(bArr);
                    String str = new String(bArr, "utf8");
                    String unused = WifiServerThread.this.TAG;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("server receive:");
                    sb2.append(iAvailable);
                    FightProtocal fightProtocal = (FightProtocal) WifiServerThread.this.jsonMapper.fromJson(str, FightProtocal.class);
                    if (fightProtocal != null) {
                        if (fightProtocal.getType() == FightProtocal.TYPE_ACK && FightProtocalManager.ackReceivedSignal(fightProtocal)) {
                            this.f71640f = false;
                            message.what = 9001;
                            message.obj = fightProtocal.getBrand() + "-" + fightProtocal.getOpponent();
                            WifiServerThread.this.handler.sendMessage(message);
                            fightProtocal.setBrand(Build.BRAND);
                            fightProtocal.setOpponent(AccountUtil_.getInstance_(WifiServerThread.this.mContext).getAccountData().getAvatarSrc());
                            d(WifiServerThread.this.jsonMapper.toJson(fightProtocal).getBytes());
                            String unused2 = WifiServerThread.this.TAG;
                            this.f71640f = true;
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_DISCONNECT) {
                            String unused3 = WifiServerThread.this.TAG;
                            if (!this.f71640f) {
                                return;
                            }
                            d(FightProtocalManager.ackDisconnect(fightProtocal).getBytes());
                            b(false);
                            WifiServerThread.this.shutDown();
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_AckDISCONNECT) {
                            String unused4 = WifiServerThread.this.TAG;
                            this.f71640f = false;
                            b(true);
                            WifiServerThread.this.shutDown();
                        }
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
    }

    public WifiServerThread(Context context, Handler handler, String gameId, String gameName) {
        this.mContext = context;
        this.handler = handler;
        this.mGameId = gameId;
        this.mGameName = gameName;
    }

    public void disConnect() {
        new Thread(new b()).start();
    }

    public byte[] getData() {
        return this.clientMap.size() == 0 ? new byte[0] : new byte[0];
    }

    public void run() {
        if (this.mserverSocket != null) {
            shutDown();
        }
        this.isrun = Boolean.TRUE;
        new a().start();
    }

    public void send(byte[] data) {
        if (this.clientMap.size() == 0) {
            return;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("server send:");
            sb2.append(new String(data, "utf8"));
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
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public void startGame() {
        if (this.clientMap.size() == 0) {
            shutDown();
            return;
        }
        Iterator<c> it2 = this.clientMap.iterator();
        while (it2.hasNext()) {
            it2.next().e();
        }
    }
}
