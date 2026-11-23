package com.danikula.videocache;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.File;
import java.io.IOException;
import java.net.Socket;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f26061a = new AtomicInteger(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f26062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile g f26063c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<d> f26064d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d f26065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e f26066f;

    private static final class a extends Handler implements d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f26067b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List<d> f26068c;

        public a(String str, List<d> list) {
            super(Looper.getMainLooper());
            this.f26067b = str;
            this.f26068c = list;
        }

        @Override // com.danikula.videocache.d
        public void h(File file, String str, int i10) {
            Message messageObtainMessage = obtainMessage();
            messageObtainMessage.arg1 = i10;
            messageObtainMessage.obj = file;
            sendMessage(messageObtainMessage);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Iterator<d> it2 = this.f26068c.iterator();
            while (it2.hasNext()) {
                it2.next().h((File) message.obj, this.f26067b, message.arg1);
            }
        }
    }

    public j(String str, e eVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f26064d = copyOnWriteArrayList;
        this.f26062b = (String) n.d(str);
        this.f26066f = (e) n.d(eVar);
        this.f26065e = new a(str, copyOnWriteArrayList);
    }

    private synchronized void a() {
        if (this.f26061a.decrementAndGet() <= 0) {
            this.f26063c.m();
            this.f26063c = null;
        }
    }

    private g c() throws ProxyCacheException {
        String str = this.f26062b;
        e eVar = this.f26066f;
        g gVar = new g(new k(str, eVar.f26019d, eVar.f26020e), new com.danikula.videocache.file.b(this.f26066f.a(this.f26062b), this.f26066f.f26018c));
        gVar.t(this.f26065e);
        return gVar;
    }

    private synchronized void g() throws ProxyCacheException {
        this.f26063c = this.f26063c == null ? c() : this.f26063c;
    }

    public int b() {
        return this.f26061a.get();
    }

    public void d(f fVar, Socket socket) throws IOException, ProxyCacheException {
        g();
        try {
            this.f26061a.incrementAndGet();
            this.f26063c.s(fVar, socket);
        } finally {
            a();
        }
    }

    public void e(d dVar) {
        this.f26064d.add(dVar);
    }

    public void f() {
        this.f26064d.clear();
        if (this.f26063c != null) {
            this.f26063c.t(null);
            this.f26063c.m();
            this.f26063c = null;
        }
        this.f26061a.set(0);
    }

    public void h(d dVar) {
        this.f26064d.remove(dVar);
    }
}
