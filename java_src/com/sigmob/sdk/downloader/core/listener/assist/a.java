package com.sigmob.sdk.downloader.core.listener.assist;

import com.sigmob.sdk.downloader.f;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes3.dex */
public class a implements d, e.b<b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e<b> f80681a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private InterfaceC1029a f80682b;

    /* JADX INFO: renamed from: com.sigmob.sdk.downloader.core.listener.assist.a$a, reason: collision with other inner class name */
    public interface InterfaceC1029a {
        void a(f task, int blockCount, long currentOffset, long totalLength);

        void a(f task, long currentOffset, long totalLength);

        void a(f task, com.sigmob.sdk.downloader.core.cause.a cause, Exception realCause, b model);

        void a(f task, com.sigmob.sdk.downloader.core.cause.b cause);

        void a(f task, b model);
    }

    public static class b implements e.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f80683a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Boolean f80684b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Boolean f80685c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        volatile Boolean f80686d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f80687e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        long f80688f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final AtomicLong f80689g = new AtomicLong();

        b(int id2) {
            this.f80683a = id2;
        }

        public long a() {
            return this.f80688f;
        }

        @Override // com.sigmob.sdk.downloader.core.listener.assist.e.a
        public int b() {
            return this.f80683a;
        }

        @Override // com.sigmob.sdk.downloader.core.listener.assist.e.a
        public void a(com.sigmob.sdk.downloader.core.breakpoint.c info) {
            this.f80687e = info.g();
            this.f80688f = info.j();
            this.f80689g.set(info.i());
            if (this.f80684b == null) {
                this.f80684b = Boolean.FALSE;
            }
            if (this.f80685c == null) {
                this.f80685c = Boolean.valueOf(this.f80689g.get() > 0);
            }
            if (this.f80686d == null) {
                this.f80686d = Boolean.TRUE;
            }
        }
    }

    public a() {
        this.f80681a = new e<>(this);
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.e.b
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public b b(int id2) {
        return new b(id2);
    }

    a(e<b> handler) {
        this.f80681a = handler;
    }

    public void a(InterfaceC1029a callback) {
        this.f80682b = callback;
    }

    public void b(f task) {
        b bVar = (b) this.f80681a.b(task, task.y());
        if (bVar == null) {
            return;
        }
        Boolean bool = Boolean.TRUE;
        if (bool.equals(bVar.f80685c) && bool.equals(bVar.f80686d)) {
            bVar.f80686d = Boolean.FALSE;
        }
        InterfaceC1029a interfaceC1029a = this.f80682b;
        if (interfaceC1029a != null) {
            interfaceC1029a.a(task, bVar.f80687e, bVar.f80689g.get(), bVar.f80688f);
        }
    }

    public void a(f task) {
        b bVar = (b) this.f80681a.a(task, null);
        InterfaceC1029a interfaceC1029a = this.f80682b;
        if (interfaceC1029a != null) {
            interfaceC1029a.a(task, bVar);
        }
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void b(boolean isAlwaysRecoverAssistModel) {
        this.f80681a.b(isAlwaysRecoverAssistModel);
    }

    public void a(f task, long increaseBytes) {
        b bVar = (b) this.f80681a.b(task, task.y());
        if (bVar == null) {
            return;
        }
        bVar.f80689g.addAndGet(increaseBytes);
        InterfaceC1029a interfaceC1029a = this.f80682b;
        if (interfaceC1029a != null) {
            interfaceC1029a.a(task, bVar.f80689g.get(), bVar.f80688f);
        }
    }

    public void a(f task, com.sigmob.sdk.downloader.core.breakpoint.c info) {
        b bVar = (b) this.f80681a.b(task, info);
        if (bVar == null) {
            return;
        }
        bVar.a(info);
        Boolean bool = Boolean.TRUE;
        bVar.f80684b = bool;
        bVar.f80685c = bool;
        bVar.f80686d = bool;
    }

    public void a(f task, com.sigmob.sdk.downloader.core.breakpoint.c info, com.sigmob.sdk.downloader.core.cause.b cause) {
        InterfaceC1029a interfaceC1029a;
        b bVar = (b) this.f80681a.b(task, info);
        if (bVar == null) {
            return;
        }
        bVar.a(info);
        if (bVar.f80684b.booleanValue() && (interfaceC1029a = this.f80682b) != null) {
            interfaceC1029a.a(task, cause);
        }
        Boolean bool = Boolean.TRUE;
        bVar.f80684b = bool;
        bVar.f80685c = Boolean.FALSE;
        bVar.f80686d = bool;
    }

    public void a(f task, com.sigmob.sdk.downloader.core.cause.a cause, Exception realCause) {
        b bVar = (b) this.f80681a.c(task, task.y());
        InterfaceC1029a interfaceC1029a = this.f80682b;
        if (interfaceC1029a != null) {
            interfaceC1029a.a(task, cause, realCause, bVar);
        }
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void a(boolean isAlwaysRecoverAssistModel) {
        this.f80681a.a(isAlwaysRecoverAssistModel);
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public boolean a() {
        return this.f80681a.a();
    }
}
