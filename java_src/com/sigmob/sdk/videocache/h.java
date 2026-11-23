package com.sigmob.sdk.videocache;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.czhj.sdk.logger.SigmobLog;
import java.io.File;
import java.io.IOException;
import java.net.Socket;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f81930a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f81931b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicInteger f81932c = new AtomicInteger(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f81933d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile g f81934e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<d> f81935f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d f81936g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final e f81937h;

    private static final class a extends Handler implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f81938a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List<d> f81939b;

        public a(String url, List<d> listeners) {
            super(Looper.getMainLooper());
            this.f81938a = url;
            this.f81939b = listeners;
        }

        @Override // com.sigmob.sdk.videocache.d
        public void a(File file, String url, int percentsAvailable) {
            Message messageObtainMessage = obtainMessage();
            messageObtainMessage.arg1 = percentsAvailable;
            messageObtainMessage.obj = file;
            messageObtainMessage.what = 1;
            sendMessage(messageObtainMessage);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            for (d dVar : this.f81939b) {
                int i10 = msg.what;
                if (i10 == 1) {
                    dVar.a((File) msg.obj, this.f81938a, msg.arg1);
                } else if (i10 == 2) {
                    dVar.a(this.f81938a, (Throwable) msg.obj);
                }
            }
        }

        @Override // com.sigmob.sdk.videocache.d
        public void a(String url, Throwable throwable) {
            Message messageObtainMessage = obtainMessage();
            messageObtainMessage.obj = throwable;
            messageObtainMessage.what = 2;
            sendMessage(messageObtainMessage);
        }
    }

    public h(String url, e config) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f81935f = copyOnWriteArrayList;
        this.f81933d = (String) n.a(url);
        this.f81937h = (e) n.a(config);
        this.f81936g = new a(url, copyOnWriteArrayList);
    }

    private synchronized void c() throws p {
        this.f81934e = this.f81934e == null ? e() : this.f81934e;
    }

    private synchronized void d() {
        if (this.f81932c.decrementAndGet() <= 0) {
            this.f81934e.a();
            this.f81934e = null;
        }
    }

    private g e() throws p {
        String str = this.f81933d;
        e eVar = this.f81937h;
        g gVar = new g(s.a(str, eVar.f81909d, eVar.f81910e), new com.sigmob.sdk.videocache.file.b(this.f81937h.a(this.f81933d), this.f81937h.f81908c));
        gVar.a(this.f81936g);
        return gVar;
    }

    public void a() {
        this.f81935f.clear();
        if (this.f81934e != null) {
            this.f81934e.a((d) null);
            this.f81934e.a();
            this.f81934e = null;
        }
        this.f81932c.set(0);
    }

    public int b() {
        return this.f81932c.get();
    }

    public void a(d cacheListener) {
        this.f81935f.add(cacheListener);
    }

    public void b(d cacheListener) {
        this.f81935f.remove(cacheListener);
    }

    public void a(f request, Socket socket) throws p, IOException {
        c();
        try {
            this.f81932c.incrementAndGet();
            this.f81934e.a(request, socket);
        } catch (Throwable th) {
            try {
                SigmobLog.e("processRequest error:", th);
            } finally {
                d();
            }
        }
    }
}
