package com.facebook.soloader;

import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class p {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f29036f = "com.facebook.soloader.p";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private List<String> f29038b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f29037a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Boolean f29039c = Boolean.TRUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f29040d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private volatile UnsatisfiedLinkError f29041e = null;

    protected p(List<String> list) {
        this.f29038b = list;
    }

    public void a() throws UnsatisfiedLinkError {
        if (!d()) {
            throw this.f29041e;
        }
    }

    @Nullable
    public UnsatisfiedLinkError b() {
        return this.f29041e;
    }

    protected void c() throws UnsatisfiedLinkError {
    }

    @Nullable
    public boolean d() {
        synchronized (this.f29037a) {
            if (!this.f29039c.booleanValue()) {
                return this.f29040d;
            }
            try {
                try {
                    List<String> list = this.f29038b;
                    if (list != null) {
                        Iterator<String> it2 = list.iterator();
                        while (it2.hasNext()) {
                            SoLoader.t(it2.next());
                        }
                    }
                    c();
                    this.f29040d = true;
                    this.f29038b = null;
                } catch (Throwable th) {
                    this.f29041e = new UnsatisfiedLinkError("Failed loading libraries");
                    this.f29041e.initCause(th);
                    this.f29040d = false;
                }
            } catch (UnsatisfiedLinkError e10) {
                this.f29041e = e10;
                this.f29040d = false;
            }
            this.f29039c = Boolean.FALSE;
            return this.f29040d;
        }
    }
}
