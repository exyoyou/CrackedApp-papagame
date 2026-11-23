package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
public final class kx0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41042b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f41043c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f41044d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f41045e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41046f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41047g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41048h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f41049i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41050j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f41051k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f41052l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f41053m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f41054n;

    private kx0(@NonNull RelativeLayout rootView, @NonNull ImageView ivIcon1, @NonNull ImageView ivIcon2, @NonNull ImageView ivIcon3, @NonNull LinearLayout llTab1, @NonNull LinearLayout llTab2, @NonNull LinearLayout llTab3, @NonNull TextView tvDesc1, @NonNull TextView tvDesc2, @NonNull TextView tvDesc3, @NonNull TextView tvTitle1, @NonNull TextView tvTitle2, @NonNull TextView tvTitle3) {
        this.f41042b = rootView;
        this.f41043c = ivIcon1;
        this.f41044d = ivIcon2;
        this.f41045e = ivIcon3;
        this.f41046f = llTab1;
        this.f41047g = llTab2;
        this.f41048h = llTab3;
        this.f41049i = tvDesc1;
        this.f41050j = tvDesc2;
        this.f41051k = tvDesc3;
        this.f41052l = tvTitle1;
        this.f41053m = tvTitle2;
        this.f41054n = tvTitle3;
    }

    @NonNull
    public static kx0 bind(@NonNull View rootView) {
        int i10 = R.id.iv_icon_1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_icon_1);
        if (imageView != null) {
            i10 = R.id.iv_icon_2;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_icon_2);
            if (imageView2 != null) {
                i10 = R.id.iv_icon_3;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_icon_3);
                if (imageView3 != null) {
                    i10 = R.id.ll_tab_1;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_tab_1);
                    if (linearLayout != null) {
                        i10 = R.id.ll_tab_2;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_tab_2);
                        if (linearLayout2 != null) {
                            i10 = R.id.ll_tab_3;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_tab_3);
                            if (linearLayout3 != null) {
                                i10 = R.id.tv_desc_1;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_desc_1);
                                if (textView != null) {
                                    i10 = R.id.tv_desc_2;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_desc_2);
                                    if (textView2 != null) {
                                        i10 = R.id.tv_desc_3;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_desc_3);
                                        if (textView3 != null) {
                                            i10 = R.id.tv_title_1;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title_1);
                                            if (textView4 != null) {
                                                i10 = R.id.tv_title_2;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title_2);
                                                if (textView5 != null) {
                                                    i10 = R.id.tv_title_3;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title_3);
                                                    if (textView6 != null) {
                                                        return new kx0((RelativeLayout) rootView, imageView, imageView2, imageView3, linearLayout, linearLayout2, linearLayout3, textView, textView2, textView3, textView4, textView5, textView6);
                                                    }
                                                }
                                            }
                                        }
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
    public static kx0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41042b;
    }

    @NonNull
    public static kx0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.view_activity_tab_view_three, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
