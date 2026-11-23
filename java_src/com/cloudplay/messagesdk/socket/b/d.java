package com.cloudplay.messagesdk.socket.b;

import com.cloudplay.messagesdk.socket.b.g.i;
import com.cloudplay.messagesdk.socket.b.g.j;
import com.cloudplay.messagesdk.socket.b.g.k;
import com.cloudplay.messagesdk.socket.b.g.l;
import com.cloudplay.messagesdk.socket.b.g.m;
import com.cloudplay.messagesdk.socket.b.g.n;
import com.cloudplay.messagesdk.socket.b.g.o;
import com.cloudplay.messagesdk.socket.websocket.exceptions.ParseFailed;
import com.cloudplay.messagesdk.socket.websocket.exceptions.WebSocketException;
import com.cloudplay.messagesdk.socket.websocket.interfaces.IThreadMessenger;
import com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocket;
import com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocketConnectionHandler;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes9.dex */
public class d implements IWebSocket {
    private long A;
    private String B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IThreadMessenger f24131a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.cloudplay.messagesdk.socket.b.f f24132b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ExecutorService f24133c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.cloudplay.messagesdk.socket.b.a f24134d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BufferedOutputStream f24135e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Socket f24136f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private URI f24137g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f24138h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f24139i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f24140j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f24141k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f24142l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String[] f24143m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Map<String, String> f24144n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private IWebSocketConnectionHandler f24145o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private com.cloudplay.messagesdk.socket.b.h.b f24146p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f24147q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f24148r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f24149s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ScheduledExecutorService f24151u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ScheduledFuture<?> f24152v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private ScheduledFuture<?> f24153w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private ScheduledFuture<?> f24154x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f24156z;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f24150t = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f24155y = 0;
    private final Runnable C = new a();
    private final Runnable D = new b();
    private final Runnable E = new c();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.cloudplay.messagesdk.a.e.c("WebSocketConnection", "mHandShakeRunner run()");
            d.this.f24131a.notify(new com.cloudplay.messagesdk.socket.b.g.b("mHandShakeRunner"));
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.cloudplay.messagesdk.a.e.c("WebSocketConnection", "mAutoPinger run()");
            if (d.this.isConnected()) {
                d.this.f24156z = System.currentTimeMillis();
                d.this.sendPing();
                d dVar = d.this;
                dVar.f24153w = dVar.j().schedule(d.this.E, d.this.f24146p.b(), TimeUnit.SECONDS);
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.cloudplay.messagesdk.a.e.c("WebSocketConnection", "mPingTimeout run()");
            if (!d.this.isConnected()) {
                d.this.f24155y = 0;
                return;
            }
            if (!(Math.round(((double) (System.currentTimeMillis() - d.this.A)) / 1000.0d) >= ((long) d.this.f24146p.a()))) {
                d.this.f24155y = 0;
                com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "mPingTimeout run() resetTimeoutCount " + System.currentTimeMillis() + ", pongTime = " + d.this.A + ", timeoutInterval = " + d.this.f24146p.b());
                return;
            }
            if (d.this.f24150t) {
                d.z(d.this);
                com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "mPingTimeout run() " + d.this.B + " pingTimeoutCount = " + d.this.f24155y + ", countMax = " + d.this.f24146p.c());
                if (d.this.f24155y >= d.this.f24146p.c()) {
                    d.this.f24155y = 0;
                    d.this.f24131a.notify(new i("WebSocket ping timed out."));
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.cloudplay.messagesdk.socket.b.d$d, reason: collision with other inner class name */
    class C0529d implements IThreadMessenger.OnMessageListener {
        C0529d() {
        }

        @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IThreadMessenger.OnMessageListener
        public void onMessage(Object obj) {
            if (d.this.f24149s) {
                com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "createHandler() " + d.this.B + ",onClose called already, ignore message.");
                return;
            }
            if (obj instanceof o) {
                o oVar = (o) obj;
                if (d.this.f24145o != null) {
                    d.this.f24145o.onMessage(oVar.f24206a);
                    return;
                }
                com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "createHandler() " + d.this.B + ",could not call onTextMessage() .. handler already NULL");
                return;
            }
            if (obj instanceof l) {
                l lVar = (l) obj;
                if (d.this.f24145o != null) {
                    d.this.f24145o.onMessage(lVar.f24203a, false);
                    return;
                }
                com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "createHandler() " + d.this.B + ",could not call onRawTextMessage() .. handler already NULL");
                return;
            }
            if (obj instanceof com.cloudplay.messagesdk.socket.b.g.a) {
                com.cloudplay.messagesdk.socket.b.g.a aVar = (com.cloudplay.messagesdk.socket.b.g.a) obj;
                if (d.this.f24145o != null) {
                    d.this.f24145o.onMessage(aVar.f24187a, true);
                    return;
                }
                com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "createHandler()" + d.this.B + ",could not call onBinaryMessage() .. handler already NULL");
                return;
            }
            if (obj instanceof com.cloudplay.messagesdk.socket.b.g.h) {
                com.cloudplay.messagesdk.socket.b.g.h hVar = (com.cloudplay.messagesdk.socket.b.g.h) obj;
                com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "createHandler() " + d.this.B + ",WebSocket Ping received");
                if (hVar.f24200a == null) {
                    d.this.f24145o.onPing();
                    return;
                } else {
                    d.this.f24145o.onPing(hVar.f24200a);
                    return;
                }
            }
            if (obj instanceof j) {
                j jVar = (j) obj;
                if (jVar.f24202a == null) {
                    d.this.f24145o.onPong();
                } else {
                    d.this.f24145o.onPong(jVar.f24202a);
                }
                d.this.A = System.currentTimeMillis();
                com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "createHandler() " + d.this.B + " PingPongTimeout RecvPong = " + d.this.A);
                if (d.this.f24153w != null && !d.this.f24153w.isDone() && !d.this.f24153w.isCancelled()) {
                    d.this.f24153w.cancel(true);
                }
                com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "createHandler() " + d.this.B + ",WebSocket Pong received");
                return;
            }
            if (obj instanceof com.cloudplay.messagesdk.socket.b.g.d) {
                com.cloudplay.messagesdk.socket.b.g.d dVar = (com.cloudplay.messagesdk.socket.b.g.d) obj;
                int i10 = dVar.f24195a == 1000 ? 1 : 3;
                com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "createHandler() " + d.this.B + " crossbarCloseCode:" + i10 + ",close.mCode:" + dVar.f24195a + ",close.mIsReply:" + dVar.f24197c + ",mActive:" + d.this.f24147q);
                if (dVar.f24197c) {
                    com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "createHandler() " + d.this.B + ",WebSocket Close received (" + dVar.f24195a + " - " + dVar.f24196b + ")");
                    d.this.d();
                    d.this.b(i10, dVar.f24196b);
                    return;
                }
                if (d.this.f24147q) {
                    d.this.b(false);
                    d.this.a((com.cloudplay.messagesdk.socket.b.g.g) new com.cloudplay.messagesdk.socket.b.g.d(1000, true));
                    d.this.f24147q = false;
                    return;
                }
                com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "createHandler() " + d.this.B + ",WebSocket Close received (" + dVar.f24195a + " - " + dVar.f24196b + ")");
                d.this.d();
                d.this.b(i10, dVar.f24196b);
                return;
            }
            if (obj instanceof n) {
                if (d.this.f24154x != null && !d.this.f24154x.isDone() && !d.this.f24154x.isCancelled()) {
                    d.this.f24154x.cancel(true);
                }
                n nVar = (n) obj;
                com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "createHandler() " + d.this.B + ",opening handshake received");
                if (d.this.f24145o == null) {
                    com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "createHandler() " + d.this.B + ",could not call onOpen() .. handler already NULL");
                    return;
                }
                String str = (String) d.this.a(nVar.f24205a, "sec-websocket-protocol", (Object) null);
                d.this.f24145o.setConnection(d.this);
                d.this.f24145o.onConnect(new com.cloudplay.messagesdk.socket.b.h.a(str));
                d.this.f24145o.onOpen();
                com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "createHandler() " + d.this.B + ",onOpen() called, ready to rock.");
                if (d.this.f24146p.a() > 0) {
                    d dVar2 = d.this;
                    dVar2.f24152v = dVar2.j().scheduleAtFixedRate(d.this.D, d.this.f24146p.a(), d.this.f24146p.a(), TimeUnit.SECONDS);
                    return;
                }
                return;
            }
            if (obj instanceof com.cloudplay.messagesdk.socket.b.g.b) {
                d.this.a(2, ((com.cloudplay.messagesdk.socket.b.g.b) obj).f24188a);
                return;
            }
            if (obj instanceof com.cloudplay.messagesdk.socket.b.g.e) {
                d.this.a(3, ((com.cloudplay.messagesdk.socket.b.g.e) obj).f24198a);
                return;
            }
            if (obj instanceof k) {
                d.this.a(4, d.this.B + ",WebSocket protocol violation");
                return;
            }
            if (obj instanceof com.cloudplay.messagesdk.socket.b.g.f) {
                d.this.a(5, d.this.B + ",WebSocket internal error (" + ((com.cloudplay.messagesdk.socket.b.g.f) obj).f24199a.toString() + ")");
                return;
            }
            if (!(obj instanceof m)) {
                d.this.a(obj);
                return;
            }
            d.this.a(6, d.this.B + ",Server error " + ((m) obj).f24204a);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.cloudplay.messagesdk.socket.b.g.g f24161a;

        e(com.cloudplay.messagesdk.socket.b.g.g gVar) {
            this.f24161a = gVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                d.this.f24135e.write(d.this.f24134d.a(this.f24161a));
                d.this.f24135e.flush();
                com.cloudplay.messagesdk.socket.b.g.g gVar = this.f24161a;
                if ((gVar instanceof com.cloudplay.messagesdk.socket.b.g.d) && ((com.cloudplay.messagesdk.socket.b.g.d) gVar).f24197c) {
                    d.this.f24131a.notify(this.f24161a);
                }
            } catch (ParseFailed e10) {
                e = e10;
                com.cloudplay.messagesdk.a.e.b("WebSocketConnection", "sendMessage() mWriterThread.submit()->run() " + d.this.B + "," + e.getMessage());
                d.this.f24131a.notify(new com.cloudplay.messagesdk.socket.b.g.f(e));
            } catch (SocketException e11) {
                com.cloudplay.messagesdk.a.e.b("WebSocketConnection", "sendMessage() mWriterThread.submit()->run() " + d.this.B + ",SocketException (" + e11 + ")");
                d.this.f24131a.notify(new com.cloudplay.messagesdk.socket.b.g.e(null));
            } catch (IOException e12) {
                e = e12;
                com.cloudplay.messagesdk.a.e.b("WebSocketConnection", "sendMessage() mWriterThread.submit()->run() " + d.this.B + "," + e.getMessage());
                d.this.f24131a.notify(new com.cloudplay.messagesdk.socket.b.g.f(e));
            }
        }
    }

    private class f extends Thread {
        private f() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Thread.currentThread().setName("HM WebSocketConnector:" + d.this.B);
            try {
                if (d.this.f24138h.equals("wss")) {
                    d.this.f24136f = SSLSocketFactory.getDefault().createSocket();
                } else {
                    d.this.f24136f = SocketFactory.getDefault().createSocket();
                }
                if (d.this.f24146p.m() != null) {
                    d dVar = d.this;
                    dVar.a(dVar.f24136f, d.this.f24146p.m());
                }
                d.this.f24136f.connect(new InetSocketAddress(d.this.f24139i, d.this.f24140j), d.this.f24146p.k());
                d.this.f24136f.setSoTimeout(d.this.f24146p.l());
                d.this.f24136f.setTcpNoDelay(d.this.f24146p.n());
                d.this.f24136f.setSoLinger(true, d.this.f24146p.j());
                d dVar2 = d.this;
                dVar2.f24151u = dVar2.j();
                if (!d.this.isConnected()) {
                    d.this.f24131a.notify(new com.cloudplay.messagesdk.socket.b.g.b(d.this.B + ",Could not connect to WebSocket server"));
                    return;
                }
                try {
                    d.this.h();
                    d.this.i();
                    com.cloudplay.messagesdk.socket.b.g.c cVar = new com.cloudplay.messagesdk.socket.b.g.c(d.this.f24139i + ":" + d.this.f24140j);
                    cVar.f24190b = d.this.f24141k;
                    cVar.f24191c = d.this.f24142l;
                    cVar.f24193e = d.this.f24143m;
                    cVar.f24194f = d.this.f24144n;
                    d.this.a((com.cloudplay.messagesdk.socket.b.g.g) cVar);
                    d.this.f24148r = true;
                    d dVar3 = d.this;
                    dVar3.f24154x = dVar3.j().schedule(d.this.C, d.this.f24146p.d(), TimeUnit.SECONDS);
                } catch (Exception e10) {
                    d.this.f24131a.notify(new com.cloudplay.messagesdk.socket.b.g.f(e10));
                }
            } catch (IOException e11) {
                d.this.f24131a.notify(new com.cloudplay.messagesdk.socket.b.g.b(e11.getMessage()));
            }
        }

        /* synthetic */ f(d dVar, a aVar) {
            this();
        }
    }

    public d(String str) {
        this.B = str + "," + System.currentTimeMillis();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("WebSocketConnection() create:");
        sb2.append(this.B);
        com.cloudplay.messagesdk.a.e.a("WebSocketConnection", sb2.toString());
        g();
        this.f24147q = false;
        this.f24148r = false;
    }

    static /* synthetic */ int z(d dVar) {
        int i10 = dVar.f24155y;
        dVar.f24155y = i10 + 1;
        return i10;
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocket
    public void connect(String str, IWebSocketConnectionHandler iWebSocketConnectionHandler) throws WebSocketException {
        connect(str, null, iWebSocketConnectionHandler, null, null);
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocket
    public boolean isConnected() {
        com.cloudplay.messagesdk.a.e.c("WebSocketConnection", "isConnected() " + this.B);
        Socket socket = this.f24136f;
        return (socket == null || !socket.isConnected() || this.f24136f.isClosed()) ? false : true;
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocket
    public void sendClose() {
        com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "sendClose() " + this.B);
        sendClose(1000);
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocket
    public void sendMessage(String str) {
        a((com.cloudplay.messagesdk.socket.b.g.g) new o(str));
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocket
    public void sendPing() {
        a((com.cloudplay.messagesdk.socket.b.g.g) new com.cloudplay.messagesdk.socket.b.g.h());
        com.cloudplay.messagesdk.a.e.c("WebSocketConnection", "sendPing() " + this.B + ",WebSocket Ping sent.");
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocket
    public void sendPong() {
        a((com.cloudplay.messagesdk.socket.b.g.g) new j());
        com.cloudplay.messagesdk.a.e.c("WebSocketConnection", "sendPong() " + this.B + ",WebSocket Pong sent");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        b(false);
        f();
        if (isConnected()) {
            try {
                e();
            } catch (InterruptedException e10) {
                com.cloudplay.messagesdk.a.e.b("WebSocketConnection", "closeAndCleanup() e:" + e10.getMessage());
            }
        }
        b(true);
        this.f24149s = false;
    }

    private void e() throws InterruptedException {
        Thread thread = new Thread(new Runnable() { // from class: com.cloudplay.messagesdk.socket.b.h
            @Override // java.lang.Runnable
            public final void run() {
                this.f24207b.k();
            }
        });
        thread.start();
        thread.join(BaseCloudFileManager.ACK_TIMEOUT);
    }

    private void f() {
        ExecutorService executorService = this.f24133c;
        if (executorService != null) {
            try {
                executorService.shutdown();
                this.f24133c.awaitTermination(5L, TimeUnit.SECONDS);
            } catch (InterruptedException e10) {
                com.cloudplay.messagesdk.a.e.b("WebSocketConnection", "closeWriterThread" + this.B + "," + e10.getMessage());
            }
        }
    }

    private void g() {
        com.cloudplay.messagesdk.socket.b.i.a aVar = new com.cloudplay.messagesdk.socket.b.i.a();
        this.f24131a = aVar;
        com.cloudplay.messagesdk.socket.b.h.b bVar = this.f24146p;
        if (bVar != null) {
            aVar.messageHandleObserverOn(bVar.i());
        }
        this.f24131a.setOnMessageListener(new C0529d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() throws IOException {
        com.cloudplay.messagesdk.socket.b.f fVar = new com.cloudplay.messagesdk.socket.b.f(this.f24131a, this.f24136f, this.f24146p, this.B + ",WebSocketReader," + this.B);
        this.f24132b = fVar;
        fVar.start();
        com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "createReader() " + this.B + ",WS reader created and started");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() throws IOException {
        this.f24133c = Executors.newSingleThreadExecutor();
        this.f24135e = new BufferedOutputStream(this.f24136f.getOutputStream(), this.f24146p.e() + 14);
        this.f24134d = new com.cloudplay.messagesdk.socket.b.a(this.f24146p);
        com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "createWriter() " + this.B + ",WS writer created and started");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ScheduledExecutorService j() {
        ScheduledExecutorService scheduledExecutorService = this.f24151u;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            this.f24151u = Executors.newSingleThreadScheduledExecutor();
        }
        return this.f24151u;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        if (isConnected()) {
            try {
                this.f24136f.close();
            } catch (IOException e10) {
                com.cloudplay.messagesdk.a.e.b("WebSocketConnection", "closeUnderlyingSocket() " + this.B + "," + e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "scheduleReconnect() " + this.B + ",Reconnecting...");
        c();
    }

    private boolean m() {
        int iH = this.f24146p.h();
        boolean z10 = this.f24147q && this.f24148r && iH > 0;
        if (z10) {
            com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "scheduleReconnect() " + this.B + ",Reconnection scheduled");
            this.f24131a.postDelayed(new Runnable() { // from class: com.cloudplay.messagesdk.socket.b.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f24186b.l();
                }
            }, (long) iH);
        }
        return z10;
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocket
    public void connect(String str, IWebSocketConnectionHandler iWebSocketConnectionHandler, com.cloudplay.messagesdk.socket.b.h.b bVar) throws WebSocketException {
        connect(str, null, iWebSocketConnectionHandler, bVar, null);
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocket
    public void sendMessage(byte[] bArr, boolean z10) {
        if (z10) {
            a((com.cloudplay.messagesdk.socket.b.g.g) new com.cloudplay.messagesdk.socket.b.g.a(bArr));
        } else {
            a((com.cloudplay.messagesdk.socket.b.g.g) new l(bArr));
        }
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocket
    public void connect(String str, String[] strArr, IWebSocketConnectionHandler iWebSocketConnectionHandler) throws WebSocketException {
        connect(str, strArr, iWebSocketConnectionHandler, new com.cloudplay.messagesdk.socket.b.h.b(), null);
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocket
    public void sendClose(int i10) {
        com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "sendClose(code) code:" + i10 + ",name:" + this.B);
        sendClose(i10, null);
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocket
    public void sendPing(byte[] bArr) {
        a((com.cloudplay.messagesdk.socket.b.g.g) new com.cloudplay.messagesdk.socket.b.g.h(bArr));
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocket
    public void sendPong(byte[] bArr) {
        a((com.cloudplay.messagesdk.socket.b.g.g) new j(bArr));
        com.cloudplay.messagesdk.a.e.c("WebSocketConnection", "sendPong(byte[] payload)" + this.B + ",WebSocket Pong sent.");
    }

    public boolean c() {
        if (isConnected() || this.f24137g == null) {
            return false;
        }
        this.f24149s = false;
        this.f24155y = 0;
        new f(this, null).start();
        return true;
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocket
    public void connect(String str, String[] strArr, IWebSocketConnectionHandler iWebSocketConnectionHandler, com.cloudplay.messagesdk.socket.b.h.b bVar, Map<String, String> map) throws WebSocketException {
        if (!isConnected()) {
            try {
                URI uri = new URI(str);
                this.f24137g = uri;
                String scheme = uri.getScheme();
                this.f24138h = scheme;
                if (scheme != null && (scheme.equals("ws") || this.f24138h.equals("wss"))) {
                    if (this.f24137g.getPort() == -1) {
                        if (this.f24138h.equals("ws")) {
                            this.f24140j = 80;
                        } else {
                            this.f24140j = 443;
                        }
                    } else {
                        this.f24140j = this.f24137g.getPort();
                    }
                    if (this.f24137g.getHost() != null) {
                        this.f24139i = this.f24137g.getHost();
                        if (this.f24137g.getRawPath() != null && !this.f24137g.getRawPath().equals("")) {
                            this.f24141k = this.f24137g.getRawPath();
                        } else {
                            this.f24141k = net.lingala.zip4j.util.e.F0;
                        }
                        a aVar = null;
                        if (this.f24137g.getRawQuery() != null && !this.f24137g.getRawQuery().equals("")) {
                            this.f24142l = this.f24137g.getRawQuery();
                        } else {
                            this.f24142l = null;
                        }
                        this.f24143m = strArr;
                        this.f24144n = map;
                        this.f24145o = iWebSocketConnectionHandler;
                        if (this.f24146p == null) {
                            if (bVar == null) {
                                this.f24146p = new com.cloudplay.messagesdk.socket.b.h.b();
                            } else {
                                this.f24146p = new com.cloudplay.messagesdk.socket.b.h.b(bVar);
                            }
                        } else if (bVar != null) {
                            this.f24146p = new com.cloudplay.messagesdk.socket.b.h.b(bVar);
                        }
                        this.f24147q = true;
                        this.f24149s = false;
                        new f(this, aVar).start();
                        return;
                    }
                    throw new WebSocketException(this.B + ",no host specified in WebSocket URI");
                }
                throw new WebSocketException(this.B + ",unsupported scheme for WebSocket URI");
            } catch (URISyntaxException unused) {
                throw new WebSocketException(this.B + ",invalid WebSocket URI");
            }
        }
        throw new WebSocketException("already connected");
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocket
    public void sendClose(int i10, String str) {
        a((com.cloudplay.messagesdk.socket.b.g.g) new com.cloudplay.messagesdk.socket.b.g.d(i10, str));
        this.f24149s = false;
        this.f24147q = false;
        this.f24148r = false;
    }

    public String b() {
        return this.B;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z10) {
        com.cloudplay.messagesdk.socket.b.f fVar = this.f24132b;
        if (fVar != null) {
            fVar.a();
            if (z10) {
                try {
                    this.f24132b.join(BaseCloudFileManager.ACK_TIMEOUT);
                    return;
                } catch (InterruptedException e10) {
                    com.cloudplay.messagesdk.a.e.b("WebSocketConnection", "closeReaderThread() " + this.B + "," + e10.getMessage());
                    return;
                }
            }
            return;
        }
        com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "closeReaderThread() " + this.B + ",mReader already NULL.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i10, String str) {
        com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "onClose(code,reason) code:" + i10 + ",reason:" + str);
        boolean zM = (i10 == 2 || i10 == 3) ? m() : false;
        ScheduledFuture<?> scheduledFuture = this.f24152v;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture2 = this.f24153w;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture3 = this.f24154x;
        if (scheduledFuture3 != null) {
            scheduledFuture3.cancel(true);
        }
        ScheduledExecutorService scheduledExecutorService = this.f24151u;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
            this.f24151u = null;
        }
        this.f24131a.cleanup();
        IWebSocketConnectionHandler iWebSocketConnectionHandler = this.f24145o;
        if (iWebSocketConnectionHandler != null) {
            try {
                if (zM) {
                    iWebSocketConnectionHandler.onClose(7, str);
                } else {
                    iWebSocketConnectionHandler.onClose(i10, str);
                }
            } catch (Exception e10) {
                com.cloudplay.messagesdk.a.e.b("WebSocketConnection", "onClose(code,reason) " + this.B + "," + e10.getMessage());
            }
        } else {
            com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "onClose(code,reason) " + this.B + ",mWsHandler already NULL");
        }
        this.f24149s = true;
        this.f24155y = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, String str) {
        com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "failConnection" + this.B + ",fail connection [code = " + i10 + ", reason = " + str);
        b(false);
        f();
        if (isConnected()) {
            try {
                e();
            } catch (InterruptedException e10) {
                com.cloudplay.messagesdk.a.e.d("WebSocketConnection", "failConnection() e:" + e10.getMessage());
            }
        } else {
            com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "failConnection() " + this.B + ",Socket already closed");
        }
        b(true);
        b(i10, str);
        com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "failConnection() " + this.B + ",Worker threads stopped");
    }

    public void a() {
        ScheduledFuture<?> scheduledFuture = this.f24152v;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture2 = this.f24153w;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture3 = this.f24154x;
        if (scheduledFuture3 != null) {
            scheduledFuture3.cancel(true);
        }
        d();
        ScheduledExecutorService scheduledExecutorService = this.f24151u;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
            this.f24151u = null;
        }
        this.f24131a.cleanup();
        this.f24149s = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> T a(Map<?, ?> map, Object obj, T t10) {
        return map.containsKey(obj) ? (T) map.get(obj) : t10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Object obj) {
        if (obj instanceof i) {
            i iVar = (i) obj;
            if (this.f24145o == null || this.f24155y < this.f24146p.c()) {
                return;
            }
            com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "processAppMessage() " + this.B + "Ping-Debug PingError send SEND_PING_FAIL");
            this.f24147q = false;
            this.f24131a.notify(new com.cloudplay.messagesdk.socket.b.g.d(7, iVar.f24201a));
            com.cloudplay.messagesdk.a.e.a("WebSocketConnection", "processAppMessage() " + this.B + ",PingPongTimeout Notify_COSE_RECONNECT");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.cloudplay.messagesdk.socket.b.g.g gVar) {
        ExecutorService executorService = this.f24133c;
        if (executorService == null || executorService.isShutdown()) {
            return;
        }
        this.f24133c.submit(new e(gVar));
    }

    public void a(boolean z10) {
        this.f24150t = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Socket socket, String[] strArr) {
        if (socket == null || !(socket instanceof SSLSocket)) {
            return;
        }
        ((SSLSocket) socket).setEnabledProtocols(strArr);
    }
}
