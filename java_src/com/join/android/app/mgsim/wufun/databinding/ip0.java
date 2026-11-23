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
public final class ip0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39899c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39900d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39901e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39902f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f39903g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f39904h;

    private ip0(@NonNull LinearLayout rootView, @NonNull TextView appDescribe, @NonNull TextView appName, @NonNull SimpleDraweeView image, @NonNull LinearLayout main, @NonNull TextView tip, @NonNull TextView titleText) {
        this.f39898b = rootView;
        this.f39899c = appDescribe;
        this.f39900d = appName;
        this.f39901e = image;
        this.f39902f = main;
        this.f39903g = tip;
        this.f39904h = titleText;
    }

    @NonNull
    public static ip0 bind(@NonNull View rootView) {
        int i10 = R.id.appDescribe;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appDescribe);
        if (textView != null) {
            i10 = R.id.appName;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName);
            if (textView2 != null) {
                i10 = R.id.image;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.image);
                if (simpleDraweeView != null) {
                    i10 = R.id.main;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                    if (linearLayout != null) {
                        i10 = R.id.tip;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip);
                        if (textView3 != null) {
                            i10 = R.id.titleText;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                            if (textView4 != null) {
                                return new ip0((LinearLayout) rootView, textView, textView2, simpleDraweeView, linearLayout, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ip0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39898b;
    }

    @NonNull
    public static ip0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.now_wufun_topic2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
