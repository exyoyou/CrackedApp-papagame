package com.kwad.components.core.request;

import com.kwad.sdk.service.ServiceProvider;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    private final List<a> ajE;

    public interface a {
        void vS();
    }

    /* JADX INFO: renamed from: com.kwad.components.core.request.b$b, reason: collision with other inner class name */
    static class C0880b {
        private static final b ajF = new b(0);
    }

    /* synthetic */ b(byte b10) {
        this();
    }

    public static b vQ() {
        return C0880b.ajF;
    }

    public final void a(a aVar) {
        this.ajE.add(aVar);
    }

    public final void b(a aVar) {
        this.ajE.remove(aVar);
    }

    public final void vR() {
        for (a aVar : this.ajE) {
            if (aVar != null) {
                try {
                    aVar.vS();
                } catch (Throwable th) {
                    ServiceProvider.reportSdkCaughtException(th);
                }
            }
        }
    }

    private b() {
        this.ajE = new CopyOnWriteArrayList();
    }
}
