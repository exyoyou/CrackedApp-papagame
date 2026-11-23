package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class jx0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f40474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f40475d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40476e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40477f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40478g;

    private jx0(@NonNull LinearLayout rootView, @NonNull ImageView imageView5, @NonNull ImageView ivIcon1, @NonNull LinearLayout llTab1, @NonNull TextView tvDesc1, @NonNull TextView tvTitle1) {
        this.f40473b = rootView;
        this.f40474c = imageView5;
        this.f40475d = ivIcon1;
        this.f40476e = llTab1;
        this.f40477f = tvDesc1;
        this.f40478g = tvTitle1;
    }

    @NonNull
    public static jx0 bind(@NonNull View rootView) {
        int i10 = R.id.imageView5;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView5);
        if (imageView != null) {
            i10 = R.id.iv_icon_1;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_icon_1);
            if (imageView2 != null) {
                i10 = R.id.ll_tab_1;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_tab_1);
                if (linearLayout != null) {
                    i10 = R.id.tv_desc_1;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_desc_1);
                    if (textView != null) {
                        i10 = R.id.tv_title_1;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title_1);
                        if (textView2 != null) {
                            return new jx0((LinearLayout) rootView, imageView, imageView2, linearLayout, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static jx0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40473b;
    }

    @NonNull
    public static jx0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.view_activity_tab_view_one, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
