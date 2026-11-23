package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class bh implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f36389b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36390c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36391d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36392e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36393f;

    private bh(@NonNull FrameLayout rootView, @NonNull TextView btnNegative, @NonNull TextView btnPositive, @NonNull SimpleDraweeView imgPositive, @NonNull SimpleDraweeView ivPic) {
        this.f36389b = rootView;
        this.f36390c = btnNegative;
        this.f36391d = btnPositive;
        this.f36392e = imgPositive;
        this.f36393f = ivPic;
    }

    @NonNull
    public static bh bind(@NonNull View rootView) {
        int i10 = R.id.btnNegative;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.btnNegative);
        if (textView != null) {
            i10 = R.id.btnPositive;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.btnPositive);
            if (textView2 != null) {
                i10 = R.id.imgPositive;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.imgPositive);
                if (simpleDraweeView != null) {
                    i10 = R.id.ivPic;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivPic);
                    if (simpleDraweeView2 != null) {
                        return new bh((FrameLayout) rootView, textView, textView2, simpleDraweeView, simpleDraweeView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f36389b;
    }

    @NonNull
    public static bh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_mod_launch_domain, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
