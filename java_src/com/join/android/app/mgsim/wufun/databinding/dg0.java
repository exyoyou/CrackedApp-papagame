package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;

/* JADX INFO: loaded from: classes4.dex */
public final class dg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final bj0 f37457c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37458d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37459e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37460f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37461g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f37462h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f37463i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37464j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f37465k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f37466l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f37467m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f37468n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f37469o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final Button f37470p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ImageView f37471q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f37472r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37473s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f37474t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final Button f37475u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37476v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37477w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37478x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final Button f37479y;

    private dg0(@NonNull LinearLayout rootView, @NonNull bj0 actionbarLayout, @NonNull TextView cdkNum, @NonNull TextView giftContent, @NonNull TextView giftExpireDate, @NonNull SimpleDraweeView giftIcon, @NonNull TextView giftName, @NonNull TextView giftRetain, @NonNull LinearLayout giftRetainLayout, @NonNull TextView giftRetainTop, @NonNull TextView giftTip, @NonNull TextView giftTitle, @NonNull TextView giftUseContent, @NonNull TextView giftUseTitle, @NonNull Button goToOem, @NonNull ImageView imageView2, @NonNull ForumLoadingView loadingView, @NonNull LinearLayout myGiftPackage, @NonNull TextView myGiftPackageCount, @NonNull Button oemType3Tip, @NonNull LinearLayout oemTypeLayout1, @NonNull LinearLayout oemTypeLayout2, @NonNull LinearLayout oemTypeLayout3, @NonNull Button receiveButton) {
        this.f37456b = rootView;
        this.f37457c = actionbarLayout;
        this.f37458d = cdkNum;
        this.f37459e = giftContent;
        this.f37460f = giftExpireDate;
        this.f37461g = giftIcon;
        this.f37462h = giftName;
        this.f37463i = giftRetain;
        this.f37464j = giftRetainLayout;
        this.f37465k = giftRetainTop;
        this.f37466l = giftTip;
        this.f37467m = giftTitle;
        this.f37468n = giftUseContent;
        this.f37469o = giftUseTitle;
        this.f37470p = goToOem;
        this.f37471q = imageView2;
        this.f37472r = loadingView;
        this.f37473s = myGiftPackage;
        this.f37474t = myGiftPackageCount;
        this.f37475u = oemType3Tip;
        this.f37476v = oemTypeLayout1;
        this.f37477w = oemTypeLayout2;
        this.f37478x = oemTypeLayout3;
        this.f37479y = receiveButton;
    }

    @NonNull
    public static dg0 bind(@NonNull View rootView) {
        int i10 = R.id.actionbarLayout;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.actionbarLayout);
        if (viewFindChildViewById != null) {
            bj0 bj0VarBind = bj0.bind(viewFindChildViewById);
            i10 = R.id.cdkNum;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.cdkNum);
            if (textView != null) {
                i10 = R.id.giftContent;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftContent);
                if (textView2 != null) {
                    i10 = R.id.giftExpireDate;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftExpireDate);
                    if (textView3 != null) {
                        i10 = R.id.giftIcon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.giftIcon);
                        if (simpleDraweeView != null) {
                            i10 = R.id.giftName;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftName);
                            if (textView4 != null) {
                                i10 = R.id.giftRetain;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftRetain);
                                if (textView5 != null) {
                                    i10 = R.id.giftRetainLayout;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.giftRetainLayout);
                                    if (linearLayout != null) {
                                        i10 = R.id.giftRetainTop;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftRetainTop);
                                        if (textView6 != null) {
                                            i10 = R.id.giftTip;
                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftTip);
                                            if (textView7 != null) {
                                                i10 = R.id.giftTitle;
                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftTitle);
                                                if (textView8 != null) {
                                                    i10 = R.id.giftUseContent;
                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftUseContent);
                                                    if (textView9 != null) {
                                                        i10 = R.id.giftUseTitle;
                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftUseTitle);
                                                        if (textView10 != null) {
                                                            i10 = R.id.goToOem;
                                                            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.goToOem);
                                                            if (button != null) {
                                                                i10 = R.id.imageView2;
                                                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView2);
                                                                if (imageView != null) {
                                                                    i10 = R.id.loadingView;
                                                                    ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
                                                                    if (forumLoadingView != null) {
                                                                        i10 = R.id.myGiftPackage;
                                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.myGiftPackage);
                                                                        if (linearLayout2 != null) {
                                                                            i10 = R.id.myGiftPackageCount;
                                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.myGiftPackageCount);
                                                                            if (textView11 != null) {
                                                                                i10 = R.id.oemType3Tip;
                                                                                Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.oemType3Tip);
                                                                                if (button2 != null) {
                                                                                    i10 = R.id.oemTypeLayout1;
                                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.oemTypeLayout1);
                                                                                    if (linearLayout3 != null) {
                                                                                        i10 = R.id.oemTypeLayout2;
                                                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.oemTypeLayout2);
                                                                                        if (linearLayout4 != null) {
                                                                                            i10 = R.id.oemTypeLayout3;
                                                                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.oemTypeLayout3);
                                                                                            if (linearLayout5 != null) {
                                                                                                i10 = R.id.receiveButton;
                                                                                                Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.receiveButton);
                                                                                                if (button3 != null) {
                                                                                                    return new dg0((LinearLayout) rootView, bj0VarBind, textView, textView2, textView3, simpleDraweeView, textView4, textView5, linearLayout, textView6, textView7, textView8, textView9, textView10, button, imageView, forumLoadingView, linearLayout2, textView11, button2, linearLayout3, linearLayout4, linearLayout5, button3);
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
    public static dg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37456b;
    }

    @NonNull
    public static dg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_forum_gift_detail_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
