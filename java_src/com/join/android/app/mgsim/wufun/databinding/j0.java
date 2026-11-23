package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class j0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f40013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f40014c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f40015d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40016e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f40017f;

    private j0(@NonNull ConstraintLayout rootView, @NonNull ImageView backImg, @NonNull FrameLayout flContent, @NonNull RelativeLayout rlBar, @NonNull ImageView titleTv) {
        this.f40013b = rootView;
        this.f40014c = backImg;
        this.f40015d = flContent;
        this.f40016e = rlBar;
        this.f40017f = titleTv;
    }

    @NonNull
    public static j0 bind(@NonNull View rootView) {
        int i10 = R.id.backImg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.backImg);
        if (imageView != null) {
            i10 = R.id.flContent;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.flContent);
            if (frameLayout != null) {
                i10 = R.id.rl_bar;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_bar);
                if (relativeLayout != null) {
                    i10 = R.id.titleTv;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.titleTv);
                    if (imageView2 != null) {
                        return new j0((ConstraintLayout) rootView, imageView, frameLayout, relativeLayout, imageView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static j0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f40013b;
    }

    @NonNull
    public static j0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_daily_find, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
