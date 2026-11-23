package com.kwad.components.ad.splashscreen.presenter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Vibrator;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.utils.by;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i extends e implements com.kwad.sdk.core.j.c {
    private static long oe = 400;
    private com.kwad.components.ad.splashscreen.e.a HV;
    private Vibrator hw;

    private void mO() {
        com.kwad.components.ad.splashscreen.h hVar = this.HC;
        if (hVar != null) {
            com.kwad.components.ad.splashscreen.e.a aVar = this.HV;
            if (aVar == null) {
                this.HV = new com.kwad.components.ad.splashscreen.e.a(getContext(), this.HC.mAdTemplate) { // from class: com.kwad.components.ad.splashscreen.presenter.i.1
                    {
                        super(adTemplate);
                    }

                    @Override // com.kwad.components.ad.splashscreen.e.a
                    @SuppressLint({"SetTextI18n"})
                    public final void k(int i10, String str) {
                        i.this.j(i10, str);
                    }
                };
            } else {
                aVar.setAdTemplate(hVar.mAdTemplate);
            }
            com.kwad.components.core.e.d.d dVar = this.HC.mApkDownloadHelper;
            if (dVar != null) {
                dVar.b(this.HV);
            }
        }
    }

    @Override // com.kwad.components.ad.splashscreen.presenter.e, com.kwad.sdk.mvp.Presenter
    public void ay() {
        super.ay();
        com.kwad.components.ad.splashscreen.h hVar = this.HC;
        if (hVar == null) {
            return;
        }
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(hVar.mAdTemplate);
        mL();
        mJ();
        if (com.kwad.sdk.core.response.helper.a.aL(adInfoEO)) {
            mO();
        }
        mK();
        fY();
        this.HC.GP.a(this);
    }

    @Override // com.kwad.sdk.core.j.c
    public final void bA() {
        mN();
    }

    @Override // com.kwad.sdk.core.j.c
    public final void bz() {
        if (this.HC.GS) {
            return;
        }
        mM();
    }

    protected abstract void fY();

    protected abstract void initView();

    protected abstract void j(int i10, String str);

    protected abstract void mJ();

    protected abstract void mK();

    protected abstract void mL();

    protected abstract void mM();

    protected abstract void mN();

    protected final void mP() {
        Context context = getContext();
        if (context != null) {
            this.hw = (Vibrator) context.getSystemService("vibrator");
        }
        by.a(getContext(), this.hw);
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public void onCreate() {
        super.onCreate();
        initView();
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public void onUnbind() {
        com.kwad.sdk.core.j.a aVar;
        super.onUnbind();
        com.kwad.components.ad.splashscreen.h hVar = this.HC;
        if (hVar != null && (aVar = hVar.GP) != null) {
            aVar.b(this);
        }
        mN();
        by.b(getContext(), this.hw);
    }
}
