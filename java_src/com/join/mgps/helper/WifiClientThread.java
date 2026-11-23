package com.join.mgps.helper;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.aidl.FightProtocal;
import com.join.mgps.aidl.FightProtocalManager;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import r6.c;

/* JADX INFO: loaded from: classes3.dex */
public class WifiClientThread {
    public static final int SERVERPORT = 8193;
    private String IP;
    private BufferedOutputStream bufferedOutputStream;
    public Context context;

    /* JADX INFO: renamed from: in, reason: collision with root package name */
    public InputStream f71629in;
    private DataInputStream ind;
    private Handler mHandler;
    public Socket socket;
    private String TAG = getClass().getSimpleName();
    private boolean checking = true;
    private List<byte[]> datas = new ArrayList(0);

    class a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f71630b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f71631c;

        /* JADX INFO: renamed from: com.join.mgps.helper.WifiClientThread$a$a, reason: collision with other inner class name */
        class RunnableC0734a implements Runnable {
            RunnableC0734a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    Socket socket = WifiClientThread.this.socket;
                    if (socket != null && socket.isClosed()) {
                        break;
                    }
                    try {
                        Message message = new Message();
                        int iAvailable = WifiClientThread.this.ind.available();
                        while (iAvailable == 0) {
                            iAvailable = WifiClientThread.this.ind.available();
                        }
                        byte[] bArr = new byte[iAvailable];
                        WifiClientThread.this.ind.read(bArr);
                        String str = new String(bArr, "utf8");
                        String unused = WifiClientThread.this.TAG;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("client Receiver:");
                        sb2.append(str);
                        FightProtocal fightProtocal = (FightProtocal) JsonMapper.getInstance().fromJson(str, FightProtocal.class);
                        if (fightProtocal.getType() == FightProtocal.TYPE_ACK) {
                            try {
                                if (fightProtocal.getNo() == FightProtocalManager.ackSignal) {
                                    message.what = 9001;
                                    message.obj = fightProtocal.getBrand() + "-" + fightProtocal.getOpponent();
                                    WifiClientThread.this.mHandler.sendMessage(message);
                                } else if (fightProtocal.getGameId().equals(a.this.f71631c)) {
                                    fightProtocal.setOpponent(AccountUtil_.getInstance_(WifiClientThread.this.context).getAccountData().getAvatarSrc());
                                    WifiClientThread.this.bufferedOutputStream.write(FightProtocalManager.ackSignalClient(fightProtocal).getBytes());
                                    WifiClientThread.this.bufferedOutputStream.flush();
                                } else {
                                    message.what = c.E;
                                    message.obj = fightProtocal.getGameId() + "_" + fightProtocal.getGameName();
                                    WifiClientThread.this.mHandler.sendMessage(message);
                                    WifiClientThread.this.close();
                                }
                            } catch (IOException e10) {
                                e10.printStackTrace();
                            }
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_DISCONNECT) {
                            WifiClientThread.this.bufferedOutputStream.write(FightProtocalManager.ackDisconnect(fightProtocal).getBytes());
                            WifiClientThread.this.bufferedOutputStream.flush();
                            WifiClientThread.this.socket.close();
                            WifiClientThread.this.mHandler.sendEmptyMessage(9002);
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_AckDISCONNECT) {
                            WifiClientThread.this.socket.close();
                            WifiClientThread.this.mHandler.sendEmptyMessage(c.D);
                        } else if (fightProtocal.getType() == FightProtocal.TYPE_STARTGAME) {
                            String unused2 = WifiClientThread.this.TAG;
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("start game:");
                            sb3.append(iAvailable);
                            WifiClientThread.this.socket.close();
                            WifiClientThread.this.mHandler.sendEmptyMessage(9005);
                        }
                    } catch (Exception e11) {
                        String unused3 = WifiClientThread.this.TAG;
                        e11.toString();
                        WifiClientThread.this.mHandler.sendEmptyMessage(9003);
                        try {
                            Socket socket2 = WifiClientThread.this.socket;
                            if (socket2 == null) {
                                break;
                            }
                            socket2.close();
                            break;
                            String unused4 = WifiClientThread.this.TAG;
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                    }
                }
                String unused5 = WifiClientThread.this.TAG;
            }
        }

        a(final String val$ip, final String val$gameId) {
            this.f71630b = val$ip;
            this.f71631c = val$gameId;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                WifiClientThread.this.socket = new Socket(this.f71630b, 8193);
                WifiClientThread.this.socket.setKeepAlive(true);
                WifiClientThread.this.ind = new DataInputStream(WifiClientThread.this.socket.getInputStream());
                WifiClientThread.this.bufferedOutputStream = new BufferedOutputStream(WifiClientThread.this.socket.getOutputStream());
                new Thread(new RunnableC0734a()).start();
            } catch (Exception e10) {
                String unused = WifiClientThread.this.TAG;
                WifiClientThread.this.mHandler.sendEmptyMessage(20000);
                WifiClientThread.this.socket = null;
                e10.printStackTrace();
            }
        }
    }

    public WifiClientThread(Context context, Handler handler) {
        this.context = context;
        this.mHandler = handler;
    }

    public void close() {
        if (this.socket != null) {
            try {
                send(c.f96781u.getBytes("utf8"));
                this.socket.close();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        this.socket = null;
        System.gc();
    }

    public void disConnect() {
        try {
            if (this.bufferedOutputStream != null && !this.socket.isClosed()) {
                this.bufferedOutputStream.write(FightProtocalManager.disconnect().getBytes());
                this.bufferedOutputStream.flush();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public byte[] get() {
        byte[] bArr = this.datas.get(0);
        this.datas.remove(0);
        return bArr;
    }

    public void run(final String ip, final String gameId) {
        new a(ip, gameId).start();
    }

    public void send(byte[] data) {
        Socket socket = this.socket;
        if (socket == null || socket.isClosed()) {
            this.checking = false;
            return;
        }
        try {
            this.bufferedOutputStream.write(data);
            this.bufferedOutputStream.flush();
        } catch (Exception e10) {
            this.checking = false;
            this.mHandler.sendEmptyMessage(9002);
            e10.printStackTrace();
            close();
        }
    }

    public void close(boolean sendBroadcast) {
        try {
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
