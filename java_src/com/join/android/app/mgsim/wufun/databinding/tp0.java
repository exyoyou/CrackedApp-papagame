package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class tp0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45371b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45372c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45373d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45374e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45375f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45376g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45377h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f45378i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f45379j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45380k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45381l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45382m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45383n;

    private tp0(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView appimage, @NonNull SimpleDraweeView appimage2, @NonNull TextView appname, @NonNull TextView appname2, @NonNull TextView bespeakNumber, @NonNull TextView bespeakNumber2, @NonNull TextView downloadapp, @NonNull TextView downloadapp2, @NonNull SimpleDraweeView gameIcon, @NonNull SimpleDraweeView gameIcon2, @NonNull LinearLayout itemLeft, @NonNull LinearLayout itemRight) {
        this.f45371b = rootView;
        this.f45372c = appimage;
        this.f45373d = appimage2;
        this.f45374e = appname;
        this.f45375f = appname2;
        this.f45376g = bespeakNumber;
        this.f45377h = bespeakNumber2;
        this.f45378i = downloadapp;
        this.f45379j = downloadapp2;
        this.f45380k = gameIcon;
        this.f45381l = gameIcon2;
        this.f45382m = itemLeft;
        this.f45383n = itemRight;
    }

    @NonNull
    public static tp0 bind(@NonNull View rootView) {
        int i10 = R.id.appimage;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appimage);
        if (simpleDraweeView != null) {
            i10 = R.id.appimage2;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appimage2);
            if (simpleDraweeView2 != null) {
                i10 = R.id.appname;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname);
                if (textView != null) {
                    i10 = R.id.appname2;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname2);
                    if (textView2 != null) {
                        i10 = R.id.bespeakNumber;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.bespeakNumber);
                        if (textView3 != null) {
                            i10 = R.id.bespeakNumber2;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.bespeakNumber2);
                            if (textView4 != null) {
                                i10 = R.id.downloadapp;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downloadapp);
                                if (textView5 != null) {
                                    i10 = R.id.downloadapp2;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downloadapp2);
                                    if (textView6 != null) {
                                        i10 = R.id.gameIcon;
                                        SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameIcon);
                                        if (simpleDraweeView3 != null) {
                                            i10 = R.id.gameIcon2;
                                            SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameIcon2);
                                            if (simpleDraweeView4 != null) {
                                                i10 = R.id.itemLeft;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.itemLeft);
                                                if (linearLayout != null) {
                                                    i10 = R.id.itemRight;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.itemRight);
                                                    if (linearLayout2 != null) {
                                                        return new tp0((LinearLayout) rootView, simpleDraweeView, simpleDraweeView2, textView, textView2, textView3, textView4, textView5, textView6, simpleDraweeView3, simpleDraweeView4, linearLayout, linearLayout2);
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
    public static tp0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45371b;
    }

    @NonNull
    public static tp0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_bespeak_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
