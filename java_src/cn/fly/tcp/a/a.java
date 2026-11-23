package cn.fly.tcp.a;

import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Socket f1518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f1519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SocketAddress f1520c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f1521d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final ConcurrentMap<Long, cn.fly.tcp.d.a> f1522e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Object f1523f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.fly.tcp.b.b f1524g;

    /* JADX INFO: renamed from: cn.fly.tcp.a.a$a, reason: collision with other inner class name */
    class C0035a extends Thread {
        public C0035a(String str) {
            super(str);
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            a.this.b();
        }
    }

    public a(Socket socket, SocketAddress socketAddress, b bVar) {
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f1521d = atomicBoolean;
        this.f1523f = new Object();
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f1522e = concurrentHashMap;
        this.f1518a = socket;
        this.f1520c = socketAddress;
        this.f1519b = bVar;
        this.f1524g = new cn.fly.tcp.b.b(bVar, concurrentHashMap);
        atomicBoolean.getAndSet(true);
    }

    private void c() {
        try {
            for (cn.fly.tcp.d.a aVar : this.f1522e.values()) {
                if (aVar != null) {
                    aVar.cancel(false);
                }
            }
            this.f1522e.clear();
        } catch (Throwable th) {
            this.f1522e.clear();
            throw th;
        }
    }

    public void a() {
        this.f1519b.a(this);
        new C0035a("mlp-worker").start();
    }

    public boolean b(cn.fly.tcp.b.a aVar) {
        try {
            synchronized (this.f1523f) {
                OutputStream outputStream = this.f1518a.getOutputStream();
                outputStream.write(aVar.a());
                outputStream.flush();
            }
            return true;
        } catch (Throwable th) {
            this.f1519b.a(this, th);
            a(true);
            return false;
        }
    }

    public cn.fly.tcp.d.a a(cn.fly.tcp.b.a aVar) {
        final long j10 = aVar.f1565c;
        cn.fly.tcp.d.a aVar2 = new cn.fly.tcp.d.a(new Runnable() { // from class: cn.fly.tcp.a.a.1
            @Override // java.lang.Runnable
            public void run() {
                a.this.f1522e.remove(Long.valueOf(j10));
            }
        });
        this.f1522e.put(Long.valueOf(j10), aVar2);
        try {
            synchronized (this.f1523f) {
                OutputStream outputStream = this.f1518a.getOutputStream();
                outputStream.write(aVar.a());
                outputStream.flush();
            }
            return aVar2;
        } catch (Throwable th) {
            this.f1522e.remove(Long.valueOf(j10));
            this.f1519b.a(this, th);
            a(true);
            return null;
        }
    }

    void b() {
        try {
            InputStream inputStream = this.f1518a.getInputStream();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[HttpPostBodyUtil.chunkSize];
            while (true) {
                int i10 = inputStream.read(bArr);
                if (-1 == i10) {
                    break;
                }
                int iB = 0;
                byteArrayOutputStream.write(bArr, 0, i10);
                byteArrayOutputStream.flush();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(byteArray);
                while (byteBufferWrap.hasRemaining() && byteBufferWrap.get() != 1) {
                    iB++;
                }
                List<cn.fly.tcp.b.a> listA = cn.fly.tcp.b.a.a((ByteBuffer) byteBufferWrap.position(iB));
                Iterator<cn.fly.tcp.b.a> it2 = listA.iterator();
                while (it2.hasNext()) {
                    iB += it2.next().b();
                }
                a(listA);
                byteArrayOutputStream.reset();
                if (byteArray.length - iB > 0) {
                    byteArrayOutputStream.write(byteArray, iB, byteArray.length - iB);
                }
            }
            cn.fly.tcp.f.c.a().b("TP socket EOF, remote closed");
        } catch (Throwable th) {
            try {
                this.f1519b.a(this, th);
            } finally {
                a(true);
            }
        }
    }

    void a(List<cn.fly.tcp.b.a> list) {
        this.f1524g.a(this, list);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0017 -> B:16:0x0017). Please report as a decompilation issue!!! */
    public void a(boolean z10) {
        try {
            if (!this.f1521d.getAndSet(false)) {
                return;
            }
            try {
                this.f1518a.close();
                this.f1521d.getAndSet(false);
                c();
            } catch (Throwable unused) {
                this.f1521d.getAndSet(false);
                c();
            }
        } catch (Throwable unused2) {
        }
        try {
            this.f1519b.a(this, z10);
        } catch (Throwable unused3) {
        }
    }
}
