package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class yd implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f47673c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47674d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47675e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47676f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47677g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f47678h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f47679i;

    private yd(@NonNull ConstraintLayout rootView, @NonNull ImageView ivImage, @NonNull TextView textView103, @NonNull TextView tvOptLeft, @NonNull TextView tvOptRight, @NonNull TextView tvSubTitle, @NonNull View vLine, @NonNull View vLineV) {
        this.f47672b = rootView;
        this.f47673c = ivImage;
        this.f47674d = textView103;
        this.f47675e = tvOptLeft;
        this.f47676f = tvOptRight;
        this.f47677g = tvSubTitle;
        this.f47678h = vLine;
        this.f47679i = vLineV;
    }

    @NonNull
    public static yd bind(@NonNull View rootView) {
        int i10 = R.id.iv_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_image);
        if (imageView != null) {
            i10 = R.id.textView103;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView103);
            if (textView != null) {
                i10 = R.id.tv_opt_left;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_opt_left);
                if (textView2 != null) {
                    i10 = R.id.tv_opt_right;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_opt_right);
                    if (textView3 != null) {
                        i10 = R.id.tv_sub_title;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_sub_title);
                        if (textView4 != null) {
                            i10 = R.id.v_line;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_line);
                            if (viewFindChildViewById != null) {
                                i10 = R.id.v_line_v;
                                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.v_line_v);
                                if (viewFindChildViewById2 != null) {
                                    return new yd((ConstraintLayout) rootView, imageView, textView, textView2, textView3, textView4, viewFindChildViewById, viewFindChildViewById2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static yd inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f47672b;
    }

    @NonNull
    public static yd inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_apk_install_guide, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
