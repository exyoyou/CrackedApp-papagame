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
public final class da0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37349c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f37350d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f37351e;

    private da0(@NonNull ConstraintLayout rootView, @NonNull ImageView bg, @NonNull ImageView stick, @NonNull View stickEdge) {
        this.f37348b = rootView;
        this.f37349c = bg;
        this.f37350d = stick;
        this.f37351e = stickEdge;
    }

    @NonNull
    public static da0 bind(@NonNull View rootView) {
        int i10 = R.id.bg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.bg);
        if (imageView != null) {
            i10 = R.id.stick;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.stick);
            if (imageView2 != null) {
                i10 = R.id.stick_edge;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.stick_edge);
                if (viewFindChildViewById != null) {
                    return new da0((ConstraintLayout) rootView, imageView, imageView2, viewFindChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static da0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37348b;
    }

    @NonNull
    public static da0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_pad_analog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
