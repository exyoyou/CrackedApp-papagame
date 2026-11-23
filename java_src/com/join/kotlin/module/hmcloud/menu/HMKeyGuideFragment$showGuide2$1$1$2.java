package com.join.kotlin.module.hmcloud.menu;

import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.q90;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0014\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\r\u001a\u00020\u0005H\u0016J\b\u0010\u000e\u001a\u00020\u0005H\u0016J\b\u0010\u000f\u001a\u00020\u0005H\u0016J\b\u0010\u0010\u001a\u00020\u0005H\u0016R#\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"com/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2", "Lcom/join/mgps/customview/guideview/Component;", "loadGif", "Lkotlin/Function2;", "Lcom/facebook/drawee/view/SimpleDraweeView;", "", "", "getLoadGif", "()Lkotlin/jvm/functions/Function2;", "getView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "getAnchor", "getFitPosition", "getXOffset", "getYOffset", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HMKeyGuideFragment$showGuide2$1$1$2 implements com.join.mgps.customview.guideview.b {
    final /* synthetic */ boolean $flipH;
    final /* synthetic */ boolean $flipV;
    final /* synthetic */ float $hPaddingDp;
    private final Function2<SimpleDraweeView, Integer, Unit> loadGif = new Function2() { // from class: com.join.kotlin.module.hmcloud.menu.m
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return HMKeyGuideFragment$showGuide2$1$1$2.loadGif$lambda$0((SimpleDraweeView) obj, ((Integer) obj2).intValue());
        }
    };

    HMKeyGuideFragment$showGuide2$1$1$2(boolean z10, boolean z11, float f10) {
        this.$flipH = z10;
        this.$flipV = z11;
        this.$hPaddingDp = f10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadGif$lambda$0(SimpleDraweeView v10, int i10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        v10.setController(Fresco.newDraweeControllerBuilder().N(ImageRequestBuilder.w(i10).a()).F(true).build());
        return Unit.INSTANCE;
    }

    @Override // com.join.mgps.customview.guideview.b
    public int getAnchor() {
        return this.$flipH ? 3 : 1;
    }

    @Override // com.join.mgps.customview.guideview.b
    public int getFitPosition() {
        return 16;
    }

    public final Function2<SimpleDraweeView, Integer, Unit> getLoadGif() {
        return this.loadGif;
    }

    @Override // com.join.mgps.customview.guideview.b
    public View getView(LayoutInflater inflater) {
        if (inflater == null) {
            return null;
        }
        q90 q90VarInflate = q90.inflate(inflater, null, false);
        Intrinsics.checkNotNullExpressionValue(q90VarInflate, "inflate(...)");
        Function2<SimpleDraweeView, Integer, Unit> function2 = this.loadGif;
        SimpleDraweeView img = q90VarInflate.f43731c;
        Intrinsics.checkNotNullExpressionValue(img, "img");
        function2.invoke(img, Integer.valueOf(R.drawable.hm_g_finger));
        ConstraintLayout root = q90VarInflate.getRoot();
        boolean z10 = this.$flipH;
        boolean z11 = this.$flipV;
        if (z10) {
            root.setRotationY(180.0f);
        }
        if (z11) {
            root.setRotationX(180.0f);
        }
        return q90VarInflate.getRoot();
    }

    @Override // com.join.mgps.customview.guideview.b
    public int getXOffset() {
        return 0;
    }

    @Override // com.join.mgps.customview.guideview.b
    public int getYOffset() {
        return this.$flipV ? -((int) this.$hPaddingDp) : (int) this.$hPaddingDp;
    }
}
