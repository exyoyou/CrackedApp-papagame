package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ClipImageLayout;
import com.join.mgps.customview.LoadingImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class cc implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ClipImageLayout f36865c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LoadingImageView f36866d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36867e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36868f;

    private cc(@NonNull LinearLayout rootView, @NonNull ClipImageLayout idClipImageLayout, @NonNull LoadingImageView loadingView, @NonNull LinearLayout lodingLayout, @NonNull TextView textView2) {
        this.f36864b = rootView;
        this.f36865c = idClipImageLayout;
        this.f36866d = loadingView;
        this.f36867e = lodingLayout;
        this.f36868f = textView2;
    }

    @NonNull
    public static cc bind(@NonNull View rootView) {
        int i10 = R.id.id_clipImageLayout;
        ClipImageLayout clipImageLayout = (ClipImageLayout) ViewBindings.findChildViewById(rootView, R.id.id_clipImageLayout);
        if (clipImageLayout != null) {
            i10 = R.id.loading_view;
            LoadingImageView loadingImageView = (LoadingImageView) ViewBindings.findChildViewById(rootView, R.id.loading_view);
            if (loadingImageView != null) {
                i10 = R.id.loding_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loding_layout);
                if (linearLayout != null) {
                    i10 = R.id.textView2;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView2);
                    if (textView != null) {
                        return new cc((LinearLayout) rootView, clipImageLayout, loadingImageView, linearLayout, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cc inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36864b;
    }

    @NonNull
    public static cc inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.crop_pic_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
