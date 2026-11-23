package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ga0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38771c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f38772d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f38773e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f38774f;

    private ga0(@NonNull ConstraintLayout rootView, @NonNull ImageView d10, @NonNull ImageView l10, @NonNull ImageView r10, @NonNull ImageView u10) {
        this.f38770b = rootView;
        this.f38771c = d10;
        this.f38772d = l10;
        this.f38773e = r10;
        this.f38774f = u10;
    }

    @NonNull
    public static ga0 bind(@NonNull View rootView) {
        int i10 = R.id.f35457d;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35457d);
        if (imageView != null) {
            i10 = R.id.f35471l;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35471l);
            if (imageView2 != null) {
                i10 = R.id.f35481r;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35481r);
                if (imageView3 != null) {
                    i10 = R.id.f35488u;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35488u);
                    if (imageView4 != null) {
                        return new ga0((ConstraintLayout) rootView, imageView, imageView2, imageView3, imageView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ga0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f38770b;
    }

    @NonNull
    public static ga0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_pad_dpad, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
