package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class n20 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42166c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42167d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42168e;

    private n20(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView itemGameRecommendIv, @NonNull LinearLayout itemGameRecommendRootLl, @NonNull TextView itemGameRecommendTx) {
        this.f42165b = rootView;
        this.f42166c = itemGameRecommendIv;
        this.f42167d = itemGameRecommendRootLl;
        this.f42168e = itemGameRecommendTx;
    }

    @NonNull
    public static n20 bind(@NonNull View rootView) {
        int i10 = R.id.itemGameRecommendIv;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.itemGameRecommendIv);
        if (simpleDraweeView != null) {
            LinearLayout linearLayout = (LinearLayout) rootView;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.itemGameRecommendTx);
            if (textView != null) {
                return new n20(linearLayout, simpleDraweeView, linearLayout, textView);
            }
            i10 = R.id.itemGameRecommendTx;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static n20 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42165b;
    }

    @NonNull
    public static n20 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_recommend_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
