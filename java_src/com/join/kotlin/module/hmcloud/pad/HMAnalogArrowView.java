package com.join.kotlin.module.hmcloud.pad;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.ea0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0014J\u0016\u0010\u0012\u001a\u00020\u000e2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0014R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, d2 = {"Lcom/join/kotlin/module/hmcloud/pad/HMAnalogArrowView;", "Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadAnalogWasdBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadAnalogWasdBinding;", "onTranslationUi", "", "x", "", "y", "onDirectionUi", "directions", "", "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HMAnalogArrowView extends HMControllerView {

    @NotNull
    private final ea0 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMAnalogArrowView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        ea0 ea0VarInflate = ea0.inflate(LayoutInflater.from(getContext()), this, false);
        Intrinsics.checkNotNullExpressionValue(ea0VarInflate, "inflate(...)");
        this.binding = ea0VarInflate;
        addView(ea0VarInflate.getRoot(), -1, -1);
        ea0VarInflate.getRoot().post(new Runnable() { // from class: com.join.kotlin.module.hmcloud.pad.b
            @Override // java.lang.Runnable
            public final void run() {
                HMAnalogArrowView._init_$lambda$0(this.f48804b);
            }
        });
        ea0VarInflate.f37868i.setImageResource(R.drawable.hm_ana_arr_u_selector);
        ea0VarInflate.f37862c.setImageResource(R.drawable.hm_ana_arr_l_selector);
        ea0VarInflate.f37865f.setImageResource(R.drawable.hm_ana_arr_d_selector);
        ea0VarInflate.f37864e.setImageResource(R.drawable.hm_ana_arr_r_selector);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(HMAnalogArrowView hMAnalogArrowView) {
        hMAnalogArrowView.setMaxTranslation((hMAnalogArrowView.binding.f37867h.getMeasuredWidth() - hMAnalogArrowView.binding.f37866g.getMeasuredWidth()) / 2);
    }

    @NotNull
    public final ea0 getBinding() {
        return this.binding;
    }

    @Override // com.join.kotlin.module.hmcloud.pad.HMControllerView
    protected void onDirectionUi(@NotNull List<? extends HMDpadDirection> directions) {
        Intrinsics.checkNotNullParameter(directions, "directions");
        ea0 ea0Var = this.binding;
        ea0Var.f37868i.setSelected(directions.contains(HMDpadDirection.Up));
        ea0Var.f37862c.setSelected(directions.contains(HMDpadDirection.Left));
        ea0Var.f37865f.setSelected(directions.contains(HMDpadDirection.Down));
        ea0Var.f37864e.setSelected(directions.contains(HMDpadDirection.Right));
    }

    @Override // com.join.kotlin.module.hmcloud.pad.HMControllerView
    protected void onTranslationUi(float x10, float y10) {
        ea0 ea0Var = this.binding;
        ea0Var.f37866g.setTranslationX(x10);
        ea0Var.f37866g.setTranslationY(y10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMAnalogArrowView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        ea0 ea0VarInflate = ea0.inflate(LayoutInflater.from(getContext()), this, false);
        Intrinsics.checkNotNullExpressionValue(ea0VarInflate, "inflate(...)");
        this.binding = ea0VarInflate;
        addView(ea0VarInflate.getRoot(), -1, -1);
        ea0VarInflate.getRoot().post(new Runnable() { // from class: com.join.kotlin.module.hmcloud.pad.b
            @Override // java.lang.Runnable
            public final void run() {
                HMAnalogArrowView._init_$lambda$0(this.f48804b);
            }
        });
        ea0VarInflate.f37868i.setImageResource(R.drawable.hm_ana_arr_u_selector);
        ea0VarInflate.f37862c.setImageResource(R.drawable.hm_ana_arr_l_selector);
        ea0VarInflate.f37865f.setImageResource(R.drawable.hm_ana_arr_d_selector);
        ea0VarInflate.f37864e.setImageResource(R.drawable.hm_ana_arr_r_selector);
    }
}
