package com.sigmob.sdk.downloader.core.listener.assist;

import android.util.SparseArray;
import com.sigmob.sdk.downloader.f;
import com.sigmob.sdk.downloader.k;

/* JADX INFO: loaded from: classes3.dex */
public class c implements com.sigmob.sdk.downloader.core.listener.assist.b.a, e.b<b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f80697a;

    public interface a {
        void a(f task, int blockIndex, long currentBlockOffset, k blockSpeed);

        void a(f task, int blockIndex, com.sigmob.sdk.downloader.core.breakpoint.a info, k blockSpeed);

        void a(f task, long currentOffset, k taskSpeed);

        void a(f task, com.sigmob.sdk.downloader.core.breakpoint.c info, boolean fromBreakpoint, b model);

        void a(f task, com.sigmob.sdk.downloader.core.cause.a cause, Exception realCause, k taskSpeed);
    }

    public static class b extends com.sigmob.sdk.downloader.core.listener.assist.b.c {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        k f80698d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        SparseArray<k> f80699e;

        public b(int id2) {
            super(id2);
        }

        @Override // com.sigmob.sdk.downloader.core.listener.assist.b.c, com.sigmob.sdk.downloader.core.listener.assist.e.a
        public void a(com.sigmob.sdk.downloader.core.breakpoint.c info) {
            super.a(info);
            this.f80698d = new k();
            this.f80699e = new SparseArray<>();
            int iG = info.g();
            for (int i10 = 0; i10 < iG; i10++) {
                this.f80699e.put(i10, new k());
            }
        }

        public k b(int blockIndex) {
            return this.f80699e.get(blockIndex);
        }

        public k f() {
            return this.f80698d;
        }
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.e.b
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public b b(int id2) {
        return new b(id2);
    }

    public void a(a callback) {
        this.f80697a = callback;
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.b.a
    public boolean a(f task, int blockIndex, long increaseBytes, com.sigmob.sdk.downloader.core.listener.assist.b.c model) {
        b bVar = (b) model;
        bVar.f80699e.get(blockIndex).a(increaseBytes);
        bVar.f80698d.a(increaseBytes);
        a aVar = this.f80697a;
        if (aVar == null) {
            return true;
        }
        aVar.a(task, blockIndex, model.f80695c.get(blockIndex).longValue(), bVar.b(blockIndex));
        this.f80697a.a(task, model.f80694b, bVar.f80698d);
        return true;
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.b.a
    public boolean a(f task, int blockIndex, com.sigmob.sdk.downloader.core.listener.assist.b.c model) {
        b bVar = (b) model;
        bVar.f80699e.get(blockIndex).g();
        a aVar = this.f80697a;
        if (aVar == null) {
            return true;
        }
        aVar.a(task, blockIndex, model.f80693a.b(blockIndex), bVar.b(blockIndex));
        return true;
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.b.a
    public boolean a(f task, com.sigmob.sdk.downloader.core.breakpoint.c info, boolean fromBreakpoint, com.sigmob.sdk.downloader.core.listener.assist.b.c model) {
        a aVar = this.f80697a;
        if (aVar == null) {
            return true;
        }
        aVar.a(task, info, fromBreakpoint, (b) model);
        return true;
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.b.a
    public boolean a(f task, com.sigmob.sdk.downloader.core.cause.a cause, Exception realCause, com.sigmob.sdk.downloader.core.listener.assist.b.c model) {
        k kVar = ((b) model).f80698d;
        if (kVar != null) {
            kVar.g();
        } else {
            kVar = new k();
        }
        a aVar = this.f80697a;
        if (aVar == null) {
            return true;
        }
        aVar.a(task, cause, realCause, kVar);
        return true;
    }
}
