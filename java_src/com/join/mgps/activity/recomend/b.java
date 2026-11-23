package com.join.mgps.activity.recomend;

import android.view.View;
import com.kingja.loadsir.callback.Callback;
import java.io.Serializable;

/* JADX INFO: loaded from: classes9.dex */
public final /* synthetic */ class b implements Callback.OnReloadListener, Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RecommendActivityV1 f57971b;

    public /* synthetic */ b(RecommendActivityV1 recommendActivityV1) {
        this.f57971b = recommendActivityV1;
    }

    @Override // com.kingja.loadsir.callback.Callback.OnReloadListener
    public final void onReload(View view) {
        this.f57971b.lambda$afterView$364e49b8$1(view);
    }
}
