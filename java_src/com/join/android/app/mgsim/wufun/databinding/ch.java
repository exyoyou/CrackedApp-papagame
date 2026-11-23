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
public final class ch implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f36925c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36926d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f36927e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36928f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36929g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f36930h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36931i;

    private ch(@NonNull LinearLayout rootView, @NonNull ImageView ivClose, @NonNull LinearLayout llModDownload, @NonNull TextView tvDesc, @NonNull TextView tvModOptLeft, @NonNull TextView tvModOptRight, @NonNull TextView tvModTitle, @NonNull TextView tvTitle) {
        this.f36924b = rootView;
        this.f36925c = ivClose;
        this.f36926d = llModDownload;
        this.f36927e = tvDesc;
        this.f36928f = tvModOptLeft;
        this.f36929g = tvModOptRight;
        this.f36930h = tvModTitle;
        this.f36931i = tvTitle;
    }

    @NonNull
    public static ch bind(@NonNull View rootView) {
        int i10 = R.id.ivClose;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivClose);
        if (imageView != null) {
            i10 = R.id.ll_mod_download;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_mod_download);
            if (linearLayout != null) {
                i10 = R.id.tv_desc;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_desc);
                if (textView != null) {
                    i10 = R.id.tv_mod_opt_left;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_mod_opt_left);
                    if (textView2 != null) {
                        i10 = R.id.tv_mod_opt_right;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_mod_opt_right);
                        if (textView3 != null) {
                            i10 = R.id.tv_mod_title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_mod_title);
                            if (textView4 != null) {
                                i10 = R.id.tv_title;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                                if (textView5 != null) {
                                    return new ch((LinearLayout) rootView, imageView, linearLayout, textView, textView2, textView3, textView4, textView5);
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
    public static ch inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36924b;
    }

    @NonNull
    public static ch inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_mod_prompt1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
