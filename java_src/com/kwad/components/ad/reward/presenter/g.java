package com.kwad.components.ad.reward.presenter;

import androidx.annotation.Nullable;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.internal.api.SceneImpl;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends b implements com.kwad.components.core.j.a.InterfaceC0865a {
    @Override // com.kwad.components.ad.reward.presenter.b, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        boolean zLZ = com.kwad.sdk.core.local.a.LZ();
        com.kwad.sdk.core.d.c.d("RewardInnerAdLoadPresenter", "onBind localCheckResult: " + zLZ);
        SceneImpl sceneImpl = this.mAdTemplate.mAdScene;
        if (sceneImpl == null || !zLZ) {
            return;
        }
        com.kwad.components.core.j.a.a(sceneImpl, this);
    }

    @Override // com.kwad.components.core.j.a.InterfaceC0865a
    public final void e(@Nullable List<com.kwad.components.core.j.c> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        com.kwad.sdk.core.d.c.d("RewardInnerAdLoadPresenter", "onInnerAdLoad: " + list.size());
        AdTemplate adTemplate = list.get(0).getAdTemplate();
        boolean zDf = com.kwad.sdk.core.response.helper.b.df(adTemplate);
        List<com.kwad.components.core.j.a.InterfaceC0865a> listHd = this.uj.hd();
        if (zDf) {
            com.kwad.sdk.core.local.a.g(com.kwad.sdk.core.response.helper.b.dc(adTemplate), com.kwad.sdk.core.response.helper.b.dd(adTemplate));
            if (listHd != null) {
                Iterator<com.kwad.components.core.j.a.InterfaceC0865a> it2 = listHd.iterator();
                while (it2.hasNext()) {
                    it2.next().e(list);
                }
            }
        }
    }

    @Override // com.kwad.components.core.j.a.InterfaceC0865a
    public final void onError(int i10, String str) {
        List<com.kwad.components.core.j.a.InterfaceC0865a> listHd = this.uj.hd();
        if (listHd != null) {
            Iterator<com.kwad.components.core.j.a.InterfaceC0865a> it2 = listHd.iterator();
            while (it2.hasNext()) {
                it2.next().onError(i10, str);
            }
        }
    }

    @Override // com.kwad.components.core.j.a.InterfaceC0865a
    public final void onRequestResult(int i10) {
        List<com.kwad.components.core.j.a.InterfaceC0865a> listHd = this.uj.hd();
        if (listHd != null) {
            Iterator<com.kwad.components.core.j.a.InterfaceC0865a> it2 = listHd.iterator();
            while (it2.hasNext()) {
                it2.next().onRequestResult(i10);
            }
        }
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        super.onUnbind();
    }
}
