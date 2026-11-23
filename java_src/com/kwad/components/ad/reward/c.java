package com.kwad.components.ad.reward;

import androidx.annotation.Nullable;
import com.kwad.components.core.webview.tachikoma.c.r;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: sc, reason: collision with root package name */
    private final Set<com.kwad.components.ad.reward.e.m> f75180sc;

    static class a {
        private static final c sf = new c(0);
    }

    /* synthetic */ c(byte b10) {
        this();
    }

    public static c gz() {
        return a.sf;
    }

    public final void b(com.kwad.components.ad.reward.e.m mVar) {
        this.f75180sc.remove(mVar);
    }

    public final void c(@Nullable final r rVar) {
        by.runOnUiThread(new bi() { // from class: com.kwad.components.ad.reward.c.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                c.this.b(rVar);
            }
        });
    }

    private c() {
        this.f75180sc = new HashSet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(@Nullable r rVar) {
        if (this.f75180sc.size() == 0) {
            return;
        }
        Iterator<com.kwad.components.ad.reward.e.m> it2 = this.f75180sc.iterator();
        while (it2.hasNext()) {
            it2.next().a(rVar);
        }
    }

    public final void a(com.kwad.components.ad.reward.e.m mVar) {
        if (mVar != null) {
            this.f75180sc.add(mVar);
        }
    }
}
