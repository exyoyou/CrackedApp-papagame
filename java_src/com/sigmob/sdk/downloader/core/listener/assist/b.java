package com.sigmob.sdk.downloader.core.listener.assist;

import android.util.SparseArray;
import com.sigmob.sdk.downloader.core.listener.assist.b.c;
import com.sigmob.sdk.downloader.f;

/* JADX INFO: loaded from: classes3.dex */
public class b<T extends c> implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    InterfaceC1030b f80690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f80691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e<T> f80692c;

    public interface a {
        boolean a(f task, int blockIndex, long increaseBytes, c model);

        boolean a(f task, int blockIndex, c model);

        boolean a(f task, com.sigmob.sdk.downloader.core.breakpoint.c info, boolean fromBreakpoint, c model);

        boolean a(f task, com.sigmob.sdk.downloader.core.cause.a cause, Exception realCause, c model);
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.downloader.core.listener.assist.b$b, reason: collision with other inner class name */
    public interface InterfaceC1030b {
        void a(f task, int blockIndex, com.sigmob.sdk.downloader.core.breakpoint.a info);

        void a(f task, long currentOffset);

        void a(f task, com.sigmob.sdk.downloader.core.breakpoint.c info, boolean fromBreakpoint, c model);

        void a(f task, com.sigmob.sdk.downloader.core.cause.a cause, Exception realCause, c model);

        void d(f task, int blockIndex, long currentBlockOffset);
    }

    public static class c implements e.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        com.sigmob.sdk.downloader.core.breakpoint.c f80693a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f80694b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        SparseArray<Long> f80695c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f80696d;

        public c(int id2) {
            this.f80696d = id2;
        }

        public long a(int blockIndex) {
            return this.f80695c.get(blockIndex).longValue();
        }

        @Override // com.sigmob.sdk.downloader.core.listener.assist.e.a
        public int b() {
            return this.f80696d;
        }

        public long c() {
            return this.f80694b;
        }

        public SparseArray<Long> d() {
            return this.f80695c.clone();
        }

        public com.sigmob.sdk.downloader.core.breakpoint.c e() {
            return this.f80693a;
        }

        SparseArray<Long> a() {
            return this.f80695c;
        }

        @Override // com.sigmob.sdk.downloader.core.listener.assist.e.a
        public void a(com.sigmob.sdk.downloader.core.breakpoint.c info) {
            this.f80693a = info;
            this.f80694b = info.i();
            SparseArray<Long> sparseArray = new SparseArray<>();
            int iG = info.g();
            for (int i10 = 0; i10 < iG; i10++) {
                sparseArray.put(i10, Long.valueOf(info.b(i10).a()));
            }
            this.f80695c = sparseArray;
        }
    }

    public b(e.b<T> creator) {
        this.f80692c = new e<>(creator);
    }

    public void a(a assistExtend) {
        this.f80691b = assistExtend;
    }

    public a b() {
        return this.f80691b;
    }

    b(e<T> handler) {
        this.f80692c = handler;
    }

    public void a(InterfaceC1030b callback) {
        this.f80690a = callback;
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void b(boolean isAlwaysRecoverAssistModel) {
        this.f80692c.b(isAlwaysRecoverAssistModel);
    }

    public void a(f task, int blockIndex) {
        InterfaceC1030b interfaceC1030b;
        c cVar = (c) this.f80692c.b(task, task.y());
        if (cVar == null) {
            return;
        }
        a aVar = this.f80691b;
        if ((aVar == null || !aVar.a(task, blockIndex, cVar)) && (interfaceC1030b = this.f80690a) != null) {
            interfaceC1030b.a(task, blockIndex, cVar.f80693a.b(blockIndex));
        }
    }

    public void a(f task, int blockIndex, long increaseBytes) {
        InterfaceC1030b interfaceC1030b;
        c cVar = (c) this.f80692c.b(task, task.y());
        if (cVar == null) {
            return;
        }
        long jLongValue = cVar.f80695c.get(blockIndex).longValue() + increaseBytes;
        cVar.f80695c.put(blockIndex, Long.valueOf(jLongValue));
        cVar.f80694b += increaseBytes;
        a aVar = this.f80691b;
        if ((aVar == null || !aVar.a(task, blockIndex, increaseBytes, cVar)) && (interfaceC1030b = this.f80690a) != null) {
            interfaceC1030b.d(task, blockIndex, jLongValue);
            this.f80690a.a(task, cVar.f80694b);
        }
    }

    public void a(f task, com.sigmob.sdk.downloader.core.breakpoint.c info, boolean fromBreakpoint) {
        InterfaceC1030b interfaceC1030b;
        c cVar = (c) this.f80692c.a(task, info);
        a aVar = this.f80691b;
        if ((aVar == null || !aVar.a(task, info, fromBreakpoint, cVar)) && (interfaceC1030b = this.f80690a) != null) {
            interfaceC1030b.a(task, info, fromBreakpoint, cVar);
        }
    }

    public synchronized void a(f task, com.sigmob.sdk.downloader.core.cause.a cause, Exception realCause) {
        c cVar = (c) this.f80692c.c(task, task.y());
        a aVar = this.f80691b;
        if (aVar == null || !aVar.a(task, cause, realCause, cVar)) {
            InterfaceC1030b interfaceC1030b = this.f80690a;
            if (interfaceC1030b != null) {
                interfaceC1030b.a(task, cause, realCause, cVar);
            }
        }
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void a(boolean isAlwaysRecoverAssistModel) {
        this.f80692c.a(isAlwaysRecoverAssistModel);
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public boolean a() {
        return this.f80692c.a();
    }
}
