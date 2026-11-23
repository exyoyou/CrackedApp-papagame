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
import com.join.mgps.customview.LoadingImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class le0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41288b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LoadingImageView f41289c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41290d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41291e;

    private le0(@NonNull LinearLayout rootView, @NonNull LoadingImageView loadingViewDetail, @NonNull LinearLayout lodingLayoutDetail, @NonNull TextView textView2) {
        this.f41288b = rootView;
        this.f41289c = loadingViewDetail;
        this.f41290d = lodingLayoutDetail;
        this.f41291e = textView2;
    }

    @NonNull
    public static le0 bind(@NonNull View rootView) {
        int i10 = R.id.loading_view_detail;
        LoadingImageView loadingImageView = (LoadingImageView) ViewBindings.findChildViewById(rootView, R.id.loading_view_detail);
        if (loadingImageView != null) {
            LinearLayout linearLayout = (LinearLayout) rootView;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView2);
            if (textView != null) {
                return new le0(linearLayout, loadingImageView, linearLayout, textView);
            }
            i10 = R.id.textView2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static le0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41288b;
    }

    @NonNull
    public static le0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.loding_layout_include_detail, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
