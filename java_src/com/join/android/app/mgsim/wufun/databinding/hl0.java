package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class hl0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f39385c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39386d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f39387e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39388f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f39389g;

    private hl0(@NonNull LinearLayout rootView, @NonNull FrameLayout flBtn, @NonNull SimpleDraweeView ivGameIcon, @NonNull ProgressBar loadingProgress, @NonNull TextView tvBtn, @NonNull TextView tvGameName) {
        this.f39384b = rootView;
        this.f39385c = flBtn;
        this.f39386d = ivGameIcon;
        this.f39387e = loadingProgress;
        this.f39388f = tvBtn;
        this.f39389g = tvGameName;
    }

    @NonNull
    public static hl0 bind(@NonNull View rootView) {
        int i10 = R.id.flBtn;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.flBtn);
        if (frameLayout != null) {
            i10 = R.id.ivGameIcon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivGameIcon);
            if (simpleDraweeView != null) {
                i10 = R.id.loading_progress;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.loading_progress);
                if (progressBar != null) {
                    i10 = R.id.tvBtn;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvBtn);
                    if (textView != null) {
                        i10 = R.id.tvGameName;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameName);
                        if (textView2 != null) {
                            return new hl0((LinearLayout) rootView, frameLayout, simpleDraweeView, progressBar, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static hl0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39384b;
    }

    @NonNull
    public static hl0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mgpapa_home_recommend_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
