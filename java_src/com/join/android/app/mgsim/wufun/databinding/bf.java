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
public final class bf implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36362c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f36363d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f36364e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36365f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36366g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f36367h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36368i;

    private bf(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout cl, @NonNull ImageView ivIcon, @NonNull TextView tvConfirm, @NonNull TextView tvContent, @NonNull TextView tvNegative, @NonNull TextView tvPositive, @NonNull TextView tvTitle) {
        this.f36361b = rootView;
        this.f36362c = cl;
        this.f36363d = ivIcon;
        this.f36364e = tvConfirm;
        this.f36365f = tvContent;
        this.f36366g = tvNegative;
        this.f36367h = tvPositive;
        this.f36368i = tvTitle;
    }

    @NonNull
    public static bf bind(@NonNull View rootView) {
        int i10 = R.id.cl;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl);
        if (constraintLayout != null) {
            i10 = R.id.ivIcon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivIcon);
            if (imageView != null) {
                i10 = R.id.tvConfirm;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvConfirm);
                if (textView != null) {
                    i10 = R.id.tvContent;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvContent);
                    if (textView2 != null) {
                        i10 = R.id.tvNegative;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvNegative);
                        if (textView3 != null) {
                            i10 = R.id.tvPositive;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvPositive);
                            if (textView4 != null) {
                                i10 = R.id.tvTitle;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitle);
                                if (textView5 != null) {
                                    return new bf((ConstraintLayout) rootView, constraintLayout, imageView, textView, textView2, textView3, textView4, textView5);
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
    public static bf inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f36361b;
    }

    @NonNull
    public static bf inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_device_incompatible, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
