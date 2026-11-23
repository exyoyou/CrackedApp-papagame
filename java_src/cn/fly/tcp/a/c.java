package cn.fly.tcp.a;

import java.net.Socket;
import java.net.SocketAddress;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    volatile a f1528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final AtomicLong f1529b = new AtomicLong();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f1530c;

    private b c() {
        return new b() { // from class: cn.fly.tcp.a.c.1
            @Override // cn.fly.tcp.a.b
            public void a(a aVar, cn.fly.tcp.b.a aVar2) {
                if (!c.this.a(aVar)) {
                    cn.fly.tcp.f.c.a().b("TP ignore stale messageReceived");
                    return;
                }
                b bVar = c.this.f1530c;
                if (bVar != null) {
                    bVar.a(aVar, aVar2);
                }
            }

            @Override // cn.fly.tcp.a.b
            public void a(a aVar, Throwable th) {
                if (c.this.a(aVar)) {
                    b bVar = c.this.f1530c;
                    if (bVar != null) {
                        bVar.a(aVar, th);
                        return;
                    }
                    return;
                }
                cn.fly.tcp.f.c.a().b("TP ignore stale exceptionCaught");
            }

            @Override // cn.fly.tcp.a.b
            public void a(a aVar) {
                if (c.this.a(aVar)) {
                    b bVar = c.this.f1530c;
                    if (bVar != null) {
                        bVar.a(aVar);
                        return;
                    }
                    return;
                }
                cn.fly.tcp.f.c.a().b("TP ignore stale sessionOpened");
            }

            @Override // cn.fly.tcp.a.b
            public void a(a aVar, boolean z10) {
                if (c.this.a(aVar)) {
                    b bVar = c.this.f1530c;
                    if (bVar != null) {
                        bVar.a(aVar, z10);
                        return;
                    }
                    return;
                }
                cn.fly.tcp.f.c.a().b("TP ignore stale sessionClosed");
            }
        };
    }

    public boolean b() {
        return this.f1528a != null && this.f1528a.f1521d.get();
    }

    public void a(b bVar) {
        this.f1530c = bVar;
    }

    public boolean b(cn.fly.tcp.b.a aVar) {
        a aVar2 = this.f1528a;
        if (aVar2 == null || !aVar2.f1521d.get()) {
            return false;
        }
        if (aVar.f1565c == 0) {
            aVar.f1565c = this.f1529b.incrementAndGet();
        }
        return aVar2.b(aVar);
    }

    public synchronized void a() {
        if (this.f1528a != null) {
            this.f1528a.a(false);
            this.f1528a = null;
        }
    }

    public synchronized void a(SocketAddress socketAddress, boolean z10, boolean z11, int i10) throws Throwable {
        Socket socket;
        if (this.f1530c != null) {
            if (this.f1528a != null) {
                if (!socketAddress.equals(this.f1528a.f1520c)) {
                    a();
                } else if (b()) {
                    return;
                }
            }
            try {
                socket = new Socket();
                try {
                    socket.setKeepAlive(z10);
                    socket.setTcpNoDelay(z11);
                    socket.connect(socketAddress, i10);
                    a aVar = new a(socket, socketAddress, c());
                    this.f1528a = aVar;
                    aVar.a();
                } catch (Throwable th) {
                    th = th;
                    this.f1528a = null;
                    if (socket != null) {
                        try {
                            socket.close();
                        } catch (Throwable unused) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                socket = null;
            }
        } else {
            throw new IllegalStateException("TcpClient handler not set");
        }
    }

    public boolean a(a aVar) {
        return this.f1528a == aVar;
    }

    public cn.fly.tcp.d.a a(cn.fly.tcp.b.a aVar) {
        a aVar2 = this.f1528a;
        if (aVar2 == null || !aVar2.f1521d.get()) {
            return null;
        }
        if (aVar.f1565c == 0) {
            aVar.f1565c = this.f1529b.incrementAndGet();
        }
        return aVar2.a(aVar);
    }
}
