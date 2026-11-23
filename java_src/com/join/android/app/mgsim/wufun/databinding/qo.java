package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qo implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f43944f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f43945g;

    private qo(@NonNull ConstraintLayout rootView, @NonNull TextView editText5, @NonNull ImageView imageView44, @NonNull LinearLayout llEmpty, @NonNull NestedScrollView nes, @NonNull XRecyclerView recyclerView) {
        this.f43940b = rootView;
        this.f43941c = editText5;
        this.f43942d = imageView44;
        this.f43943e = llEmpty;
        this.f43944f = nes;
        this.f43945g = recyclerView;
    }

    @NonNull
    public static qo bind(@NonNull View rootView) {
        int i10 = R.id.editText5;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.editText5);
        if (textView != null) {
            i10 = R.id.imageView44;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView44);
            if (imageView != null) {
                i10 = R.id.ll_empty;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_empty);
                if (linearLayout != null) {
                    i10 = R.id.nes;
                    NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(rootView, R.id.nes);
                    if (nestedScrollView != null) {
                        i10 = R.id.recyclerView;
                        XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerView);
                        if (xRecyclerView != null) {
                            return new qo((ConstraintLayout) rootView, textView, imageView, linearLayout, nestedScrollView, xRecyclerView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qo inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43940b;
    }

    @NonNull
    public static qo inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_simulator_launch_moment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
