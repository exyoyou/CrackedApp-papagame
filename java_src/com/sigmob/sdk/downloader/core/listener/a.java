package com.sigmob.sdk.downloader.core.listener;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a implements com.sigmob.sdk.downloader.c, com.sigmob.sdk.downloader.core.listener.assist.a.InterfaceC1029a, com.sigmob.sdk.downloader.core.listener.assist.d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final com.sigmob.sdk.downloader.core.listener.assist.a f80680d;

    public a() {
        this(new com.sigmob.sdk.downloader.core.listener.assist.a());
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f task, int blockIndex, int responseCode, Map<String, List<String>> responseHeaderFields) {
        this.f80680d.b(task);
    }

    @Override // com.sigmob.sdk.downloader.c
    public final void a_(com.sigmob.sdk.downloader.f task) {
        this.f80680d.a(task);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void b(com.sigmob.sdk.downloader.f task, int blockIndex, long increaseBytes) {
        this.f80680d.a(task, increaseBytes);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void c(com.sigmob.sdk.downloader.f task, int blockIndex, long contentLength) {
    }

    a(com.sigmob.sdk.downloader.core.listener.assist.a assist) {
        this.f80680d = assist;
        assist.a(this);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f task, int blockIndex, long contentLength) {
    }

    @Override // com.sigmob.sdk.downloader.c
    public void b(com.sigmob.sdk.downloader.f task, int blockIndex, Map<String, List<String>> requestHeaderFields) {
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f task, int responseCode, Map<String, List<String>> responseHeaderFields) {
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void b(boolean isAlwaysRecoverAssistModel) {
        this.f80680d.b(isAlwaysRecoverAssistModel);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f task, com.sigmob.sdk.downloader.core.breakpoint.c info) {
        this.f80680d.a(task, info);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f task, com.sigmob.sdk.downloader.core.breakpoint.c info, com.sigmob.sdk.downloader.core.cause.b cause) {
        this.f80680d.a(task, info, cause);
    }

    @Override // com.sigmob.sdk.downloader.c
    public final void a(com.sigmob.sdk.downloader.f task, com.sigmob.sdk.downloader.core.cause.a cause, Exception realCause) {
        this.f80680d.a(task, cause, realCause);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f task, Map<String, List<String>> requestHeaderFields) {
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void a(boolean isAlwaysRecoverAssistModel) {
        this.f80680d.a(isAlwaysRecoverAssistModel);
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public boolean a() {
        return this.f80680d.a();
    }
}
