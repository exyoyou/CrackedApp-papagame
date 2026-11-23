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
public final class vc0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f46197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46198c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46199d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46200e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46201f;

    private vc0(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView ivIcon, @NonNull SimpleDraweeView ivPoster, @NonNull TextView tvGameName, @NonNull TextView tvTags) {
        this.f46197b = rootView;
        this.f46198c = ivIcon;
        this.f46199d = ivPoster;
        this.f46200e = tvGameName;
        this.f46201f = tvTags;
    }

    @NonNull
    public static vc0 bind(@NonNull View rootView) {
        int i10 = R.id.ivIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivIcon);
        if (simpleDraweeView != null) {
            i10 = R.id.ivPoster;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivPoster);
            if (simpleDraweeView2 != null) {
                i10 = R.id.tvGameName;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameName);
                if (textView != null) {
                    i10 = R.id.tvTags;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTags);
                    if (textView2 != null) {
                        return new vc0((ConstraintLayout) rootView, simpleDraweeView, simpleDraweeView2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static vc0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f46197b;
    }

    @NonNull
    public static vc0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_simulator_recom_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
