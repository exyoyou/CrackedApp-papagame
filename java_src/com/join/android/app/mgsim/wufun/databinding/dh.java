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
public final class dh implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37481c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37482d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37483e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37484f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f37485g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f37486h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f37487i;

    private dh(@NonNull LinearLayout rootView, @NonNull ImageView ivClose, @NonNull LinearLayout llModDownload, @NonNull TextView tvDesc, @NonNull TextView tvModOptLeft, @NonNull TextView tvModOptRight, @NonNull TextView tvModTitle, @NonNull TextView tvTitle) {
        this.f37480b = rootView;
        this.f37481c = ivClose;
        this.f37482d = llModDownload;
        this.f37483e = tvDesc;
        this.f37484f = tvModOptLeft;
        this.f37485g = tvModOptRight;
        this.f37486h = tvModTitle;
        this.f37487i = tvTitle;
    }

    @NonNull
    public static dh bind(@NonNull View rootView) {
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
                                    return new dh((LinearLayout) rootView, imageView, linearLayout, textView, textView2, textView3, textView4, textView5);
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
    public static dh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37480b;
    }

    @NonNull
    public static dh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_mod_prompt, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
