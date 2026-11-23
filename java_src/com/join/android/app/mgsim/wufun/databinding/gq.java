package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class gq implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38948c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38949d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38950e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38951f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38952g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38953h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38954i;

    private gq(@NonNull LinearLayout rootView, @NonNull TextView appNumberLeft, @NonNull TextView appNumberRight, @NonNull TextView companyLeft, @NonNull TextView companyRight, @NonNull SimpleDraweeView imageLeft, @NonNull SimpleDraweeView imageRight, @NonNull RelativeLayout rightLayout) {
        this.f38947b = rootView;
        this.f38948c = appNumberLeft;
        this.f38949d = appNumberRight;
        this.f38950e = companyLeft;
        this.f38951f = companyRight;
        this.f38952g = imageLeft;
        this.f38953h = imageRight;
        this.f38954i = rightLayout;
    }

    @NonNull
    public static gq bind(@NonNull View rootView) {
        int i10 = R.id.appNumberLeft;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appNumberLeft);
        if (textView != null) {
            i10 = R.id.appNumberRight;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appNumberRight);
            if (textView2 != null) {
                i10 = R.id.companyLeft;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.companyLeft);
                if (textView3 != null) {
                    i10 = R.id.companyRight;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.companyRight);
                    if (textView4 != null) {
                        i10 = R.id.imageLeft;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.imageLeft);
                        if (simpleDraweeView != null) {
                            i10 = R.id.imageRight;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.imageRight);
                            if (simpleDraweeView2 != null) {
                                i10 = R.id.rightLayout;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rightLayout);
                                if (relativeLayout != null) {
                                    return new gq((LinearLayout) rootView, textView, textView2, textView3, textView4, simpleDraweeView, simpleDraweeView2, relativeLayout);
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
    public static gq inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38947b;
    }

    @NonNull
    public static gq inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_single_company_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
