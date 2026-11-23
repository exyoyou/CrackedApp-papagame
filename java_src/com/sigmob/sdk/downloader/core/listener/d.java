package com.sigmob.sdk.downloader.core.listener;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class d implements com.sigmob.sdk.downloader.c, com.sigmob.sdk.downloader.core.listener.assist.b.InterfaceC1030b, com.sigmob.sdk.downloader.core.listener.assist.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final com.sigmob.sdk.downloader.core.listener.assist.b f80705a;

    static class a implements com.sigmob.sdk.downloader.core.listener.assist.e.b<com.sigmob.sdk.downloader.core.listener.assist.b.c> {
        a() {
        }

        @Override // com.sigmob.sdk.downloader.core.listener.assist.e.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.sigmob.sdk.downloader.core.listener.assist.b.c b(int id2) {
            return new com.sigmob.sdk.downloader.core.listener.assist.b.c(id2);
        }
    }

    public d() {
        this(new com.sigmob.sdk.downloader.core.listener.assist.b(new a()));
    }

    public void a(com.sigmob.sdk.downloader.core.listener.assist.b.a assistExtend) {
        this.f80705a.a(assistExtend);
    }

    @Override // com.sigmob.sdk.downloader.c
    public final void b(com.sigmob.sdk.downloader.f task, int blockIndex, long increaseBytes) {
        this.f80705a.a(task, blockIndex, increaseBytes);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void c(com.sigmob.sdk.downloader.f task, int blockIndex, long contentLength) {
        this.f80705a.a(task, blockIndex);
    }

    d(com.sigmob.sdk.downloader.core.listener.assist.b assist) {
        this.f80705a = assist;
        assist.a(this);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f task, int blockIndex, long contentLength) {
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void b(boolean isAlwaysRecoverAssistModel) {
        this.f80705a.b(isAlwaysRecoverAssistModel);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f task, int responseCode, Map<String, List<String>> responseHeaderFields) {
    }

    @Override // com.sigmob.sdk.downloader.c
    public final void a(com.sigmob.sdk.downloader.f task, com.sigmob.sdk.downloader.core.breakpoint.c info) {
        this.f80705a.a(task, info, true);
    }

    @Override // com.sigmob.sdk.downloader.c
    public final void a(com.sigmob.sdk.downloader.f task, com.sigmob.sdk.downloader.core.breakpoint.c info, com.sigmob.sdk.downloader.core.cause.b cause) {
        this.f80705a.a(task, info, false);
    }

    @Override // com.sigmob.sdk.downloader.c
    public final void a(com.sigmob.sdk.downloader.f task, com.sigmob.sdk.downloader.core.cause.a cause, Exception realCause) {
        this.f80705a.a(task, cause, realCause);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f task, Map<String, List<String>> requestHeaderFields) {
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void a(boolean isAlwaysRecoverAssistModel) {
        this.f80705a.a(isAlwaysRecoverAssistModel);
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public boolean a() {
        return this.f80705a.a();
    }
}
