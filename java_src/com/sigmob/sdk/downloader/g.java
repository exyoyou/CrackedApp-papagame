package com.sigmob.sdk.downloader;

import android.annotation.SuppressLint;
import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    static volatile g f80770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    d f80771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.dispatcher.b f80772c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.dispatcher.a f80773d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.breakpoint.g f80774e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.connection.a.b f80775f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.file.a.InterfaceC1028a f80776g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.file.e f80777h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.download.g f80778i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Context f80779j;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.sigmob.sdk.downloader.core.dispatcher.b f80780a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.sigmob.sdk.downloader.core.dispatcher.a f80781b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.sigmob.sdk.downloader.core.breakpoint.j f80782c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.sigmob.sdk.downloader.core.connection.a.b f80783d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private com.sigmob.sdk.downloader.core.file.e f80784e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private com.sigmob.sdk.downloader.core.download.g f80785f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private com.sigmob.sdk.downloader.core.file.a.InterfaceC1028a f80786g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private d f80787h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final Context f80788i;

        public a(Context context) {
            this.f80788i = context.getApplicationContext();
        }

        public a a(com.sigmob.sdk.downloader.core.breakpoint.j downloadStore) {
            this.f80782c = downloadStore;
            return this;
        }

        public a a(com.sigmob.sdk.downloader.core.connection.a.b connectionFactory) {
            this.f80783d = connectionFactory;
            return this;
        }

        public a a(com.sigmob.sdk.downloader.core.dispatcher.a callbackDispatcher) {
            this.f80781b = callbackDispatcher;
            return this;
        }

        public a a(com.sigmob.sdk.downloader.core.dispatcher.b downloadDispatcher) {
            this.f80780a = downloadDispatcher;
            return this;
        }

        public a a(com.sigmob.sdk.downloader.core.download.g downloadStrategy) {
            this.f80785f = downloadStrategy;
            return this;
        }

        public a a(com.sigmob.sdk.downloader.core.file.a.InterfaceC1028a outputStreamFactory) {
            this.f80786g = outputStreamFactory;
            return this;
        }

        public a a(com.sigmob.sdk.downloader.core.file.e processFileStrategy) {
            this.f80784e = processFileStrategy;
            return this;
        }

        public a a(d monitor) {
            this.f80787h = monitor;
            return this;
        }

        public g a() {
            if (this.f80780a == null) {
                this.f80780a = new com.sigmob.sdk.downloader.core.dispatcher.b();
            }
            if (this.f80781b == null) {
                this.f80781b = new com.sigmob.sdk.downloader.core.dispatcher.a();
            }
            if (this.f80782c == null) {
                this.f80782c = com.sigmob.sdk.downloader.core.c.a(this.f80788i);
            }
            if (this.f80783d == null) {
                this.f80783d = com.sigmob.sdk.downloader.core.c.c();
            }
            if (this.f80786g == null) {
                this.f80786g = new com.sigmob.sdk.downloader.core.file.b.a();
            }
            if (this.f80784e == null) {
                this.f80784e = new com.sigmob.sdk.downloader.core.file.e();
            }
            if (this.f80785f == null) {
                this.f80785f = new com.sigmob.sdk.downloader.core.download.g();
            }
            g gVar = new g(this.f80788i, this.f80780a, this.f80781b, this.f80782c, this.f80783d, this.f80786g, this.f80784e, this.f80785f);
            gVar.a(this.f80787h);
            com.sigmob.sdk.downloader.core.c.b("FileDownload", "downloadStore[" + this.f80782c + "] connectionFactory[" + this.f80783d);
            return gVar;
        }
    }

    g(Context context, com.sigmob.sdk.downloader.core.dispatcher.b downloadDispatcher, com.sigmob.sdk.downloader.core.dispatcher.a callbackDispatcher, com.sigmob.sdk.downloader.core.breakpoint.j store, com.sigmob.sdk.downloader.core.connection.a.b connectionFactory, com.sigmob.sdk.downloader.core.file.a.InterfaceC1028a outputStreamFactory, com.sigmob.sdk.downloader.core.file.e processFileStrategy, com.sigmob.sdk.downloader.core.download.g downloadStrategy) {
        this.f80779j = context;
        this.f80772c = downloadDispatcher;
        this.f80773d = callbackDispatcher;
        this.f80774e = store;
        this.f80775f = connectionFactory;
        this.f80776g = outputStreamFactory;
        this.f80777h = processFileStrategy;
        this.f80778i = downloadStrategy;
        downloadDispatcher.a(com.sigmob.sdk.downloader.core.c.a(store));
    }

    public static g j() {
        if (f80770a == null) {
            synchronized (g.class) {
                if (f80770a == null) {
                    if (com.sigmob.sdk.b.e() == null) {
                        throw new IllegalStateException("context == null");
                    }
                    f80770a = new a(com.sigmob.sdk.b.e()).a();
                }
            }
        }
        return f80770a;
    }

    public com.sigmob.sdk.downloader.core.dispatcher.b a() {
        return this.f80772c;
    }

    public com.sigmob.sdk.downloader.core.dispatcher.a b() {
        return this.f80773d;
    }

    public com.sigmob.sdk.downloader.core.breakpoint.g c() {
        return this.f80774e;
    }

    public com.sigmob.sdk.downloader.core.connection.a.b d() {
        return this.f80775f;
    }

    public com.sigmob.sdk.downloader.core.file.a.InterfaceC1028a e() {
        return this.f80776g;
    }

    public com.sigmob.sdk.downloader.core.file.e f() {
        return this.f80777h;
    }

    public com.sigmob.sdk.downloader.core.download.g g() {
        return this.f80778i;
    }

    public Context h() {
        return this.f80779j;
    }

    public d i() {
        return this.f80771b;
    }

    public void a(d monitor) {
        this.f80771b = monitor;
    }

    public static void a(g fileDownload) {
        if (f80770a != null) {
            throw new IllegalArgumentException("FileDownload must be null.");
        }
        synchronized (g.class) {
            if (f80770a != null) {
                throw new IllegalArgumentException("FileDownload must be null.");
            }
            f80770a = fileDownload;
        }
    }
}
