package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class g00 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CardView f38650c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38651d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38652e;

    private g00(@NonNull ConstraintLayout rootView, @NonNull CardView flIconGameSmall, @NonNull SimpleDraweeView iconGameBig, @NonNull SimpleDraweeView iconGameSmall) {
        this.f38649b = rootView;
        this.f38650c = flIconGameSmall;
        this.f38651d = iconGameBig;
        this.f38652e = iconGameSmall;
    }

    @NonNull
    public static g00 bind(@NonNull View rootView) {
        int i10 = R.id.flIconGameSmall;
        CardView cardView = (CardView) ViewBindings.findChildViewById(rootView, R.id.flIconGameSmall);
        if (cardView != null) {
            i10 = R.id.iconGameBig;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iconGameBig);
            if (simpleDraweeView != null) {
                i10 = R.id.iconGameSmall;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iconGameSmall);
                if (simpleDraweeView2 != null) {
                    return new g00((ConstraintLayout) rootView, cardView, simpleDraweeView, simpleDraweeView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static g00 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f38649b;
    }

    @NonNull
    public static g00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_discovery_paiwei_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
