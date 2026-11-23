package com.danikula.videocache;

import java.io.File;

/* JADX INFO: loaded from: classes9.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f26016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.danikula.videocache.file.c f26017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.danikula.videocache.file.a f26018c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.danikula.videocache.sourcestorage.c f26019d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final y2.b f26020e;

    e(File file, com.danikula.videocache.file.c cVar, com.danikula.videocache.file.a aVar, com.danikula.videocache.sourcestorage.c cVar2, y2.b bVar) {
        this.f26016a = file;
        this.f26017b = cVar;
        this.f26018c = aVar;
        this.f26019d = cVar2;
        this.f26020e = bVar;
    }

    File a(String str) {
        return new File(this.f26016a, this.f26017b.generate(str));
    }
}
