package net.lingala.zip4j.zip;

import java.util.ArrayList;
import net.lingala.zip4j.exception.ZipException;
import pc.p;

/* JADX INFO: loaded from: classes.dex */
class a extends Thread {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ b f94751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ ArrayList f94752c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ p f94753d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ qc.a f94754e;

    a(b bVar, String str, ArrayList arrayList, p pVar, qc.a aVar) {
        super(str);
        this.f94751b = bVar;
        this.f94752c = arrayList;
        this.f94753d = pVar;
        this.f94754e = aVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws Throwable {
        try {
            this.f94751b.h(this.f94752c, this.f94753d, this.f94754e);
        } catch (ZipException unused) {
        }
    }
}
