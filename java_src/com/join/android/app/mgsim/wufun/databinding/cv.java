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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class cv implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f37114c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f37115d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f37116e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37117f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f37118g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f37119h;

    private cv(@NonNull ConstraintLayout rootView, @NonNull FrameLayout ivDelete, @NonNull ImageView ivInUse, @NonNull ImageView ivOfficial, @NonNull LinearLayout llContent, @NonNull TextView tvName, @NonNull TextView tvUse) {
        this.f37113b = rootView;
        this.f37114c = ivDelete;
        this.f37115d = ivInUse;
        this.f37116e = ivOfficial;
        this.f37117f = llContent;
        this.f37118g = tvName;
        this.f37119h = tvUse;
    }

    @NonNull
    public static cv bind(@NonNull View rootView) {
        int i10 = R.id.iv_delete;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.iv_delete);
        if (frameLayout != null) {
            i10 = R.id.iv_in_use;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_in_use);
            if (imageView != null) {
                i10 = R.id.iv_official;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_official);
                if (imageView2 != null) {
                    i10 = R.id.ll_content;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_content);
                    if (linearLayout != null) {
                        i10 = R.id.tv_name;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_name);
                        if (textView != null) {
                            i10 = R.id.tv_use;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_use);
                            if (textView2 != null) {
                                return new cv((ConstraintLayout) rootView, frameLayout, imageView, imageView2, linearLayout, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cv inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37113b;
    }

    @NonNull
    public static cv inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.hm_op_template_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
