package com.github.snowdream.android.app.downloader;

import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
public class b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static b f29301f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    InterfaceC0591b f29302a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<InterfaceC0591b> f29303b = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<String, c> f29304c = new ConcurrentHashMap(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ThreadPoolExecutor f29305d = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f29306e = new a();

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            synchronized (b.this.f29303b) {
                if (b.this.f29302a == null) {
                    return;
                }
                String string = msg.obj.toString();
                InterfaceC0591b interfaceC0591b = b.this.f29302a;
                int i10 = msg.what;
                if (i10 == 2) {
                    interfaceC0591b.onStart(msg.obj.toString());
                } else if (i10 == 4) {
                    interfaceC0591b.onError(string);
                    b.this.l(string);
                } else if (i10 == 3) {
                    interfaceC0591b.onStop(string);
                    b.this.l(string);
                } else if (i10 == 1) {
                    interfaceC0591b.onFinish(msg.obj.toString());
                    b.this.l(string);
                } else if (i10 == 7) {
                    interfaceC0591b.updateSize("url", Long.parseLong(msg.obj.toString()));
                } else if (i10 == 5) {
                    try {
                        String[] strArrSplit = msg.obj.toString().split(";");
                        interfaceC0591b.onProgress(strArrSplit[0], Integer.parseInt(strArrSplit[2]), strArrSplit[1]);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.github.snowdream.android.app.downloader.b$b, reason: collision with other inner class name */
    public interface InterfaceC0591b {
        void onError(String url);

        void onFinish(String url);

        void onProgress(String url, int progress, String speed);

        void onStart(String url);

        void onStop(String url);

        void onWait(String url);

        void updateSize(String url, long actualSize);
    }

    private b() {
    }

    public static b e() {
        if (f29301f == null) {
            f29301f = new b();
        }
        return f29301f;
    }

    public String b(c task) {
        if (this.f29304c == null) {
            return null;
        }
        if (task == null || task.i() == null || task.i().equals("")) {
            return "";
        }
        String strI = task.i();
        if (this.f29304c.get(task.i()) != null) {
            return strI;
        }
        task.o(this.f29306e);
        Message messageObtain = Message.obtain();
        messageObtain.obj = strI;
        messageObtain.what = 6;
        this.f29306e.sendMessage(messageObtain);
        synchronized (this.f29304c) {
            this.f29304c.put(strI, task);
        }
        this.f29305d.execute(task);
        return strI;
    }

    public void c(String key) {
        c cVar = this.f29304c.get(key);
        if (cVar != null) {
            cVar.a();
        }
    }

    public void d() {
        this.f29304c.clear();
    }

    public InterfaceC0591b f() {
        InterfaceC0591b interfaceC0591b;
        synchronized (this.f29303b) {
            interfaceC0591b = this.f29302a;
        }
        return interfaceC0591b;
    }

    public int g() {
        Map<String, c> map = this.f29304c;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public void h() {
        this.f29305d.purge();
        this.f29305d.getQueue();
    }

    public void i() {
        Map<String, c> map = this.f29304c;
        if (map == null) {
            return;
        }
        for (String str : map.keySet()) {
            this.f29305d.remove(this.f29304c.get(str));
            if (this.f29304c.get(str) != null) {
                this.f29304c.get(str).a();
                this.f29304c.remove(str);
            }
        }
    }

    public void j(InterfaceC0591b listener) {
        synchronized (this.f29303b) {
            Iterator<InterfaceC0591b> it2 = this.f29303b.iterator();
            while (it2.hasNext()) {
                if (listener == it2.next()) {
                    it2.remove();
                }
            }
        }
    }

    public void k(String key) {
        this.f29305d.remove(this.f29304c.get(key));
    }

    public void l(String key) {
        Map<String, c> map = this.f29304c;
        if (map == null) {
            return;
        }
        synchronized (map) {
            if (this.f29302a != null && this.f29304c.get(key) != null) {
                this.f29304c.get(key).a();
                this.f29304c.remove(key);
            }
        }
    }

    public void m(InterfaceC0591b listener) {
        synchronized (this.f29303b) {
            this.f29302a = listener;
        }
    }

    public synchronized void n() {
        try {
            try {
                this.f29305d.shutdownNow();
                this.f29305d.awaitTermination(1L, TimeUnit.MILLISECONDS);
                this.f29305d = null;
                Map<String, c> map = this.f29304c;
                if (map == null) {
                    return;
                }
                map.clear();
                this.f29304c = null;
            } catch (InterruptedException e10) {
                e10.printStackTrace();
                this.f29305d = null;
                Map<String, c> map2 = this.f29304c;
                if (map2 == null) {
                } else {
                    map2.clear();
                }
            }
        } catch (Throwable th) {
            this.f29305d = null;
            Map<String, c> map3 = this.f29304c;
            if (map3 == null) {
                return;
            }
            map3.clear();
            this.f29304c = null;
            throw th;
        }
    }
}
