package net.lingala.zip4j.unzip;

import net.lingala.zip4j.exception.ZipException;
import pc.h;
import pc.k;

/* JADX INFO: loaded from: classes.dex */
class b extends Thread {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f94663b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ h f94664c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ String f94665d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ k f94666e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f94667f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final /* synthetic */ qc.a f94668g;

    b(c cVar, String str, h hVar, String str2, k kVar, String str3, qc.a aVar) {
        super(str);
        this.f94663b = cVar;
        this.f94664c = hVar;
        this.f94665d = str2;
        this.f94666e = kVar;
        this.f94667f = str3;
        this.f94668g = aVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.f94663b.i(this.f94664c, this.f94665d, this.f94666e, this.f94667f, this.f94668g);
            this.f94668g.c();
        } catch (ZipException unused) {
        }
    }
}
