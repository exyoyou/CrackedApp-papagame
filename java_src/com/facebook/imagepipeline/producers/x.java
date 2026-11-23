package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class x implements t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final u0 f28676a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final t0 f28677b;

    public x(@Nullable u0 producerListener, @Nullable t0 producerListener2) {
        this.f28676a = producerListener;
        this.f28677b = producerListener2;
    }

    @Override // com.facebook.imagepipeline.producers.t0
    public void a(ProducerContext context, String producerName, boolean successful) {
        u0 u0Var = this.f28676a;
        if (u0Var != null) {
            u0Var.i(context.getId(), producerName, successful);
        }
        t0 t0Var = this.f28677b;
        if (t0Var != null) {
            t0Var.a(context, producerName, successful);
        }
    }

    @Override // com.facebook.imagepipeline.producers.t0
    public void b(ProducerContext context, String producerName) {
        u0 u0Var = this.f28676a;
        if (u0Var != null) {
            u0Var.a(context.getId(), producerName);
        }
        t0 t0Var = this.f28677b;
        if (t0Var != null) {
            t0Var.b(context, producerName);
        }
    }

    @Override // com.facebook.imagepipeline.producers.t0
    public void d(ProducerContext context, String producerName, @Nullable Map<String, String> extraMap) {
        u0 u0Var = this.f28676a;
        if (u0Var != null) {
            u0Var.h(context.getId(), producerName, extraMap);
        }
        t0 t0Var = this.f28677b;
        if (t0Var != null) {
            t0Var.d(context, producerName, extraMap);
        }
    }

    @Override // com.facebook.imagepipeline.producers.t0
    public boolean f(ProducerContext context, String producerName) {
        t0 t0Var;
        u0 u0Var = this.f28676a;
        boolean zF = u0Var != null ? u0Var.f(context.getId()) : false;
        return (zF || (t0Var = this.f28677b) == null) ? zF : t0Var.f(context, producerName);
    }

    @Override // com.facebook.imagepipeline.producers.t0
    public void h(ProducerContext context, String producerName, String eventName) {
        u0 u0Var = this.f28676a;
        if (u0Var != null) {
            u0Var.d(context.getId(), producerName, eventName);
        }
        t0 t0Var = this.f28677b;
        if (t0Var != null) {
            t0Var.h(context, producerName, eventName);
        }
    }

    @Override // com.facebook.imagepipeline.producers.t0
    public void j(ProducerContext context, String producerName, @Nullable Map<String, String> extraMap) {
        u0 u0Var = this.f28676a;
        if (u0Var != null) {
            u0Var.g(context.getId(), producerName, extraMap);
        }
        t0 t0Var = this.f28677b;
        if (t0Var != null) {
            t0Var.j(context, producerName, extraMap);
        }
    }

    @Override // com.facebook.imagepipeline.producers.t0
    public void k(ProducerContext context, String producerName, Throwable t10, @Nullable Map<String, String> extraMap) {
        u0 u0Var = this.f28676a;
        if (u0Var != null) {
            u0Var.c(context.getId(), producerName, t10, extraMap);
        }
        t0 t0Var = this.f28677b;
        if (t0Var != null) {
            t0Var.k(context, producerName, t10, extraMap);
        }
    }

    @Nullable
    public u0 l() {
        return this.f28676a;
    }

    @Nullable
    public t0 m() {
        return this.f28677b;
    }
}
