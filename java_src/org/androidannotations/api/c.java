package org.androidannotations.api;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewDebug;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
public class c implements Runnable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f95005k = 4939;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f95006l = 10;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f95007m = "user";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f95008n = "ViewServer";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f95009o = "4";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f95010p = "4";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f95011q = "PROTOCOL";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f95012r = "SERVER";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f95013s = "LIST";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f95014t = "AUTOLIST";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final String f95015u = "GET_FOCUS";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static c f95016v;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ServerSocket f95017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f95018c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Thread f95019d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ExecutorService f95020e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<e> f95021f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Map<View, String> f95022g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ReentrantReadWriteLock f95023h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private View f95024i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ReentrantReadWriteLock f95025j;

    private static final class b extends c {
        @Override // org.androidannotations.api.c
        public void i(Activity activity) {
        }

        @Override // org.androidannotations.api.c
        public void j(View view, String str) {
        }

        @Override // org.androidannotations.api.c
        public boolean o() {
            return false;
        }

        @Override // org.androidannotations.api.c
        public void p(Activity activity) {
        }

        @Override // org.androidannotations.api.c
        public void q(View view) {
        }

        @Override // org.androidannotations.api.c, java.lang.Runnable
        public void run() {
        }

        @Override // org.androidannotations.api.c
        public void s(Activity activity) {
        }

        @Override // org.androidannotations.api.c
        public void t(View view) {
        }

        @Override // org.androidannotations.api.c
        public boolean v() throws IOException {
            return false;
        }

        @Override // org.androidannotations.api.c
        public boolean w() {
            return false;
        }

        private b() {
            super();
        }
    }

    /* JADX INFO: renamed from: org.androidannotations.api.c$c, reason: collision with other inner class name */
    private static class C1222c extends OutputStream {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final OutputStream f95026b;

        C1222c(OutputStream outputStream) {
            this.f95026b = outputStream;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        public boolean equals(Object obj) {
            return this.f95026b.equals(obj);
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.f95026b.flush();
        }

        public int hashCode() {
            return this.f95026b.hashCode();
        }

        public String toString() {
            return this.f95026b.toString();
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f95026b.write(bArr, i10, i11);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.f95026b.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(int i10) throws IOException {
            this.f95026b.write(i10);
        }
    }

    private class d implements Runnable, e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Socket f95027b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f95028c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f95029d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Object[] f95030e;

        private View c(int i10) {
            if (i10 == -1) {
                c.this.f95023h.readLock().lock();
                try {
                    return c.this.f95024i;
                } finally {
                    c.this.f95023h.readLock().unlock();
                }
            }
            c.this.f95023h.readLock().lock();
            try {
                for (Map.Entry entry : c.this.f95022g.entrySet()) {
                    if (System.identityHashCode(entry.getKey()) == i10) {
                        return (View) entry.getKey();
                    }
                }
                return null;
            } finally {
                c.this.f95023h.readLock().unlock();
            }
        }

        private boolean d(Socket socket) throws Throwable {
            boolean z10 = false;
            BufferedWriter bufferedWriter = null;
            try {
                try {
                    BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()), 8192);
                    try {
                        c.this.f95025j.readLock().lock();
                        try {
                            View view = c.this.f95024i;
                            c.this.f95025j.readLock().unlock();
                            if (view != null) {
                                c.this.f95023h.readLock().lock();
                                try {
                                    String str = (String) c.this.f95022g.get(c.this.f95024i);
                                    c.this.f95023h.readLock().unlock();
                                    bufferedWriter2.write(Integer.toHexString(System.identityHashCode(view)));
                                    bufferedWriter2.write(32);
                                    bufferedWriter2.append((CharSequence) str);
                                } catch (Throwable th) {
                                    c.this.f95023h.readLock().unlock();
                                    throw th;
                                }
                            }
                            bufferedWriter2.write(10);
                            bufferedWriter2.flush();
                            bufferedWriter2.close();
                            z10 = true;
                        } catch (Throwable th2) {
                            c.this.f95025j.readLock().unlock();
                            throw th2;
                        }
                    } catch (Exception unused) {
                        bufferedWriter = bufferedWriter2;
                        if (bufferedWriter != null) {
                            bufferedWriter.close();
                        }
                        return z10;
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedWriter = bufferedWriter2;
                        if (bufferedWriter != null) {
                            try {
                                bufferedWriter.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException unused3) {
                }
            } catch (Exception unused4) {
            } catch (Throwable th4) {
                th = th4;
            }
            return z10;
        }

        private boolean e(Socket socket) throws Throwable {
            boolean z10 = false;
            BufferedWriter bufferedWriter = null;
            try {
                try {
                    c.this.f95023h.readLock().lock();
                    BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()), 8192);
                    try {
                        for (Map.Entry entry : c.this.f95022g.entrySet()) {
                            bufferedWriter2.write(Integer.toHexString(System.identityHashCode(entry.getKey())));
                            bufferedWriter2.write(32);
                            bufferedWriter2.append((CharSequence) entry.getValue());
                            bufferedWriter2.write(10);
                        }
                        bufferedWriter2.write("DONE.\n");
                        bufferedWriter2.flush();
                        c.this.f95023h.readLock().unlock();
                        bufferedWriter2.close();
                        z10 = true;
                    } catch (Exception unused) {
                        bufferedWriter = bufferedWriter2;
                        c.this.f95023h.readLock().unlock();
                        if (bufferedWriter != null) {
                            bufferedWriter.close();
                        }
                        return z10;
                    } catch (Throwable th) {
                        th = th;
                        bufferedWriter = bufferedWriter2;
                        c.this.f95023h.readLock().unlock();
                        if (bufferedWriter != null) {
                            try {
                                bufferedWriter.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException unused3) {
                }
            } catch (Exception unused4) {
            } catch (Throwable th2) {
                th = th2;
            }
            return z10;
        }

        private boolean g(Socket socket, String str, String str2) throws Throwable {
            BufferedWriter bufferedWriter = null;
            try {
                try {
                    try {
                        int iIndexOf = str2.indexOf(32);
                        if (iIndexOf == -1) {
                            iIndexOf = str2.length();
                        }
                        int i10 = (int) Long.parseLong(str2.substring(0, iIndexOf), 16);
                        str2 = iIndexOf < str2.length() ? str2.substring(iIndexOf + 1) : "";
                        View viewC = c(i10);
                        if (viewC == null) {
                            return false;
                        }
                        Method declaredMethod = ViewDebug.class.getDeclaredMethod("dispatchCommand", View.class, String.class, String.class, OutputStream.class);
                        declaredMethod.setAccessible(true);
                        declaredMethod.invoke(null, viewC, str, str2, new C1222c(socket.getOutputStream()));
                        if (!socket.isOutputShutdown()) {
                            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));
                            try {
                                bufferedWriter2.write("DONE\n");
                                bufferedWriter2.flush();
                                bufferedWriter = bufferedWriter2;
                            } catch (Exception unused) {
                                bufferedWriter = bufferedWriter2;
                            } catch (Throwable th) {
                                th = th;
                                bufferedWriter = bufferedWriter2;
                                if (bufferedWriter != null) {
                                    try {
                                        bufferedWriter.close();
                                    } catch (IOException unused2) {
                                    }
                                }
                                throw th;
                            }
                        }
                        if (bufferedWriter != null) {
                            bufferedWriter.close();
                        }
                        return true;
                    } catch (Exception unused3) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Could not send command ");
                sb2.append(str);
                sb2.append(" with parameters ");
                sb2.append(str2);
                if (bufferedWriter == null) {
                    return false;
                }
                bufferedWriter.close();
                return false;
            } catch (IOException unused4) {
                return false;
            }
        }

        private boolean h() throws Throwable {
            boolean z10;
            boolean z11;
            boolean z12;
            c.this.k(this);
            BufferedWriter bufferedWriter = null;
            try {
                try {
                    BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(this.f95027b.getOutputStream()));
                    while (!Thread.interrupted()) {
                        try {
                            synchronized (this.f95030e) {
                                while (true) {
                                    z10 = this.f95028c;
                                    if (z10 || this.f95029d) {
                                        break;
                                    }
                                    this.f95030e.wait();
                                }
                                z11 = false;
                                if (z10) {
                                    this.f95028c = false;
                                    z12 = true;
                                } else {
                                    z12 = false;
                                }
                                if (this.f95029d) {
                                    this.f95029d = false;
                                    z11 = true;
                                }
                            }
                            if (z12) {
                                bufferedWriter2.write("LIST UPDATE\n");
                                bufferedWriter2.flush();
                            }
                            if (z11) {
                                bufferedWriter2.write("FOCUS UPDATE\n");
                                bufferedWriter2.flush();
                            }
                        } catch (Exception unused) {
                            bufferedWriter = bufferedWriter2;
                            if (bufferedWriter != null) {
                                bufferedWriter.close();
                            }
                            c.this.r(this);
                            return true;
                        } catch (Throwable th) {
                            th = th;
                            bufferedWriter = bufferedWriter2;
                            if (bufferedWriter != null) {
                                try {
                                    bufferedWriter.close();
                                } catch (IOException unused2) {
                                }
                            }
                            c.this.r(this);
                            throw th;
                        }
                    }
                    bufferedWriter2.close();
                } catch (IOException unused3) {
                }
            } catch (Exception unused4) {
            } catch (Throwable th2) {
                th = th2;
            }
            c.this.r(this);
            return true;
        }

        @Override // org.androidannotations.api.c.e
        public void a() {
            synchronized (this.f95030e) {
                this.f95028c = true;
                this.f95030e.notifyAll();
            }
        }

        @Override // org.androidannotations.api.c.e
        public void b() {
            synchronized (this.f95030e) {
                this.f95029d = true;
                this.f95030e.notifyAll();
            }
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            BufferedReader bufferedReader;
            Throwable th;
            String strSubstring;
            boolean zH;
            BufferedReader bufferedReader2 = null;
            try {
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(this.f95027b.getInputStream()), 1024);
                    try {
                        String line = bufferedReader.readLine();
                        int iIndexOf = line.indexOf(32);
                        if (iIndexOf == -1) {
                            strSubstring = "";
                        } else {
                            String strSubstring2 = line.substring(0, iIndexOf);
                            strSubstring = line.substring(iIndexOf + 1);
                            line = strSubstring2;
                        }
                        if (c.f95011q.equalsIgnoreCase(line) || c.f95012r.equalsIgnoreCase(line)) {
                            zH = c.x(this.f95027b, "4");
                        } else if (c.f95013s.equalsIgnoreCase(line)) {
                            zH = e(this.f95027b);
                        } else if (c.f95015u.equalsIgnoreCase(line)) {
                            zH = d(this.f95027b);
                        } else {
                            zH = c.f95014t.equalsIgnoreCase(line) ? h() : g(this.f95027b, line, strSubstring);
                        }
                        if (!zH) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("An error occurred with the command: ");
                            sb2.append(line);
                        }
                        try {
                            bufferedReader.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                        Socket socket = this.f95027b;
                        if (socket != null) {
                            socket.close();
                        }
                    } catch (IOException unused) {
                        bufferedReader2 = bufferedReader;
                        if (bufferedReader2 != null) {
                            try {
                                bufferedReader2.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                        }
                        Socket socket2 = this.f95027b;
                        if (socket2 == null) {
                        } else {
                            socket2.close();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                        Socket socket3 = this.f95027b;
                        if (socket3 == null) {
                            throw th;
                        }
                        try {
                            socket3.close();
                            throw th;
                        } catch (IOException e13) {
                            e13.printStackTrace();
                            throw th;
                        }
                    }
                } catch (IOException e14) {
                    e14.printStackTrace();
                }
            } catch (IOException unused2) {
            } catch (Throwable th3) {
                bufferedReader = null;
                th = th3;
            }
        }

        private d(Socket socket) {
            this.f95030e = new Object[0];
            this.f95027b = socket;
            this.f95028c = false;
            this.f95029d = false;
        }
    }

    private interface e {
        void a();

        void b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(e eVar) {
        if (this.f95021f.contains(eVar)) {
            return;
        }
        this.f95021f.add(eVar);
    }

    private void l() {
        Iterator<e> it2 = this.f95021f.iterator();
        while (it2.hasNext()) {
            it2.next().b();
        }
    }

    private void m() {
        Iterator<e> it2 = this.f95021f.iterator();
        while (it2.hasNext()) {
            it2.next().a();
        }
    }

    public static c n(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (!"user".equals(Build.TYPE) || (applicationInfo.flags & 2) == 0) {
            f95016v = new b();
        } else {
            if (f95016v == null) {
                f95016v = new c(f95005k);
            }
            if (!f95016v.o()) {
                try {
                    f95016v.v();
                } catch (IOException unused) {
                }
            }
        }
        return f95016v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(e eVar) {
        this.f95021f.remove(eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean x(Socket socket, String str) throws Throwable {
        boolean z10 = false;
        BufferedWriter bufferedWriter = null;
        try {
            try {
                BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()), 8192);
                try {
                    bufferedWriter2.write(str);
                    bufferedWriter2.write("\n");
                    bufferedWriter2.flush();
                    bufferedWriter2.close();
                    z10 = true;
                } catch (Exception unused) {
                    bufferedWriter = bufferedWriter2;
                    if (bufferedWriter != null) {
                        bufferedWriter.close();
                    }
                    return z10;
                } catch (Throwable th) {
                    th = th;
                    bufferedWriter = bufferedWriter2;
                    if (bufferedWriter != null) {
                        try {
                            bufferedWriter.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused3) {
            }
        } catch (Exception unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
        return z10;
    }

    public void i(Activity activity) {
        String str;
        String string = activity.getTitle().toString();
        if (TextUtils.isEmpty(string)) {
            str = activity.getClass().getCanonicalName() + "/0x" + System.identityHashCode(activity);
        } else {
            str = string + "(" + activity.getClass().getCanonicalName() + ")";
        }
        j(activity.getWindow().getDecorView(), str);
    }

    public void j(View view, String str) {
        this.f95023h.writeLock().lock();
        try {
            this.f95022g.put(view.getRootView(), str);
            this.f95023h.writeLock().unlock();
            m();
        } catch (Throwable th) {
            this.f95023h.writeLock().unlock();
            throw th;
        }
    }

    public boolean o() {
        Thread thread = this.f95019d;
        return thread != null && thread.isAlive();
    }

    public void p(Activity activity) {
        q(activity.getWindow().getDecorView());
    }

    public void q(View view) {
        this.f95023h.writeLock().lock();
        try {
            View rootView = view.getRootView();
            this.f95022g.remove(rootView);
            this.f95023h.writeLock().unlock();
            this.f95025j.writeLock().lock();
            try {
                if (this.f95024i == rootView) {
                    this.f95024i = null;
                }
                this.f95025j.writeLock().unlock();
                m();
            } catch (Throwable th) {
                this.f95025j.writeLock().unlock();
                throw th;
            }
        } catch (Throwable th2) {
            this.f95023h.writeLock().unlock();
            throw th2;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:4:0x0010 -> B:5:0x0011). Please report as a decompilation issue!!! */
    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f95017b = new ServerSocket(this.f95018c, 10, InetAddress.getLocalHost());
        } catch (Exception unused) {
        }
        while (this.f95017b != null && Thread.currentThread() == this.f95019d) {
            Socket socketAccept = this.f95017b.accept();
            ExecutorService executorService = this.f95020e;
            if (executorService != null) {
                executorService.submit(new d(socketAccept));
            } else {
                try {
                    socketAccept.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public void s(Activity activity) {
        t(activity.getWindow().getDecorView());
    }

    public void t(View view) {
        View rootView;
        this.f95025j.writeLock().lock();
        if (view == null) {
            rootView = null;
        } else {
            try {
                rootView = view.getRootView();
            } catch (Throwable th) {
                this.f95025j.writeLock().unlock();
                throw th;
            }
        }
        this.f95024i = rootView;
        this.f95025j.writeLock().unlock();
        l();
    }

    public boolean v() throws IOException {
        if (this.f95019d != null) {
            return false;
        }
        this.f95019d = new Thread(this, "Local View Server [port=" + this.f95018c + "]");
        this.f95020e = Executors.newFixedThreadPool(10);
        this.f95019d.start();
        return true;
    }

    public boolean w() {
        Thread thread = this.f95019d;
        if (thread != null) {
            thread.interrupt();
            ExecutorService executorService = this.f95020e;
            if (executorService != null) {
                try {
                    executorService.shutdownNow();
                } catch (SecurityException unused) {
                }
            }
            this.f95020e = null;
            this.f95019d = null;
            try {
                this.f95017b.close();
                this.f95017b = null;
                return true;
            } catch (IOException unused2) {
            }
        }
        this.f95023h.writeLock().lock();
        try {
            this.f95022g.clear();
            this.f95023h.writeLock().unlock();
            this.f95025j.writeLock().lock();
            try {
                this.f95024i = null;
                return false;
            } finally {
                this.f95025j.writeLock().unlock();
            }
        } catch (Throwable th) {
            this.f95023h.writeLock().unlock();
            throw th;
        }
    }

    private c() {
        this.f95021f = new CopyOnWriteArrayList();
        this.f95022g = new HashMap();
        this.f95023h = new ReentrantReadWriteLock();
        this.f95025j = new ReentrantReadWriteLock();
        this.f95018c = -1;
    }

    private c(int i10) {
        this.f95021f = new CopyOnWriteArrayList();
        this.f95022g = new HashMap();
        this.f95023h = new ReentrantReadWriteLock();
        this.f95025j = new ReentrantReadWriteLock();
        this.f95018c = i10;
    }
}
