package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class dv0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f37642c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37643d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f37644e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f37645f;

    private dv0(@NonNull ConstraintLayout rootView, @NonNull View divider, @NonNull SimpleDraweeView img, @NonNull View ml, @NonNull View mr) {
        this.f37641b = rootView;
        this.f37642c = divider;
        this.f37643d = img;
        this.f37644e = ml;
        this.f37645f = mr;
    }

    @NonNull
    public static dv0 bind(@NonNull View rootView) {
        int i10 = R.id.divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
        if (viewFindChildViewById != null) {
            i10 = R.id.img;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img);
            if (simpleDraweeView != null) {
                i10 = R.id.ml;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.ml);
                if (viewFindChildViewById2 != null) {
                    i10 = R.id.mr;
                    View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.mr);
                    if (viewFindChildViewById3 != null) {
                        return new dv0((ConstraintLayout) rootView, viewFindChildViewById, simpleDraweeView, viewFindChildViewById2, viewFindChildViewById3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static dv0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37641b;
    }

    @NonNull
    public static dv0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.simulator_exit_domain, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
