package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class d1 implements c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f28355a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Deque<Runnable> f28356b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f28357c;

    public d1(Executor executor) {
        this.f28357c = (Executor) com.facebook.common.internal.i.i(executor);
    }

    private void e() {
        while (!this.f28356b.isEmpty()) {
            this.f28357c.execute(this.f28356b.pop());
        }
        this.f28356b.clear();
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public synchronized void a() {
        this.f28355a = true;
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public synchronized void b(Runnable runnable) {
        if (this.f28355a) {
            this.f28356b.add(runnable);
        } else {
            this.f28357c.execute(runnable);
        }
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public synchronized void c() {
        this.f28355a = false;
        e();
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public synchronized boolean d() {
        return this.f28355a;
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public synchronized void remove(Runnable runnable) {
        this.f28356b.remove(runnable);
    }
}
