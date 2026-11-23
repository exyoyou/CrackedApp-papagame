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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class yq implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f47870c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47871d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47872e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47873f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47874g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f47875h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f47876i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f47877j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final View f47878k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47879l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47880m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47881n;

    private yq(@NonNull RelativeLayout rootView, @NonNull TextView getGiftTextView, @NonNull TextView giftContent, @NonNull TextView giftCount, @NonNull SimpleDraweeView giftIcon, @NonNull TextView giftName, @NonNull ImageView giftPackageSwich, @NonNull TextView giftSurplus, @NonNull TextView giftSurplusTitle, @NonNull View itemLine, @NonNull LinearLayout layoutContent, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout rightButnLayout) {
        this.f47869b = rootView;
        this.f47870c = getGiftTextView;
        this.f47871d = giftContent;
        this.f47872e = giftCount;
        this.f47873f = giftIcon;
        this.f47874g = giftName;
        this.f47875h = giftPackageSwich;
        this.f47876i = giftSurplus;
        this.f47877j = giftSurplusTitle;
        this.f47878k = itemLine;
        this.f47879l = layoutContent;
        this.f47880m = linearLayout;
        this.f47881n = rightButnLayout;
    }

    @NonNull
    public static yq bind(@NonNull View rootView) {
        int i10 = R.id.getGiftTextView;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.getGiftTextView);
        if (textView != null) {
            i10 = R.id.giftContent;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftContent);
            if (textView2 != null) {
                i10 = R.id.giftCount;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftCount);
                if (textView3 != null) {
                    i10 = R.id.giftIcon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.giftIcon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.giftName;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftName);
                        if (textView4 != null) {
                            i10 = R.id.giftPackageSwich;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.giftPackageSwich);
                            if (imageView != null) {
                                i10 = R.id.giftSurplus;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftSurplus);
                                if (textView5 != null) {
                                    i10 = R.id.giftSurplusTitle;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftSurplusTitle);
                                    if (textView6 != null) {
                                        i10 = R.id.itemLine;
                                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.itemLine);
                                        if (viewFindChildViewById != null) {
                                            i10 = R.id.layoutContent;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutContent);
                                            if (linearLayout != null) {
                                                i10 = R.id.linearLayout;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
                                                if (linearLayout2 != null) {
                                                    i10 = R.id.rightButnLayout;
                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rightButnLayout);
                                                    if (relativeLayout != null) {
                                                        return new yq((RelativeLayout) rootView, textView, textView2, textView3, simpleDraweeView, textView4, imageView, textView5, textView6, viewFindChildViewById, linearLayout, linearLayout2, relativeLayout);
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
    public static yq inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47869b;
    }

    @NonNull
    public static yq inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_gifts, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
