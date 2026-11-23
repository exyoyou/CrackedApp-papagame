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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ut implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f45880c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45881d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45882e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45883f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45884g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45885h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45886i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f45887j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f45888k;

    private ut(@NonNull LinearLayout rootView, @NonNull TextView follow, @NonNull LinearLayout iconLayout, @NonNull LinearLayout llFooter, @NonNull LinearLayout main, @NonNull TextView name, @NonNull TextView number, @NonNull SimpleDraweeView sdvTopCover, @NonNull TextView title, @NonNull TextView tvDot) {
        this.f45879b = rootView;
        this.f45880c = follow;
        this.f45881d = iconLayout;
        this.f45882e = llFooter;
        this.f45883f = main;
        this.f45884g = name;
        this.f45885h = number;
        this.f45886i = sdvTopCover;
        this.f45887j = title;
        this.f45888k = tvDot;
    }

    @NonNull
    public static ut bind(@NonNull View rootView) {
        int i10 = R.id.follow;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.follow);
        if (textView != null) {
            i10 = R.id.iconLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iconLayout);
            if (linearLayout != null) {
                i10 = R.id.ll_footer;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_footer);
                if (linearLayout2 != null) {
                    LinearLayout linearLayout3 = (LinearLayout) rootView;
                    i10 = R.id.name;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                    if (textView2 != null) {
                        i10 = R.id.number;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.number);
                        if (textView3 != null) {
                            i10 = R.id.sdv_top_cover;
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_top_cover);
                            if (simpleDraweeView != null) {
                                i10 = R.id.title;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                if (textView4 != null) {
                                    i10 = R.id.tv_dot;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_dot);
                                    if (textView5 != null) {
                                        return new ut(linearLayout3, textView, linearLayout, linearLayout2, linearLayout3, textView2, textView3, simpleDraweeView, textView4, textView5);
                                    }
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
    public static ut inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45879b;
    }

    @NonNull
    public static ut inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamelist_list_itemhome, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
