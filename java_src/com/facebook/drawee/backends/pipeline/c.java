package com.facebook.drawee.backends.pipeline;

import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.i;
import com.facebook.common.internal.l;
import com.facebook.common.internal.m;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final ImmutableList<g4.a> f27001a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final g f27002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final l<Boolean> f27003c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private final q3.g f27004d;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        private List<g4.a> f27005a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        private l<Boolean> f27006b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        private g f27007c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        private q3.g f27008d;

        public b e(g4.a factory) {
            if (this.f27005a == null) {
                this.f27005a = new ArrayList();
            }
            this.f27005a.add(factory);
            return this;
        }

        public c f() {
            return new c(this);
        }

        public b g(l<Boolean> debugOverlayEnabledSupplier) {
            i.i(debugOverlayEnabledSupplier);
            this.f27006b = debugOverlayEnabledSupplier;
            return this;
        }

        public b h(boolean drawDebugOverlay) {
            return g(m.a(Boolean.valueOf(drawDebugOverlay)));
        }

        public b i(@Nullable q3.g imagePerfDataListener) {
            this.f27008d = imagePerfDataListener;
            return this;
        }

        public b j(g factory) {
            this.f27007c = factory;
            return this;
        }
    }

    public static b e() {
        return new b();
    }

    @Nullable
    public ImmutableList<g4.a> a() {
        return this.f27001a;
    }

    public l<Boolean> b() {
        return this.f27003c;
    }

    @Nullable
    public q3.g c() {
        return this.f27004d;
    }

    @Nullable
    public g d() {
        return this.f27002b;
    }

    private c(b builder) {
        this.f27001a = builder.f27005a != null ? ImmutableList.copyOf(builder.f27005a) : null;
        this.f27003c = builder.f27006b != null ? builder.f27006b : m.a(Boolean.FALSE);
        this.f27002b = builder.f27007c;
        this.f27004d = builder.f27008d;
    }
}
