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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class lq implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41466b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41467c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41468d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41469e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41470f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f41471g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f41472h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41473i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41474j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41475k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41476l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f41477m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f41478n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f41479o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41480p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41481q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f41482r;

    private lq(@NonNull LinearLayout rootView, @NonNull LinearLayout backLayout, @NonNull SimpleDraweeView googleImage, @NonNull LinearLayout googleLayout, @NonNull TextView googleText, @NonNull ImageView imageView5, @NonNull View layoutTop, @NonNull LinearLayout lookOther, @NonNull TextView moreText, @NonNull SimpleDraweeView rootImage, @NonNull LinearLayout rootLayout, @NonNull TextView rootText, @NonNull TextView textView9, @NonNull TextView titleText, @NonNull SimpleDraweeView vpnImage, @NonNull LinearLayout vpnLayout, @NonNull TextView vpnText) {
        this.f41466b = rootView;
        this.f41467c = backLayout;
        this.f41468d = googleImage;
        this.f41469e = googleLayout;
        this.f41470f = googleText;
        this.f41471g = imageView5;
        this.f41472h = layoutTop;
        this.f41473i = lookOther;
        this.f41474j = moreText;
        this.f41475k = rootImage;
        this.f41476l = rootLayout;
        this.f41477m = rootText;
        this.f41478n = textView9;
        this.f41479o = titleText;
        this.f41480p = vpnImage;
        this.f41481q = vpnLayout;
        this.f41482r = vpnText;
    }

    @NonNull
    public static lq bind(@NonNull View rootView) {
        int i10 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout);
        if (linearLayout != null) {
            i10 = R.id.googleImage;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.googleImage);
            if (simpleDraweeView != null) {
                i10 = R.id.googleLayout;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.googleLayout);
                if (linearLayout2 != null) {
                    i10 = R.id.googleText;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.googleText);
                    if (textView != null) {
                        i10 = R.id.imageView5;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView5);
                        if (imageView != null) {
                            i10 = R.id.layoutTop;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.layoutTop);
                            if (viewFindChildViewById != null) {
                                i10 = R.id.look_other;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.look_other);
                                if (linearLayout3 != null) {
                                    i10 = R.id.moreText;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moreText);
                                    if (textView2 != null) {
                                        i10 = R.id.rootImage;
                                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.rootImage);
                                        if (simpleDraweeView2 != null) {
                                            i10 = R.id.rootLayout;
                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.rootLayout);
                                            if (linearLayout4 != null) {
                                                i10 = R.id.rootText;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.rootText);
                                                if (textView3 != null) {
                                                    i10 = R.id.textView9;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView9);
                                                    if (textView4 != null) {
                                                        i10 = R.id.titleText;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                                                        if (textView5 != null) {
                                                            i10 = R.id.vpnImage;
                                                            SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.vpnImage);
                                                            if (simpleDraweeView3 != null) {
                                                                i10 = R.id.vpnLayout;
                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.vpnLayout);
                                                                if (linearLayout5 != null) {
                                                                    i10 = R.id.vpnText;
                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.vpnText);
                                                                    if (textView6 != null) {
                                                                        return new lq((LinearLayout) rootView, linearLayout, simpleDraweeView, linearLayout2, textView, imageView, viewFindChildViewById, linearLayout3, textView2, simpleDraweeView2, linearLayout4, textView3, textView4, textView5, simpleDraweeView3, linearLayout5, textView6);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static lq inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41466b;
    }

    @NonNull
    public static lq inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_auxiliarytool, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
