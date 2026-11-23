package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class hg implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39320c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RecyclerView f39321d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f39322e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final FrameLayout f39323f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f39324g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f39325h;

    private hg(@NonNull LinearLayout rootView, @NonNull ImageView ivClose, @NonNull RecyclerView rvTemplate, @NonNull ConstraintLayout templateDemoContainer, @NonNull FrameLayout templateHolder, @NonNull ImageView templatePlaceholder, @NonNull TextView tvTip) {
        this.f39319b = rootView;
        this.f39320c = ivClose;
        this.f39321d = rvTemplate;
        this.f39322e = templateDemoContainer;
        this.f39323f = templateHolder;
        this.f39324g = templatePlaceholder;
        this.f39325h = tvTip;
    }

    @NonNull
    public static hg bind(@NonNull View rootView) {
        int i10 = R.id.ivClose;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivClose);
        if (imageView != null) {
            i10 = R.id.rvTemplate;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvTemplate);
            if (recyclerView != null) {
                i10 = R.id.template_demo_container;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.template_demo_container);
                if (constraintLayout != null) {
                    i10 = R.id.template_holder;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.template_holder);
                    if (frameLayout != null) {
                        i10 = R.id.template_placeholder;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.template_placeholder);
                        if (imageView2 != null) {
                            i10 = R.id.tvTip;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTip);
                            if (textView != null) {
                                return new hg((LinearLayout) rootView, imageView, recyclerView, constraintLayout, frameLayout, imageView2, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static hg inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39319b;
    }

    @NonNull
    public static hg inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_hm_op_template, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
