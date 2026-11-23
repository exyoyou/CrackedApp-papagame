package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class wx0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47009b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f47010c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47011d;

    private wx0(@NonNull RelativeLayout rootView, @NonNull ImageView ivNoData, @NonNull TextView tvNoData) {
        this.f47009b = rootView;
        this.f47010c = ivNoData;
        this.f47011d = tvNoData;
    }

    @NonNull
    public static wx0 bind(@NonNull View rootView) {
        int i10 = R.id.iv_no_data;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_no_data);
        if (imageView != null) {
            i10 = R.id.tv_no_data;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_no_data);
            if (textView != null) {
                return new wx0((RelativeLayout) rootView, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wx0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47009b;
    }

    @NonNull
    public static wx0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.view_rv_list_empty, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
