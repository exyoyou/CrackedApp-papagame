package com.kwad.components.ad.interstitial.aggregate;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewpager.widget.PagerAdapter;
import com.kwad.components.ad.interstitial.d;
import com.kwad.sdk.api.KsAdVideoPlayConfig;
import com.kwad.sdk.api.KsInterstitialAd;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdResultData;
import com.kwad.sdk.core.response.model.AdTemplate;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends PagerAdapter {
    private final KsAdVideoPlayConfig ce;
    private b lA;
    private InterfaceC0797a lB;
    private boolean lC;
    private final KsInterstitialAd.AdInteractionListener ls;
    private final d lx;
    private final boolean ly;
    private boolean lz;
    private AdResultData mAdResultData;
    private final List<AdTemplate> mAdTemplateList;

    /* JADX INFO: renamed from: com.kwad.components.ad.interstitial.aggregate.a$a, reason: collision with other inner class name */
    public interface InterfaceC0797a {
        void dG();
    }

    public interface b {
        void a(com.kwad.components.ad.interstitial.h.c cVar, int i10);
    }

    public a(AdResultData adResultData, d dVar, KsAdVideoPlayConfig ksAdVideoPlayConfig, KsInterstitialAd.AdInteractionListener adInteractionListener) {
        this.mAdTemplateList = new ArrayList();
        this.mAdResultData = adResultData;
        this.lx = dVar;
        this.ce = ksAdVideoPlayConfig;
        this.ls = adInteractionListener;
        this.ly = com.kwad.sdk.core.response.helper.a.cH(e.eO(com.kwad.sdk.core.response.helper.c.r(adResultData))) == 1;
    }

    public final void d(List<AdTemplate> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.mAdTemplateList.clear();
        this.mAdTemplateList.addAll(list);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void destroyItem(@NonNull ViewGroup viewGroup, int i10, Object obj) {
        if (obj instanceof View) {
            viewGroup.removeView((View) obj);
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final int getCount() {
        return this.mAdTemplateList.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @NonNull
    public final Object instantiateItem(@NonNull ViewGroup viewGroup, final int i10) {
        com.kwad.components.ad.interstitial.h.c cVar = new com.kwad.components.ad.interstitial.h.c(viewGroup.getContext());
        viewGroup.addView(cVar);
        cVar.setAggregateAdView(i10 > 0);
        cVar.setAdAggregateClickActionListener(new com.kwad.components.ad.interstitial.f.c.a() { // from class: com.kwad.components.ad.interstitial.aggregate.a.1
            @Override // com.kwad.components.ad.interstitial.f.c.a
            public final void a(long j10, long j11, boolean z10) {
                AdTemplate adTemplate = (AdTemplate) a.this.mAdTemplateList.get(i10);
                if (adTemplate == null) {
                    return;
                }
                if (i10 == 0 && z10) {
                    com.kwad.components.ad.interstitial.report.a.eV().b(adTemplate, j10, j11);
                }
                if (a.this.lB != null) {
                    a.this.lB.dG();
                }
            }
        });
        if (i10 > 0) {
            cVar.setAggregateShowTriggerType(8);
        }
        if (this.lz) {
            cVar.a(this.mAdResultData, this.lx, this.ce, this.ls, i10, this.lC);
        } else {
            cVar.a(this.mAdResultData, this.lx, this.ce, this.ls, i10);
        }
        b bVar = this.lA;
        if (bVar != null) {
            bVar.a(cVar, i10);
        }
        return cVar;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
        return view == obj;
    }

    public final void a(b bVar) {
        this.lA = bVar;
    }

    public final void a(InterfaceC0797a interfaceC0797a) {
        this.lB = interfaceC0797a;
    }

    public a(AdResultData adResultData, d dVar, KsAdVideoPlayConfig ksAdVideoPlayConfig, KsInterstitialAd.AdInteractionListener adInteractionListener, boolean z10) {
        this.mAdTemplateList = new ArrayList();
        this.lz = true;
        this.mAdResultData = adResultData;
        this.lC = z10;
        this.lx = dVar;
        this.ce = ksAdVideoPlayConfig;
        this.ls = adInteractionListener;
        this.ly = com.kwad.sdk.core.response.helper.a.cH(e.eO(com.kwad.sdk.core.response.helper.c.r(adResultData))) == 1;
    }
}
