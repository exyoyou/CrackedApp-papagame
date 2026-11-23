package com.kwad.components.core.webview.tachikoma.e;

import com.kwad.components.core.webview.tachikoma.f.g;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    private final Set<g> avc;

    static class a {
        private static final c avi = new c(0);
    }

    /* synthetic */ c(byte b10) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(String str, String str2) {
        if (this.avc.size() == 0) {
            return;
        }
        Iterator it2 = new HashSet(this.avc).iterator();
        while (it2.hasNext()) {
            ((g) it2.next()).x(str2);
        }
    }

    public static c zG() {
        return a.avi;
    }

    public final void b(g gVar) {
        this.avc.remove(gVar);
    }

    public final void c(final String str, final long j10, final long j11, final long j12) {
        by.runOnUiThread(new bi() { // from class: com.kwad.components.core.webview.tachikoma.e.c.2
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                c.this.b(str, j10, j11, j12);
            }
        });
    }

    public final void x(final String str, final String str2) {
        by.runOnUiThread(new bi() { // from class: com.kwad.components.core.webview.tachikoma.e.c.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                c.this.u(str, str2);
            }
        });
    }

    public final void zH() {
        this.avc.clear();
    }

    private c() {
        this.avc = new CopyOnWriteArraySet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, long j10, long j11, long j12) {
        if (this.avc.size() == 0) {
            return;
        }
        Iterator it2 = new HashSet(this.avc).iterator();
        while (it2.hasNext()) {
            ((g) it2.next()).a(str, j10, j11, j12);
        }
    }

    public final void a(g gVar) {
        if (gVar != null) {
            this.avc.add(gVar);
        }
    }
}
