package com.kwad.components.ad.draw.presenter.b;

import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdTemplate;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private InterfaceC0786a eY;

    @Nullable
    private b eZ;

    /* JADX INFO: renamed from: fa, reason: collision with root package name */
    private boolean f75095fa = false;
    private AdTemplate mAdTemplate;

    /* JADX INFO: renamed from: com.kwad.components.ad.draw.presenter.b.a$a, reason: collision with other inner class name */
    public interface InterfaceC0786a {
        void bb();
    }

    public interface b {
        boolean bc();
    }

    public a(AdTemplate adTemplate) {
        this.mAdTemplate = adTemplate;
    }

    @MainThread
    public final void a(InterfaceC0786a interfaceC0786a) {
        this.eY = interfaceC0786a;
    }

    public final void ba() {
        InterfaceC0786a interfaceC0786a;
        if (this.f75095fa) {
            return;
        }
        this.f75095fa = true;
        if (e.eO(this.mAdTemplate).status == 1 || e.eO(this.mAdTemplate).status == 2 || e.eO(this.mAdTemplate).status == 3) {
            return;
        }
        b bVar = this.eZ;
        if ((bVar == null || !bVar.bc()) && (interfaceC0786a = this.eY) != null) {
            interfaceC0786a.bb();
        }
    }

    @MainThread
    public final void a(b bVar) {
        this.eZ = bVar;
    }
}
