package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
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
public final class jt implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40405c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40406d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f40407e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40408f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40409g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40410h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f40411i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40412j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f40413k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f40414l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f40415m;

    private jt(@NonNull LinearLayout rootView, @NonNull TextView cardAppSize, @NonNull TextView cardAppname, @NonNull Button cardDownButn, @NonNull LinearLayout cardDownNumber, @NonNull TextView cardDownNumberText, @NonNull SimpleDraweeView cardIcon, @NonNull TextView cardInfo, @NonNull RelativeLayout gameCardLayout, @NonNull TextView moneyText, @NonNull TextView textView69, @NonNull TextView textView70) {
        this.f40404b = rootView;
        this.f40405c = cardAppSize;
        this.f40406d = cardAppname;
        this.f40407e = cardDownButn;
        this.f40408f = cardDownNumber;
        this.f40409g = cardDownNumberText;
        this.f40410h = cardIcon;
        this.f40411i = cardInfo;
        this.f40412j = gameCardLayout;
        this.f40413k = moneyText;
        this.f40414l = textView69;
        this.f40415m = textView70;
    }

    @NonNull
    public static jt bind(@NonNull View rootView) {
        int i10 = R.id.cardAppSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.cardAppSize);
        if (textView != null) {
            i10 = R.id.cardAppname;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.cardAppname);
            if (textView2 != null) {
                i10 = R.id.cardDownButn;
                Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.cardDownButn);
                if (button != null) {
                    i10 = R.id.cardDownNumber;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.cardDownNumber);
                    if (linearLayout != null) {
                        i10 = R.id.cardDownNumberText;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.cardDownNumberText);
                        if (textView3 != null) {
                            i10 = R.id.cardIcon;
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.cardIcon);
                            if (simpleDraweeView != null) {
                                i10 = R.id.cardInfo;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.cardInfo);
                                if (textView4 != null) {
                                    i10 = R.id.gameCardLayout;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.gameCardLayout);
                                    if (relativeLayout != null) {
                                        i10 = R.id.moneyText;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText);
                                        if (textView5 != null) {
                                            i10 = R.id.textView69;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView69);
                                            if (textView6 != null) {
                                                i10 = R.id.textView70;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView70);
                                                if (textView7 != null) {
                                                    return new jt((LinearLayout) rootView, textView, textView2, button, linearLayout, textView3, simpleDraweeView, textView4, relativeLayout, textView5, textView6, textView7);
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
    public static jt inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40404b;
    }

    @NonNull
    public static jt inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gameinformation_cardlayout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
