package com.sigmob.sdk.downloader.core.breakpoint;

import android.content.Context;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class i implements j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f80417c = "BreakpointStoreOnSQLite";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final e f80418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final h f80419b;

    public i(Context context) {
        e eVar = new e(context.getApplicationContext());
        this.f80418a = eVar;
        this.f80419b = new h(eVar.b(), eVar.a(), eVar.c());
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(int id2) {
        return this.f80419b.a(id2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public int b(com.sigmob.sdk.downloader.f task) {
        return this.f80419b.b(task);
    }

    public j c() {
        return new l(this);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void d(int id2) {
        this.f80419b.d(id2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public c e(int id2) {
        return null;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public boolean f(int id2) {
        if (!this.f80419b.f(id2)) {
            return false;
        }
        this.f80418a.a(id2);
        return true;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public boolean g(int id2) {
        if (!this.f80419b.g(id2)) {
            return false;
        }
        this.f80418a.b(id2);
        return true;
    }

    i(e helper, h onCache) {
        this.f80418a = helper;
        this.f80419b = onCache;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(com.sigmob.sdk.downloader.f task) throws IOException {
        c cVarA = this.f80419b.a(task);
        this.f80418a.a(cVarA);
        return cVarA;
    }

    void b() {
        this.f80418a.close();
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean c(int id2) {
        return this.f80419b.c(id2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(com.sigmob.sdk.downloader.f task, c ignored) {
        return this.f80419b.a(task, ignored);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public void b(int id2) {
        this.f80419b.b(id2);
        this.f80418a.c(id2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public String a(String url) {
        return this.f80419b.a(url);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void a(int id2, com.sigmob.sdk.downloader.core.cause.a cause, Exception exception) {
        this.f80419b.a(id2, cause, exception);
        if (cause == com.sigmob.sdk.downloader.core.cause.a.COMPLETED) {
            this.f80418a.c(id2);
        }
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void a(c info, int blockIndex, long increaseLength) throws IOException {
        this.f80419b.a(info, blockIndex, increaseLength);
        this.f80418a.a(info, blockIndex, info.b(blockIndex).a());
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean a() {
        return false;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean a(c breakpointInfo) throws IOException {
        boolean zA = this.f80419b.a(breakpointInfo);
        this.f80418a.b(breakpointInfo);
        String strM = breakpointInfo.m();
        com.sigmob.sdk.downloader.core.c.b(f80417c, "update " + breakpointInfo);
        if (breakpointInfo.d() && strM != null) {
            this.f80418a.a(breakpointInfo.l(), strM);
        }
        return zA;
    }
}
