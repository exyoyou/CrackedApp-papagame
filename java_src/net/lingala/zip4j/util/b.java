package net.lingala.zip4j.util;

import java.io.File;
import net.lingala.zip4j.exception.ZipException;
import pc.o;

/* JADX INFO: loaded from: classes.dex */
class b extends Thread {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f94680b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ o f94681c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ File f94682d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ qc.a f94683e;

    b(c cVar, String str, o oVar, File file, qc.a aVar) {
        super(str);
        this.f94680b = cVar;
        this.f94681c = oVar;
        this.f94682d = file;
        this.f94683e = aVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws Throwable {
        try {
            this.f94680b.g(this.f94681c, this.f94682d, this.f94683e);
        } catch (ZipException unused) {
        }
    }
}
