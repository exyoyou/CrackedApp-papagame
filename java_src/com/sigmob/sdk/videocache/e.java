package com.sigmob.sdk.videocache;

import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f81906a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.sigmob.sdk.videocache.file.c f81907b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.sigmob.sdk.videocache.file.a f81908c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.sigmob.sdk.videocache.sourcestorage.c f81909d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.sigmob.sdk.videocache.headers.b f81910e;

    e(File cacheRoot, com.sigmob.sdk.videocache.file.c fileNameGenerator, com.sigmob.sdk.videocache.file.a diskUsage, com.sigmob.sdk.videocache.sourcestorage.c sourceInfoStorage, com.sigmob.sdk.videocache.headers.b headerInjector) {
        this.f81906a = cacheRoot;
        this.f81907b = fileNameGenerator;
        this.f81908c = diskUsage;
        this.f81909d = sourceInfoStorage;
        this.f81910e = headerInjector;
    }

    File a(String url) {
        return new File(this.f81906a, this.f81907b.a(url));
    }
}
