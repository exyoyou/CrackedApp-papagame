package com.beizi.ad.v2.h;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.beizi.ad.internal.f;
import com.beizi.ad.model.k;

/* JADX INFO: loaded from: classes6.dex */
public class a extends com.beizi.ad.v2.a.a {
    public a(Context context, String str, int i10) {
        this.f9677a = new c(context, str, i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 6 ? null : f.NATIVE : f.INTERSTITIAL : f.NEW_SPLASH : f.REWARDEDVIDEO);
    }

    public void a(b bVar) {
        com.beizi.ad.v2.a.b bVar2 = this.f9677a;
        if (bVar2 != null && (bVar2 instanceof c)) {
            ((c) bVar2).a(bVar);
        }
    }

    public void a(View view) {
        com.beizi.ad.v2.a.b bVar = this.f9677a;
        if (bVar != null && (bVar instanceof c)) {
            ((c) bVar).a(view);
        }
    }

    public void a(ViewGroup viewGroup, k kVar) {
        com.beizi.ad.v2.a.b bVar = this.f9677a;
        if (bVar != null && (bVar instanceof c)) {
            ((c) bVar).a(viewGroup, kVar);
        }
    }

    public void a(ViewGroup viewGroup, int i10) {
        com.beizi.ad.v2.a.b bVar = this.f9677a;
        if (bVar != null && (bVar instanceof c)) {
            ((c) bVar).a(viewGroup, i10);
        }
    }
}
