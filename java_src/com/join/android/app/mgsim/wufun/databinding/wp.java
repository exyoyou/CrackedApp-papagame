package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class wp implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46891b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f46892c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46893d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46894e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46895f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f46896g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46897h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46898i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46899j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f46900k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f46901l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f46902m;

    private wp(@NonNull LinearLayout rootView, @NonNull ImageView close2, @NonNull TextView downNumber, @NonNull ConstraintLayout downloadAcc, @NonNull SimpleDraweeView icon, @NonNull ImageView imageView56, @NonNull LinearLayout main, @NonNull TextView seetext, @NonNull LinearLayout speedLayout, @NonNull TextView table1, @NonNull TextView table2, @NonNull TextView tip) {
        this.f46891b = rootView;
        this.f46892c = close2;
        this.f46893d = downNumber;
        this.f46894e = downloadAcc;
        this.f46895f = icon;
        this.f46896g = imageView56;
        this.f46897h = main;
        this.f46898i = seetext;
        this.f46899j = speedLayout;
        this.f46900k = table1;
        this.f46901l = table2;
        this.f46902m = tip;
    }

    @NonNull
    public static wp bind(@NonNull View rootView) {
        int i10 = R.id.close2;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close2);
        if (imageView != null) {
            i10 = R.id.downNumber;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.downNumber);
            if (textView != null) {
                i10 = R.id.downloadAcc;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.downloadAcc);
                if (constraintLayout != null) {
                    i10 = R.id.icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.imageView56;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView56);
                        if (imageView2 != null) {
                            LinearLayout linearLayout = (LinearLayout) rootView;
                            i10 = R.id.seetext;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.seetext);
                            if (textView2 != null) {
                                i10 = R.id.speedLayout;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.speedLayout);
                                if (linearLayout2 != null) {
                                    i10 = R.id.table1;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.table1);
                                    if (textView3 != null) {
                                        i10 = R.id.table2;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.table2);
                                        if (textView4 != null) {
                                            i10 = R.id.tip;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip);
                                            if (textView5 != null) {
                                                return new wp(linearLayout, imageView, textView, constraintLayout, simpleDraweeView, imageView2, linearLayout, textView2, linearLayout2, textView3, textView4, textView5);
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
    public static wp inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46891b;
    }

    @NonNull
    public static wp inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_download_recomd_activity2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
