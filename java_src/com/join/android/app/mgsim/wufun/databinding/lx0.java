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
public final class lx0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41596b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f41597c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f41598d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41599e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41600f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f41601g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f41602h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f41603i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41604j;

    private lx0(@NonNull LinearLayout rootView, @NonNull ImageView ivIcon2, @NonNull ImageView ivIcon3, @NonNull LinearLayout llTab2, @NonNull LinearLayout llTab3, @NonNull TextView tvDesc2, @NonNull TextView tvDesc3, @NonNull TextView tvTitle2, @NonNull TextView tvTitle3) {
        this.f41596b = rootView;
        this.f41597c = ivIcon2;
        this.f41598d = ivIcon3;
        this.f41599e = llTab2;
        this.f41600f = llTab3;
        this.f41601g = tvDesc2;
        this.f41602h = tvDesc3;
        this.f41603i = tvTitle2;
        this.f41604j = tvTitle3;
    }

    @NonNull
    public static lx0 bind(@NonNull View rootView) {
        int i10 = R.id.iv_icon_2;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_icon_2);
        if (imageView != null) {
            i10 = R.id.iv_icon_3;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_icon_3);
            if (imageView2 != null) {
                i10 = R.id.ll_tab_2;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_tab_2);
                if (linearLayout != null) {
                    i10 = R.id.ll_tab_3;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_tab_3);
                    if (linearLayout2 != null) {
                        i10 = R.id.tv_desc_2;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_desc_2);
                        if (textView != null) {
                            i10 = R.id.tv_desc_3;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_desc_3);
                            if (textView2 != null) {
                                i10 = R.id.tv_title_2;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title_2);
                                if (textView3 != null) {
                                    i10 = R.id.tv_title_3;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title_3);
                                    if (textView4 != null) {
                                        return new lx0((LinearLayout) rootView, imageView, imageView2, linearLayout, linearLayout2, textView, textView2, textView3, textView4);
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
    public static lx0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41596b;
    }

    @NonNull
    public static lx0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.view_activity_tab_view_two, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
