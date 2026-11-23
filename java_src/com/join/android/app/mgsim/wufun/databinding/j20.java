package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class j20 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f40051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f40052c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40053d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f40054e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40055f;

    private j20(@NonNull ConstraintLayout rootView, @NonNull ImageView imageView79, @NonNull TextView itemGameMainNameTx, @NonNull ConstraintLayout itemGameMainNewRootRl, @NonNull TextView itemGameMainTipTv) {
        this.f40051b = rootView;
        this.f40052c = imageView79;
        this.f40053d = itemGameMainNameTx;
        this.f40054e = itemGameMainNewRootRl;
        this.f40055f = itemGameMainTipTv;
    }

    @NonNull
    public static j20 bind(@NonNull View rootView) {
        int i10 = R.id.imageView79;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView79);
        if (imageView != null) {
            i10 = R.id.itemGameMainNameTx;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.itemGameMainNameTx);
            if (textView != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
                i10 = R.id.itemGameMainTipTv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.itemGameMainTipTv);
                if (textView2 != null) {
                    return new j20(constraintLayout, imageView, textView, constraintLayout, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static j20 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f40051b;
    }

    @NonNull
    public static j20 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_main_new_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
