package com.join.kotlin.module.hmcloud.pad;

import android.content.Context;
import android.graphics.Outline;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import androidx.annotation.DrawableRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.n90;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u000e2\b\b\u0001\u0010\u000f\u001a\u00020\u0010J\u001c\u0010\u0012\u001a\u00020\u000e2\b\b\u0001\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u001a\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00142\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmKeyButtonBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmKeyButtonBinding;", "setBackgroundResource", "", "resid", "", "setImageButton", "setIconButton", "nickname", "", "setTextButton", "name", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class HMButtonView extends FrameLayout {

    @NotNull
    private final n90 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMButtonView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        n90 n90VarInflate = n90.inflate(LayoutInflater.from(getContext()), this, false);
        Intrinsics.checkNotNullExpressionValue(n90VarInflate, "inflate(...)");
        this.binding = n90VarInflate;
        addView(n90VarInflate.getRoot(), -1, -1);
        n90VarInflate.f42229f.setOutlineProvider(new ViewOutlineProvider() { // from class: com.join.kotlin.module.hmcloud.pad.HMButtonView.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                if (outline != null) {
                    outline.setOval(0, 0, view != null ? view.getWidth() : 0, view != null ? view.getHeight() : 0);
                }
            }
        });
        n90VarInflate.f42229f.setClipToOutline(true);
    }

    public static /* synthetic */ void setIconButton$default(HMButtonView hMButtonView, int i10, String str, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setIconButton");
        }
        if ((i11 & 2) != 0) {
            str = null;
        }
        hMButtonView.setIconButton(i10, str);
    }

    public static /* synthetic */ void setTextButton$default(HMButtonView hMButtonView, String str, String str2, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setTextButton");
        }
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        hMButtonView.setTextButton(str, str2);
    }

    @NotNull
    public final n90 getBinding() {
        return this.binding;
    }

    @Override // android.view.View
    public void setBackgroundResource(int resid) {
        this.binding.f42226c.setImageResource(resid);
    }

    public final void setIconButton(@DrawableRes int resid, @Nullable String nickname) {
        n90 n90Var = this.binding;
        n90Var.f42226c.setImageResource(R.drawable.hm_key_empty_selector);
        n90Var.f42229f.setVisibility(0);
        n90Var.f42232i.setVisibility(8);
        n90Var.f42230g.setVisibility(0);
        n90Var.f42230g.setImageResource(resid);
        if (nickname == null) {
            n90Var.f42227d.setVisibility(8);
            ViewGroup.LayoutParams layoutParams = n90Var.f42230g.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
            layoutParams2.verticalBias = 0.5f;
            n90Var.f42230g.setLayoutParams(layoutParams2);
            return;
        }
        n90Var.f42227d.setVisibility(0);
        ViewGroup.LayoutParams layoutParams3 = n90Var.f42230g.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.LayoutParams layoutParams4 = (ConstraintLayout.LayoutParams) layoutParams3;
        layoutParams4.verticalBias = 0.7f;
        n90Var.f42230g.setLayoutParams(layoutParams4);
        n90Var.f42231h.setText(nickname);
    }

    public final void setImageButton(@DrawableRes int resid) {
        n90 n90Var = this.binding;
        n90Var.f42226c.setVisibility(0);
        n90Var.f42226c.setImageResource(resid);
        n90Var.f42229f.setVisibility(8);
    }

    public final void setTextButton(@NotNull String name, @Nullable String nickname) {
        Intrinsics.checkNotNullParameter(name, "name");
        n90 n90Var = this.binding;
        n90Var.f42226c.setImageResource(R.drawable.hm_key_empty_selector);
        n90Var.f42229f.setVisibility(0);
        n90Var.f42230g.setVisibility(8);
        n90Var.f42232i.setVisibility(0);
        if (nickname == null) {
            n90Var.f42227d.setVisibility(8);
            ViewGroup.LayoutParams layoutParams = n90Var.f42232i.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
            layoutParams2.verticalBias = 0.5f;
            n90Var.f42230g.setLayoutParams(layoutParams2);
            n90Var.f42232i.setText(name);
            return;
        }
        n90Var.f42227d.setVisibility(0);
        ViewGroup.LayoutParams layoutParams3 = n90Var.f42232i.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.LayoutParams layoutParams4 = (ConstraintLayout.LayoutParams) layoutParams3;
        layoutParams4.verticalBias = 0.7f;
        n90Var.f42230g.setLayoutParams(layoutParams4);
        n90Var.f42232i.setText(nickname);
        n90Var.f42231h.setText(name);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMButtonView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        n90 n90VarInflate = n90.inflate(LayoutInflater.from(getContext()), this, false);
        Intrinsics.checkNotNullExpressionValue(n90VarInflate, "inflate(...)");
        this.binding = n90VarInflate;
        addView(n90VarInflate.getRoot(), -1, -1);
        n90VarInflate.f42229f.setOutlineProvider(new ViewOutlineProvider() { // from class: com.join.kotlin.module.hmcloud.pad.HMButtonView.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                if (outline != null) {
                    outline.setOval(0, 0, view != null ? view.getWidth() : 0, view != null ? view.getHeight() : 0);
                }
            }
        });
        n90VarInflate.f42229f.setClipToOutline(true);
    }
}
