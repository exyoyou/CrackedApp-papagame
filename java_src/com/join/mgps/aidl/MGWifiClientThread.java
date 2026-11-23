package com.join.mgps.aidl;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.Util.g2;
import com.join.mgps.Util.h1;
import com.windmill.sdk.WMConstants;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MGWifiClientThread {
    public static final int SERVERPORT = 8193;
    private BufferedOutputStream bufferedOutputStream;
    public Context context;

    /* JADX INFO: renamed from: in, reason: collision with root package name */
    public InputStream f64048in;
    private DataInputStream ind;
    private Handler mHandler;
    public Socket socket;
    private String ssid;
    private String TAG = getClass().getSimpleName();
    private JsonMapper jsonMapper = JsonMapper.getInstance();
    private boolean ping = true;
    private List<byte[]> datas = new ArrayList(0);
    long lastSyncTime = 0;
    boolean monitoring = true;

    class a extends Thread {

        /* JADX INFO: renamed from: com.join.mgps.aidl.MGWifiClientThread$a$a, reason: collision with other inner class name */
        class RunnableC0696a implements Runnable {

            /* JADX INFO: renamed from: com.join.mgps.aidl.MGWifiClientThread$a$a$a, reason: collision with other inner class name */
            class C0697a extends Thread {
                C0697a() {
                }

                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    super.run();
                    while (true) {
                        try {
                            Thread.sleep(1000L);
                            MGWifiClientThread.this.bufferedOutputStream.write(FightProtocalManager.ackSync().getBytes());
                            MGWifiClientThread.this.bufferedOutputStream.flush();
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                }
            }

            RunnableC0696a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    Socket socket = MGWifiClientThread.this.socket;
                    if (socket != null && socket.isClosed()) {
                        break;
                    }
                    try {
                        int iAvailable = MGWifiClientThread.this.ind.available();
                        while (iAvailable == 0) {
                            iAvailable = MGWifiClientThread.this.ind.available();
                        }
                        byte[] bArr = new byte[iAvailable];
                        MGWifiClientThread.this.ind.read(bArr);
                        String str = new String(bArr, "gbk");
                        String unused = MGWifiClientThread.this.TAG;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("client Receiver:");
                        sb2.append(str);
                        FightProtocal fightProtocal = (FightProtocal) MGWifiClientThread.this.jsonMapper.fromJson(str, FightProtocal.class);
                        if (fightProtocal.getType() == FightProtocal.TYPE_ACK) {
                            try {
                                if (fightProtocal.getNo() == FightProtocalManager.ackSignal) {
                                    Message message = new Message();
                                    message.what = 9001;
                                    message.obj = fightProtocal.getBrand() + "-" + fightProtocal.getOpponent();
                                    MGWifiClientThread.this.mHandler.sendMessage(message);
                                    MGWifiClientThread.this.new c().start();
                                    new C0697a().start();
                                } else {
                                    fightProtocal.setOpponent(AccountUtil_.getInstance_(MGWifiClientThread.this.context).getAccountData().getAvatarSrc());
                                    MGWifiClientThread.this.bufferedOutputStream.write(FightProtocalManager.ackSignalClient(fightProtocal).getBytes());
                                    MGWifiClientThread.this.bufferedOutputStream.flush();
                                }
                            } catch (IOException e10) {
                                e10.printStackTrace();
                            }
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_DISCONNECT) {
                            MGWifiClientThread mGWifiClientThread = MGWifiClientThread.this;
                            mGWifiClientThread.monitoring = false;
                            mGWifiClientThread.bufferedOutputStream.write(FightProtocalManager.ackDisconnect(fightProtocal).getBytes());
                            MGWifiClientThread.this.bufferedOutputStream.flush();
                            MGWifiClientThread.this.socket.close();
                            MGWifiClientThread.this.mHandler.sendEmptyMessage(9002);
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_AckDISCONNECT) {
                            MGWifiClientThread mGWifiClientThread2 = MGWifiClientThread.this;
                            mGWifiClientThread2.monitoring = false;
                            mGWifiClientThread2.socket.close();
                            MGWifiClientThread.this.mHandler.sendEmptyMessage(r6.c.D);
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_STARTGAME) {
                            String unused2 = MGWifiClientThread.this.TAG;
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("start game:");
                            sb3.append(iAvailable);
                            MGWifiClientThread mGWifiClientThread3 = MGWifiClientThread.this;
                            mGWifiClientThread3.monitoring = false;
                            mGWifiClientThread3.socket.close();
                            MGWifiClientThread.this.mHandler.sendEmptyMessage(9005);
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_SYNC) {
                            MGWifiClientThread.this.lastSyncTime = System.currentTimeMillis();
                        }
                    } catch (Exception e11) {
                        String unused3 = MGWifiClientThread.this.TAG;
                        e11.toString();
                        MGWifiClientThread.this.ssid = WMConstants.TIMER_STAGE_NONE;
                        MGWifiClientThread.this.mHandler.sendEmptyMessage(9003);
                        try {
                            Socket socket2 = MGWifiClientThread.this.socket;
                            if (socket2 == null) {
                                break;
                            }
                            socket2.close();
                            break;
                            MGWifiClientThread.this.ssid = WMConstants.TIMER_STAGE_NONE;
                            String unused4 = MGWifiClientThread.this.TAG;
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                    }
                }
                MGWifiClientThread.this.ssid = WMConstants.TIMER_STAGE_NONE;
                String unused5 = MGWifiClientThread.this.TAG;
            }
        }

        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (MGWifiClientThread.this.ping) {
                int dhcpInfo = WifiUtils.getInstance(MGWifiClientThread.this.context).getDhcpInfo();
                boolean zPingCmd = WifiUtils.getInstance(MGWifiClientThread.this.context).pingCmd(com.join.mgps.socket.entity.b.f73007i);
                h1.a("xxxxxxxxx" + dhcpInfo + ";p=" + zPingCmd + ";ip=" + WifiUtils.getInstance(MGWifiClientThread.this.context).getServerIPAddress(), new Object[0]);
                if (zPingCmd) {
                    break;
                } else {
                    g2.b(1000);
                }
            }
            int i10 = 3;
            while (i10 > 0) {
                try {
                    try {
                        MGWifiClientThread.this.socket = new Socket();
                        MGWifiClientThread.this.socket.connect(new InetSocketAddress(com.join.mgps.socket.entity.b.f73007i, 8193));
                        MGWifiClientThread.this.socket.setKeepAlive(true);
                        MGWifiClientThread.this.ind = new DataInputStream(MGWifiClientThread.this.socket.getInputStream());
                        MGWifiClientThread.this.bufferedOutputStream = new BufferedOutputStream(MGWifiClientThread.this.socket.getOutputStream());
                        new Thread(new RunnableC0696a()).start();
                        MGWifiClientThread.this.ssid = WMConstants.TIMER_STAGE_NONE;
                        return;
                    } catch (Exception e10) {
                        g2.b(1000);
                        String unused = MGWifiClientThread.this.TAG;
                        i10--;
                        if (i10 == 0) {
                            MGWifiClientThread.this.ssid = WMConstants.TIMER_STAGE_NONE;
                        }
                        MGWifiClientThread.this.socket = null;
                        e10.printStackTrace();
                        MGWifiClientThread.this.ssid = WMConstants.TIMER_STAGE_NONE;
                    }
                } catch (Throwable th) {
                    MGWifiClientThread.this.ssid = WMConstants.TIMER_STAGE_NONE;
                    throw th;
                }
            }
        }
    }

    class b extends Thread {
        b() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                MGWifiClientThread.this.ssid = WMConstants.TIMER_STAGE_NONE;
                MGWifiClientThread mGWifiClientThread = MGWifiClientThread.this;
                mGWifiClientThread.monitoring = false;
                mGWifiClientThread.bufferedOutputStream.write(FightProtocalManager.disconnect().getBytes());
                MGWifiClientThread.this.bufferedOutputStream.flush();
            } catch (Exception e10) {
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
            while (MGWifiClientThread.this.monitoring) {
                try {
                    Thread.sleep(500L);
                    if (MGWifiClientThread.this.lastSyncTime != 0) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        MGWifiClientThread mGWifiClientThread = MGWifiClientThread.this;
                        if (jCurrentTimeMillis - mGWifiClientThread.lastSyncTime > 4000) {
                            if (mGWifiClientThread.monitoring) {
                                mGWifiClientThread.mHandler.sendEmptyMessage(9002);
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

    public MGWifiClientThread(Context context, Handler handler, String ssid) {
        this.context = context;
        this.mHandler = handler;
        this.ssid = ssid;
    }

    public void close() {
        if (this.socket != null) {
            try {
                send(r6.c.f96781u.getBytes("gbk"));
                this.socket.close();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        this.ssid = WMConstants.TIMER_STAGE_NONE;
        this.socket = null;
        System.gc();
    }

    public void destroy() {
        this.ping = false;
        Socket socket = this.socket;
        if (socket != null) {
            try {
                socket.close();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            this.socket = null;
        }
    }

    public void disConnect() {
        new b().start();
    }

    public byte[] get() {
        byte[] bArr = this.datas.get(0);
        this.datas.remove(0);
        return bArr;
    }

    public String getSsid() {
        return this.ssid;
    }

    public void run() {
        new a().start();
    }

    public void send(byte[] data) {
        Socket socket = this.socket;
        if (socket == null || socket.isClosed()) {
            return;
        }
        try {
            this.bufferedOutputStream.write(data);
            this.bufferedOutputStream.flush();
        } catch (Exception e10) {
            e10.printStackTrace();
            close();
        }
    }

    public void setSsid(String ssid) {
        this.ssid = ssid;
    }

    public void close(boolean sendBroadcast) {
        try {
            this.ssid = WMConstants.TIMER_STAGE_NONE;
            Socket socket = this.socket;
            if (socket != null) {
                socket.close();
            }
            if (sendBroadcast) {
                this.mHandler.sendEmptyMessage(9002);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }
}
