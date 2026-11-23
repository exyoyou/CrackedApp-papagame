package com.join.mgps.ptr;

/* JADX INFO: loaded from: classes3.dex */
public abstract class e implements Runnable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte f71989d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final byte f71990e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final byte f71991f = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Runnable f71992b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte f71993c = 0;

    public void a() {
        this.f71993c = (byte) 0;
    }

    public void b() {
        Runnable runnable = this.f71992b;
        if (runnable != null) {
            runnable.run();
        }
        this.f71993c = (byte) 2;
    }

    public void c(Runnable runnable) {
        this.f71992b = runnable;
    }

    public void d() {
        e(null);
    }

    public void e(Runnable resumeAction) {
        if (resumeAction != null) {
            this.f71992b = resumeAction;
        }
        byte b10 = this.f71993c;
        if (b10 == 0) {
            this.f71993c = (byte) 1;
            run();
        } else {
            if (b10 != 2) {
                return;
            }
            b();
        }
    }
}
