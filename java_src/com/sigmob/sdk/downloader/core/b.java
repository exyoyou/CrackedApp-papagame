package com.sigmob.sdk.downloader.core;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final String f80356a;

    public b(String name) {
        this.f80356a = name;
    }

    protected abstract void a() throws InterruptedException;

    protected abstract void a(InterruptedException e10);

    protected abstract void b();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f80356a);
        try {
            try {
                a();
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                a(e10);
            }
        } finally {
            Thread.currentThread().setName(name);
            b();
        }
    }
}
