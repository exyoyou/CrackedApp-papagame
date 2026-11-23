package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.HorizontalScrollView;
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
public final class kk0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40825c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40826d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40827e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40828f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40829g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final Button f40830h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40831i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f40832j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final HorizontalScrollView f40833k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f40834l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40835m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final Button f40836n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40837o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f40838p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40839q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40840r;

    private kk0(@NonNull RelativeLayout rootView, @NonNull TextView appCompany, @NonNull TextView appDownloadCount, @NonNull SimpleDraweeView appIcon, @NonNull TextView appName, @NonNull TextView appSize, @NonNull Button gameFollowButn, @NonNull SimpleDraweeView gameInfoLayout, @NonNull ImageView imageView18, @NonNull HorizontalScrollView scrollView, @NonNull TextView textNullToTwo, @NonNull LinearLayout tipsLayout, @NonNull Button titleMoreBookButn, @NonNull LinearLayout titleMoreLayout, @NonNull TextView titleMoreMessage, @NonNull LinearLayout titleMoreTip, @NonNull LinearLayout titlelayout) {
        this.f40824b = rootView;
        this.f40825c = appCompany;
        this.f40826d = appDownloadCount;
        this.f40827e = appIcon;
        this.f40828f = appName;
        this.f40829g = appSize;
        this.f40830h = gameFollowButn;
        this.f40831i = gameInfoLayout;
        this.f40832j = imageView18;
        this.f40833k = scrollView;
        this.f40834l = textNullToTwo;
        this.f40835m = tipsLayout;
        this.f40836n = titleMoreBookButn;
        this.f40837o = titleMoreLayout;
        this.f40838p = titleMoreMessage;
        this.f40839q = titleMoreTip;
        this.f40840r = titlelayout;
    }

    @NonNull
    public static kk0 bind(@NonNull View rootView) {
        int i10 = R.id.appCompany;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appCompany);
        if (textView != null) {
            i10 = R.id.appDownloadCount;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appDownloadCount);
            if (textView2 != null) {
                i10 = R.id.appIcon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon);
                if (simpleDraweeView != null) {
                    i10 = R.id.appName;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName);
                    if (textView3 != null) {
                        i10 = R.id.appSize;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
                        if (textView4 != null) {
                            i10 = R.id.gameFollowButn;
                            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.gameFollowButn);
                            if (button != null) {
                                i10 = R.id.gameInfoLayout;
                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameInfoLayout);
                                if (simpleDraweeView2 != null) {
                                    i10 = R.id.imageView18;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView18);
                                    if (imageView != null) {
                                        i10 = R.id.scrollView;
                                        HorizontalScrollView horizontalScrollView = (HorizontalScrollView) ViewBindings.findChildViewById(rootView, R.id.scrollView);
                                        if (horizontalScrollView != null) {
                                            i10 = R.id.textNullToTwo;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textNullToTwo);
                                            if (textView5 != null) {
                                                i10 = R.id.tipsLayout;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                                                if (linearLayout != null) {
                                                    i10 = R.id.titleMoreBookButn;
                                                    Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.titleMoreBookButn);
                                                    if (button2 != null) {
                                                        i10 = R.id.titleMoreLayout;
                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.titleMoreLayout);
                                                        if (linearLayout2 != null) {
                                                            i10 = R.id.titleMoreMessage;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleMoreMessage);
                                                            if (textView6 != null) {
                                                                i10 = R.id.titleMoreTip;
                                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.titleMoreTip);
                                                                if (linearLayout3 != null) {
                                                                    i10 = R.id.titlelayout;
                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.titlelayout);
                                                                    if (linearLayout4 != null) {
                                                                        return new kk0((RelativeLayout) rootView, textView, textView2, simpleDraweeView, textView3, textView4, button, simpleDraweeView2, imageView, horizontalScrollView, textView5, linearLayout, button2, linearLayout2, textView6, linearLayout3, linearLayout4);
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
    public static kk0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40824b;
    }

    @NonNull
    public static kk0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_gamedetail_title, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
