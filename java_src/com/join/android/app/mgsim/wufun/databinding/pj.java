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
import com.join.mgps.customview.VipView;

/* JADX INFO: loaded from: classes4.dex */
public final class pj implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43374c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43375d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f43376e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final VipView f43377f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43378g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43379h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f43380i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43381j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f43382k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f43383l;

    private pj(@NonNull RelativeLayout rootView, @NonNull LinearLayout b10, @NonNull LinearLayout nameLayout, @NonNull ImageView sexImg, @NonNull VipView svip, @NonNull TextView tipName, @NonNull LinearLayout tipsLayout, @NonNull ImageView titleImg, @NonNull SimpleDraweeView userIcon, @NonNull TextView userName, @NonNull ImageView vip) {
        this.f43373b = rootView;
        this.f43374c = b10;
        this.f43375d = nameLayout;
        this.f43376e = sexImg;
        this.f43377f = svip;
        this.f43378g = tipName;
        this.f43379h = tipsLayout;
        this.f43380i = titleImg;
        this.f43381j = userIcon;
        this.f43382k = userName;
        this.f43383l = vip;
    }

    @NonNull
    public static pj bind(@NonNull View rootView) {
        int i10 = R.id.f35453b;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.f35453b);
        if (linearLayout != null) {
            i10 = R.id.nameLayout;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.nameLayout);
            if (linearLayout2 != null) {
                i10 = R.id.sexImg;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.sexImg);
                if (imageView != null) {
                    i10 = R.id.svip;
                    VipView vipView = (VipView) ViewBindings.findChildViewById(rootView, R.id.svip);
                    if (vipView != null) {
                        i10 = R.id.tipName;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tipName);
                        if (textView != null) {
                            i10 = R.id.tipsLayout;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                            if (linearLayout3 != null) {
                                i10 = R.id.titleImg;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.titleImg);
                                if (imageView2 != null) {
                                    i10 = R.id.userIcon;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.userIcon);
                                    if (simpleDraweeView != null) {
                                        i10 = R.id.userName;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userName);
                                        if (textView2 != null) {
                                            i10 = R.id.vip;
                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.vip);
                                            if (imageView3 != null) {
                                                return new pj((RelativeLayout) rootView, linearLayout, linearLayout2, imageView, vipView, textView, linearLayout3, imageView2, simpleDraweeView, textView2, imageView3);
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
    public static pj inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f43373b;
    }

    @NonNull
    public static pj inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.favoriose_title_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
