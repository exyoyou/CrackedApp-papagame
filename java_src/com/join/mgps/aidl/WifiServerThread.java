package com.join.mgps.aidl;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import r6.c;

/* JADX INFO: loaded from: classes3.dex */
public class WifiServerThread {
    private static final int SERVERPORT = 8193;
    private Context context;
    private Handler handler;
    private ServerSocket mserverSocket;
    private int single;
    private String TAG = getClass().getSimpleName();
    private Boolean isrun = Boolean.TRUE;
    private Map<String, Client> clientMap = new HashMap(0);

    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                WifiServerThread.this.mserverSocket = new ServerSocket(8193);
                while (WifiServerThread.this.isrun.booleanValue() && !WifiServerThread.this.mserverSocket.isClosed()) {
                    String unused = WifiServerThread.this.TAG;
                    Socket socketAccept = WifiServerThread.this.mserverSocket.accept();
                    b bVar = WifiServerThread.this.new b(socketAccept);
                    Client client = new Client();
                    client.setUuid(socketAccept.getInetAddress().getHostAddress());
                    client.setsClient(bVar);
                    WifiServerThread.this.clientMap.put(socketAccept.getInetAddress().getHostAddress(), client);
                    new Thread(bVar).start();
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
            }
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Socket f64065b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private BufferedOutputStream f64067d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        DataInputStream f64068e;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Client f64071h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private Object f64072i;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private BufferedReader f64066c = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List<byte[]> f64069f = new ArrayList(0);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f64070g = false;

        public b(Socket _socket) {
            this.f64065b = null;
            this.f64065b = _socket;
            try {
                this.f64067d = new BufferedOutputStream(this.f64065b.getOutputStream());
                this.f64068e = new DataInputStream(this.f64065b.getInputStream());
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }

        public void a() {
            Socket socket = this.f64065b;
            if (socket != null) {
                try {
                    if (!socket.isClosed()) {
                        this.f64065b.shutdownInput();
                        this.f64065b.shutdownOutput();
                        this.f64065b.close();
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
            WifiServerThread.this.handler.sendEmptyMessage(9002);
        }

        public byte[] b() {
            byte[] bArr = this.f64069f.get(0);
            this.f64069f.remove(0);
            return bArr;
        }

        public String c() {
            return this.f64065b.getInetAddress().getHostAddress();
        }

        public boolean d() {
            Socket socket = this.f64065b;
            if (socket == null || socket.isInputShutdown() || this.f64065b.isOutputShutdown()) {
                return true;
            }
            return this.f64065b.isClosed();
        }

        public void e(byte[] data) {
            try {
                String str = new String(data, "gbk");
                String unused = WifiServerThread.this.TAG;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("server send=");
                sb2.append(str);
                this.f64067d.write(data);
                this.f64067d.flush();
            } catch (Exception e10) {
                e10.printStackTrace();
                WifiServerThread.this.handler.sendEmptyMessage(9002);
                WifiServerThread.this.isrun = Boolean.FALSE;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f64071h = (Client) WifiServerThread.this.clientMap.get(this.f64065b.getInetAddress().getHostAddress());
            WifiServerThread.this.single = (int) (Math.random() * 100.0d);
            String unused = WifiServerThread.this.TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("send =wifiap_single_acknowledge");
            sb2.append(WifiServerThread.this.single);
            try {
                this.f64067d.write((c.f96778r + WifiServerThread.this.single).getBytes());
                this.f64067d.flush();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            while (!this.f64065b.isClosed()) {
                try {
                    Message message = new Message();
                    int iAvailable = this.f64068e.available();
                    while (iAvailable == 0) {
                        iAvailable = this.f64068e.available();
                    }
                    byte[] bArr = new byte[iAvailable];
                    this.f64068e.read(bArr);
                    String str = new String(bArr, "gbk");
                    String unused2 = WifiServerThread.this.TAG;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("server receive:");
                    sb3.append(iAvailable);
                    this.f64071h.setLastResponseTime(System.currentTimeMillis());
                    if (!this.f64070g && str.startsWith(c.f96778r) && Integer.parseInt(str.split(c.f96778r)[1].replace("\n", "")) == WifiServerThread.this.single + 1) {
                        String unused3 = WifiServerThread.this.TAG;
                        ((Client) WifiServerThread.this.clientMap.get(this.f64065b.getInetAddress().getHostAddress())).setStatus(Client.ClientStatus.BOUND);
                        message.what = 9001;
                        WifiServerThread.this.handler.sendMessage(message);
                        this.f64070g = true;
                        if (this.f64071h == null) {
                            this.f64065b.close();
                            return;
                        }
                        continue;
                    } else if (!str.startsWith(c.f96780t)) {
                        if (str.startsWith(c.f96781u)) {
                            a();
                        } else {
                            this.f64069f.add(bArr);
                        }
                    }
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
            }
        }
    }

    public WifiServerThread(Context context, Handler handler) {
        this.context = context;
        this.handler = handler;
    }

    public void close() {
        Iterator<Map.Entry<String, Client>> it2 = this.clientMap.entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().getsClient().a();
            this.clientMap.clear();
        }
    }

    public byte[] getData() {
        if (this.clientMap.size() == 0) {
            return new byte[0];
        }
        Iterator<Map.Entry<String, Client>> it2 = this.clientMap.entrySet().iterator();
        return it2.hasNext() ? it2.next().getValue().getsClient().b() : new byte[0];
    }

    public String getIP() {
        Iterator<Map.Entry<String, Client>> it2 = this.clientMap.entrySet().iterator();
        return it2.hasNext() ? it2.next().getValue().getsClient().c() : com.join.mgps.socket.entity.b.f73008j;
    }

    public boolean isShutDown() {
        ServerSocket serverSocket = this.mserverSocket;
        if (serverSocket == null) {
            return true;
        }
        return serverSocket.isClosed();
    }

    public void run() {
        ServerSocket serverSocket = this.mserverSocket;
        if (serverSocket == null || serverSocket.isClosed()) {
            new a().start();
        }
    }

    public void send(InputStream is) {
    }

    public void shutDown() {
        try {
            if (this.mserverSocket != null) {
                send(c.f96781u.getBytes("gbk"));
                close();
                this.mserverSocket.close();
            }
            this.isrun = Boolean.FALSE;
            this.mserverSocket = null;
            System.gc();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
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
        Iterator<Map.Entry<String, Client>> it2 = this.clientMap.entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().getsClient().e(data);
        }
    }
}
