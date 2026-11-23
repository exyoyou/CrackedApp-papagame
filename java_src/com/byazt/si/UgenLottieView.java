package com.byazt.si;

import android.content.Context;
import com.byazt.ga.LottieAnimationView;
import com.byazt.sa.uj;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 608, 2031})
public class UgenLottieView extends LottieAnimationView {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public uj f19778c;

    public UgenLottieView(Context context) {
        super(context);
    }

    public void c(uj ujVar) {
        this.f19778c = ujVar;
    }

    @Override // com.byazt.ga.LottieAnimationView, android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        uj ujVar = this.f19778c;
        if (ujVar != null) {
            ujVar.n();
        }
    }

    @Override // com.byazt.ga.LottieAnimationView, android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uj ujVar = this.f19778c;
        if (ujVar != null) {
            ujVar.a();
        }
    }
}
