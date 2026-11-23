package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class iw0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f39958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39959c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f39960d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f39961e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f39962f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39963g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f39964h;

    private iw0(@NonNull RelativeLayout rootView, @NonNull ImageView backImage, @NonNull Button btnSubmit, @NonNull ImageView ivPostingLocation, @NonNull ImageView ivPostingSelect, @NonNull LinearLayout llTopCenter, @NonNull TextView tvPostingGroup) {
        this.f39958b = rootView;
        this.f39959c = backImage;
        this.f39960d = btnSubmit;
        this.f39961e = ivPostingLocation;
        this.f39962f = ivPostingSelect;
        this.f39963g = llTopCenter;
        this.f39964h = tvPostingGroup;
    }

    @NonNull
    public static iw0 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.btnSubmit;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btnSubmit);
            if (button != null) {
                i10 = R.id.iv_posting_location;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_posting_location);
                if (imageView2 != null) {
                    i10 = R.id.iv_posting_select;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_posting_select);
                    if (imageView3 != null) {
                        i10 = R.id.ll_top_center;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_top_center);
                        if (linearLayout != null) {
                            i10 = R.id.tv_posting_group;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_posting_group);
                            if (textView != null) {
                                return new iw0((RelativeLayout) rootView, imageView, button, imageView2, imageView3, linearLayout, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static iw0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f39958b;
    }

    @NonNull
    public static iw0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.topbar_posting_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
