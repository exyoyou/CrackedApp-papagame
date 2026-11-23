package net.lingala.zip4j.util;

import net.lingala.zip4j.exception.ZipException;
import pc.o;

/* JADX INFO: loaded from: classes.dex */
class a extends Thread {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f94676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ o f94677c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ pc.h f94678d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ qc.a f94679e;

    a(c cVar, String str, o oVar, pc.h hVar, qc.a aVar) {
        super(str);
        this.f94676b = cVar;
        this.f94677c = oVar;
        this.f94678d = hVar;
        this.f94679e = aVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws Throwable {
        try {
            this.f94676b.j(this.f94677c, this.f94678d, this.f94679e);
            this.f94679e.c();
        } catch (ZipException unused) {
        }
    }
}
