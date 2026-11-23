package com.facebook.imagepipeline.datasource;

import com.facebook.common.internal.i;
import com.facebook.datasource.AbstractDataSource;
import com.facebook.imagepipeline.producers.Consumer;
import com.facebook.imagepipeline.producers.ProducerContext;
import com.facebook.imagepipeline.producers.q0;
import com.facebook.imagepipeline.producers.y0;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.STRICT)
public abstract class a<T> extends AbstractDataSource<T> implements com.facebook.imagepipeline.request.c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final y0 f27989i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final j4.e f27990j;

    /* JADX INFO: renamed from: com.facebook.imagepipeline.datasource.a$a, reason: collision with other inner class name */
    class C0573a extends com.facebook.imagepipeline.producers.b<T> {
        C0573a() {
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void f() {
            a.this.A();
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void g(Throwable throwable) {
            a.this.B(throwable);
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void h(@Nullable T newResult, int status) {
            a aVar = a.this;
            aVar.C(newResult, status, aVar.f27989i);
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void i(float progress) {
            a.this.q(progress);
        }
    }

    protected a(q0<T> producer, y0 settableProducerContext, j4.e requestListener) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractProducerToDataSourceAdapter()");
        }
        this.f27989i = settableProducerContext;
        this.f27990j = requestListener;
        D();
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractProducerToDataSourceAdapter()->onRequestStart");
        }
        requestListener.c(settableProducerContext);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractProducerToDataSourceAdapter()->produceResult");
        }
        producer.a(y(), settableProducerContext);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void A() {
        i.o(isClosed());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(Throwable throwable) {
        if (super.o(throwable, z(this.f27989i))) {
            this.f27990j.i(this.f27989i, throwable);
        }
    }

    private void D() {
        m(this.f27989i.getExtras());
    }

    private Consumer<T> y() {
        return new C0573a();
    }

    protected void C(@Nullable T result, int status, ProducerContext producerContext) {
        boolean zD = com.facebook.imagepipeline.producers.b.d(status);
        if (super.setResult(result, zD, z(producerContext)) && zD) {
            this.f27990j.e(this.f27989i);
        }
    }

    @Override // com.facebook.imagepipeline.request.c
    public ImageRequest a() {
        return this.f27989i.a();
    }

    @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
    public boolean close() {
        if (!super.close()) {
            return false;
        }
        if (super.f()) {
            return true;
        }
        this.f27990j.g(this.f27989i);
        this.f27989i.u();
        return true;
    }

    protected Map<String, Object> z(ProducerContext producerContext) {
        return producerContext.getExtras();
    }
}
