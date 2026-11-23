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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class bb0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f36321c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f36322d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36323e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f36324f;

    private bb0(@NonNull ConstraintLayout rootView, @NonNull ImageView close, @NonNull View left, @NonNull SimpleDraweeView pic, @NonNull View right) {
        this.f36320b = rootView;
        this.f36321c = close;
        this.f36322d = left;
        this.f36323e = pic;
        this.f36324f = right;
    }

    @NonNull
    public static bb0 bind(@NonNull View rootView) {
        int i10 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
        if (imageView != null) {
            i10 = R.id.left;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.left);
            if (viewFindChildViewById != null) {
                i10 = R.id.pic;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.pic);
                if (simpleDraweeView != null) {
                    i10 = R.id.right;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.right);
                    if (viewFindChildViewById2 != null) {
                        return new bb0((ConstraintLayout) rootView, imageView, viewFindChildViewById, simpleDraweeView, viewFindChildViewById2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bb0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f36320b;
    }

    @NonNull
    public static bb0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_page_update_feature, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
