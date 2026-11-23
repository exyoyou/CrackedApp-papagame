package com.facebook.imagepipeline.core;

import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class b implements f {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f27805f = 2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f27806g = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f27808b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f27809c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ScheduledExecutorService f27811e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f27807a = Executors.newFixedThreadPool(2, new m(10, "FrescoIoBoundExecutor", true));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f27810d = Executors.newFixedThreadPool(1, new m(10, "FrescoLightWeightBackgroundExecutor", true));

    public b(int numCpuBoundThreads) {
        this.f27808b = Executors.newFixedThreadPool(numCpuBoundThreads, new m(10, "FrescoDecodeExecutor", true));
        this.f27809c = Executors.newFixedThreadPool(numCpuBoundThreads, new m(10, "FrescoBackgroundExecutor", true));
        this.f27811e = Executors.newScheduledThreadPool(numCpuBoundThreads, new m(10, "FrescoBackgroundExecutor", true));
    }

    @Override // com.facebook.imagepipeline.core.f
    public Executor a() {
        return this.f27810d;
    }

    @Override // com.facebook.imagepipeline.core.f
    public Executor b() {
        return this.f27809c;
    }

    @Override // com.facebook.imagepipeline.core.f
    public Executor c() {
        return this.f27807a;
    }

    @Override // com.facebook.imagepipeline.core.f
    public Executor d() {
        return this.f27807a;
    }

    @Override // com.facebook.imagepipeline.core.f
    public Executor e() {
        return this.f27807a;
    }

    @Override // com.facebook.imagepipeline.core.f
    public ScheduledExecutorService f() {
        return this.f27811e;
    }

    @Override // com.facebook.imagepipeline.core.f
    public Executor g() {
        return this.f27808b;
    }
}
