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
public final class au implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36063c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36064d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f36065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f36066f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f36067g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36068h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36069i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36070j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36071k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36072l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f36073m;

    private au(@NonNull RelativeLayout rootView, @NonNull TextView GiftCount, @NonNull TextView GiftEndTime, @NonNull TextView GiftSurplus, @NonNull ImageView giftPackageSwich, @NonNull View line, @NonNull LinearLayout linearLayout, @NonNull TextView mgListviewItemAppname, @NonNull SimpleDraweeView mgListviewItemIcon, @NonNull RelativeLayout rLayoutRight, @NonNull RelativeLayout relateLayoutApp, @NonNull TextView tvBtnGet) {
        this.f36062b = rootView;
        this.f36063c = GiftCount;
        this.f36064d = GiftEndTime;
        this.f36065e = GiftSurplus;
        this.f36066f = giftPackageSwich;
        this.f36067g = line;
        this.f36068h = linearLayout;
        this.f36069i = mgListviewItemAppname;
        this.f36070j = mgListviewItemIcon;
        this.f36071k = rLayoutRight;
        this.f36072l = relateLayoutApp;
        this.f36073m = tvBtnGet;
    }

    @NonNull
    public static au bind(@NonNull View rootView) {
        int i10 = R.id.GiftCount;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.GiftCount);
        if (textView != null) {
            i10 = R.id.GiftEndTime;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.GiftEndTime);
            if (textView2 != null) {
                i10 = R.id.GiftSurplus;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.GiftSurplus);
                if (textView3 != null) {
                    i10 = R.id.giftPackageSwich;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.giftPackageSwich);
                    if (imageView != null) {
                        i10 = R.id.line;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.linearLayout;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
                            if (linearLayout != null) {
                                i10 = R.id.mgListviewItemAppname;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemAppname);
                                if (textView4 != null) {
                                    i10 = R.id.mgListviewItemIcon;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemIcon);
                                    if (simpleDraweeView != null) {
                                        i10 = R.id.rLayoutRight;
                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rLayoutRight);
                                        if (relativeLayout != null) {
                                            RelativeLayout relativeLayout2 = (RelativeLayout) rootView;
                                            i10 = R.id.tv_btn_get;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_get);
                                            if (textView5 != null) {
                                                return new au(relativeLayout2, textView, textView2, textView3, imageView, viewFindChildViewById, linearLayout, textView4, simpleDraweeView, relativeLayout, relativeLayout2, textView5);
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
    public static au inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36062b;
    }

    @NonNull
    public static au inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gameol_gift_listview_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
