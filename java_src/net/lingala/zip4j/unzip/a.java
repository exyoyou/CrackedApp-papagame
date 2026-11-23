package net.lingala.zip4j.unzip;

import java.util.ArrayList;
import net.lingala.zip4j.exception.ZipException;
import pc.k;

/* JADX INFO: loaded from: classes.dex */
class a extends Thread {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f94658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ ArrayList f94659c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ k f94660d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ qc.a f94661e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f94662f;

    a(c cVar, String str, ArrayList arrayList, k kVar, qc.a aVar, String str2) {
        super(str);
        this.f94658b = cVar;
        this.f94659c = arrayList;
        this.f94660d = kVar;
        this.f94661e = aVar;
        this.f94662f = str2;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.f94658b.h(this.f94659c, this.f94660d, this.f94661e, this.f94662f);
            this.f94661e.c();
        } catch (ZipException unused) {
        }
    }
}
