package cn.aigestudio.downloader.bizs;

import android.content.Context;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements m, n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static c f610c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private o f611a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private p f612b;

    private c(Context context) {
        this.f611a = new o(context);
        this.f612b = new p(context);
    }

    public static c k(Context context) {
        if (f610c == null) {
            f610c = new c(context);
        }
        return f610c;
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public synchronized void a(String id2) {
        this.f612b.a(id2);
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public synchronized j b(String id2) {
        return this.f612b.b(id2);
    }

    @Override // cn.aigestudio.downloader.bizs.m
    public synchronized void c(f info) {
        this.f611a.c(info);
    }

    @Override // cn.aigestudio.downloader.bizs.m
    public synchronized void d(f info) {
        this.f611a.d(info);
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public synchronized void e(j info) {
        this.f612b.e(info);
    }

    @Override // cn.aigestudio.downloader.bizs.m
    public synchronized void f(String url) {
        this.f611a.f(url);
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public synchronized List<j> g(String url) {
        return this.f612b.g(url);
    }

    @Override // cn.aigestudio.downloader.bizs.m
    public synchronized f h(String url) {
        return this.f611a.h(url);
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public synchronized void i(j info) {
        this.f612b.i(info);
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public synchronized void j(String url) {
        this.f612b.j(url);
    }
}
