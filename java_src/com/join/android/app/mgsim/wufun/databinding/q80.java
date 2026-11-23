package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class q80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f43723c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43725e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f43726f;

    private q80(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout clRoot, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tabText, @NonNull View v10) {
        this.f43722b = rootView;
        this.f43723c = clRoot;
        this.f43724d = sdvImage;
        this.f43725e = tabText;
        this.f43726f = v10;
    }

    @NonNull
    public static q80 bind(@NonNull View rootView) {
        ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
        int i10 = R.id.sdv_image;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
        if (simpleDraweeView != null) {
            i10 = R.id.tabText;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tabText);
            if (textView != null) {
                i10 = R.id.v_1;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_1);
                if (viewFindChildViewById != null) {
                    return new q80(constraintLayout, constraintLayout, simpleDraweeView, textView, viewFindChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static q80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43722b;
    }

    @NonNull
    public static q80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_custom_tab_net_game_category, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
