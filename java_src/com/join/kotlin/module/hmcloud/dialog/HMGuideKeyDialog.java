package com.join.kotlin.module.hmcloud.dialog;

import android.content.Context;
import android.graphics.Outline;
import android.os.Bundle;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.hmcloud.HMKeyItem;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u0012\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0019"}, d2 = {"Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;", "Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "themeResId", "", "(Landroid/content/Context;I)V", "img", "Lcom/facebook/drawee/view/SimpleDraweeView;", "getImg", "()Lcom/facebook/drawee/view/SimpleDraweeView;", "setImg", "(Lcom/facebook/drawee/view/SimpleDraweeView;)V", "layoutId", "getLayoutId", "()I", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "setData", "item", "Lcom/join/mgps/dto/hmcloud/HMKeyItem;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HMGuideKeyDialog extends HMGuideKeyBaseDialog {
    public SimpleDraweeView img;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMGuideKeyDialog(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$0(View view) {
    }

    @NotNull
    public final SimpleDraweeView getImg() {
        SimpleDraweeView simpleDraweeView = this.img;
        if (simpleDraweeView != null) {
            return simpleDraweeView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("img");
        return null;
    }

    @Override // com.join.kotlin.module.hmcloud.dialog.HMGuideKeyBaseDialog
    public int getLayoutId() {
        return R.layout.layout_hm_key_guide_3;
    }

    @Override // com.join.kotlin.module.hmcloud.dialog.HMGuideKeyBaseDialog, android.app.Dialog
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setImg((SimpleDraweeView) findViewById(R.id.img));
        getImg().setOutlineProvider(new ViewOutlineProvider() { // from class: com.join.kotlin.module.hmcloud.dialog.HMGuideKeyDialog.onCreate.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                if (outline != null) {
                    outline.setRoundRect(0, 0, view != null ? view.getWidth() : 0, view != null ? view.getHeight() : 0, HMGuideKeyDialog.this.getContext().getResources().getDimension(R.dimen.wdp8));
                }
            }
        });
        getImg().setClipToOutline(true);
        View viewFindViewById = findViewById(R.id.fl_img);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HMGuideKeyDialog.onCreate$lambda$0(view);
            }
        });
    }

    @Override // com.join.kotlin.module.hmcloud.dialog.HMGuideKeyBaseDialog
    public void setData(@NotNull HMKeyItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        super.setData(item);
        HMKeyItem.Guide guide = item.getGuide();
        if (guide != null) {
            com.join.android.app.common.utils.l.o(getImg(), guide.getImg());
        }
    }

    public final void setImg(@NotNull SimpleDraweeView simpleDraweeView) {
        Intrinsics.checkNotNullParameter(simpleDraweeView, "<set-?>");
        this.img = simpleDraweeView;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMGuideKeyDialog(@NotNull Context context, int i10) {
        super(context, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
