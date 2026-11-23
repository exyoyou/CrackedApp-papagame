package com.byazt.pct;

import com.bytedance.component.sdk.annotation.CallSuper;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 124, 15})
public abstract class uj<P, R> extends com.byazt.pct.tt<P, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f18670c = true;
    public c tt;
    public a ve;

    interface c {
        void c(Object obj);

        void c(Throwable th);
    }

    public interface tt {
        uj c();
    }

    private boolean sp() {
        if (this.f18670c) {
            return true;
        }
        i.c(new IllegalStateException("Jsb async call already finished: " + c() + ", hashcode: " + hashCode()));
        return false;
    }

    public void a() {
        uj();
        n();
    }

    @Override // com.byazt.pct.tt
    public /* bridge */ /* synthetic */ String c() {
        return super.c();
    }

    public abstract void c(P p10, a aVar) throws Exception;

    @CallSuper
    public void n() {
        this.f18670c = false;
        this.ve = null;
    }

    public abstract void uj();

    public final void ve() {
        c((Throwable) null);
    }

    public final void c(R r10) {
        if (sp()) {
            this.tt.c(r10);
            n();
        }
    }

    public final void c(Throwable th) {
        if (sp()) {
            this.tt.c(th);
            n();
        }
    }

    public void c(P p10, a aVar, c cVar) throws Exception {
        this.ve = aVar;
        this.tt = cVar;
        c(p10, aVar);
    }
}
