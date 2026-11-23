package com.sigmob.sdk.downloader.core.listener.assist;

import android.util.SparseArray;
import com.sigmob.sdk.downloader.core.listener.assist.e.a;
import com.sigmob.sdk.downloader.f;

/* JADX INFO: loaded from: classes3.dex */
public class e<T extends a> implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    volatile T f80700a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final SparseArray<T> f80701b = new SparseArray<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Boolean f80702c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b<T> f80703d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public interface a {
        void a(com.sigmob.sdk.downloader.core.breakpoint.c info);

        int b();
    }

    public interface b<T extends a> {
        T b(int id2);
    }

    e(b<T> creator) {
        this.f80703d = creator;
    }

    T a(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        T t10 = (T) this.f80703d.b(fVar.c());
        synchronized (this) {
            if (this.f80700a == null) {
                this.f80700a = t10;
            } else {
                this.f80701b.put(fVar.c(), t10);
            }
            if (cVar != null) {
                t10.a(cVar);
            }
        }
        return t10;
    }

    T b(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        T t10;
        int iC = fVar.c();
        synchronized (this) {
            t10 = (this.f80700a == null || this.f80700a.b() != iC) ? null : this.f80700a;
        }
        if (t10 == null) {
            t10 = this.f80701b.get(iC);
        }
        return (t10 == null && a()) ? (T) a(fVar, cVar) : t10;
    }

    T c(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        T t10;
        int iC = fVar.c();
        synchronized (this) {
            if (this.f80700a == null || this.f80700a.b() != iC) {
                t10 = this.f80701b.get(iC);
                this.f80701b.remove(iC);
            } else {
                t10 = this.f80700a;
                this.f80700a = null;
            }
        }
        if (t10 == null) {
            t10 = (T) this.f80703d.b(iC);
            if (cVar != null) {
                t10.a(cVar);
            }
        }
        return t10;
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void a(boolean isAlwaysRecoverModel) {
        this.f80702c = Boolean.valueOf(isAlwaysRecoverModel);
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void b(boolean isAlwaysRecoverAssistModel) {
        if (this.f80702c == null) {
            this.f80702c = Boolean.valueOf(isAlwaysRecoverAssistModel);
        }
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public boolean a() {
        Boolean bool = this.f80702c;
        return bool != null && bool.booleanValue();
    }
}
