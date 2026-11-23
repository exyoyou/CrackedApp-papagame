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
public final class k80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f40650b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f40651c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40652d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f40653e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f40654f;

    private k80(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout clRoot, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tabText, @NonNull View v10) {
        this.f40650b = rootView;
        this.f40651c = clRoot;
        this.f40652d = sdvImage;
        this.f40653e = tabText;
        this.f40654f = v10;
    }

    @NonNull
    public static k80 bind(@NonNull View rootView) {
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
                    return new k80(constraintLayout, constraintLayout, simpleDraweeView, textView, viewFindChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static k80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f40650b;
    }

    @NonNull
    public static k80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_custom_tab_find_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
