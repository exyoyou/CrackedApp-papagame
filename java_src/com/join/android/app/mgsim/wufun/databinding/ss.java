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
public final class ss implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44933c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44934d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44935e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44936f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44937g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44938h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44939i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44940j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44941k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44942l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f44943m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f44944n;

    private ss(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView appIcon1, @NonNull SimpleDraweeView appIcon2, @NonNull SimpleDraweeView appIcon3, @NonNull TextView appname1, @NonNull TextView appname2, @NonNull TextView appname3, @NonNull LinearLayout layout1, @NonNull LinearLayout layout2, @NonNull LinearLayout layout3, @NonNull LinearLayout main, @NonNull TextView name, @NonNull TextView number) {
        this.f44932b = rootView;
        this.f44933c = appIcon1;
        this.f44934d = appIcon2;
        this.f44935e = appIcon3;
        this.f44936f = appname1;
        this.f44937g = appname2;
        this.f44938h = appname3;
        this.f44939i = layout1;
        this.f44940j = layout2;
        this.f44941k = layout3;
        this.f44942l = main;
        this.f44943m = name;
        this.f44944n = number;
    }

    @NonNull
    public static ss bind(@NonNull View rootView) {
        int i10 = R.id.appIcon1;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon1);
        if (simpleDraweeView != null) {
            i10 = R.id.appIcon2;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon2);
            if (simpleDraweeView2 != null) {
                i10 = R.id.appIcon3;
                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon3);
                if (simpleDraweeView3 != null) {
                    i10 = R.id.appname1;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname1);
                    if (textView != null) {
                        i10 = R.id.appname2;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname2);
                        if (textView2 != null) {
                            i10 = R.id.appname3;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname3);
                            if (textView3 != null) {
                                i10 = R.id.layout1;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout1);
                                if (linearLayout != null) {
                                    i10 = R.id.layout2;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout2);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.layout3;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout3);
                                        if (linearLayout3 != null) {
                                            LinearLayout linearLayout4 = (LinearLayout) rootView;
                                            i10 = R.id.name;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                                            if (textView4 != null) {
                                                i10 = R.id.number;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.number);
                                                if (textView5 != null) {
                                                    return new ss(linearLayout4, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, textView, textView2, textView3, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView4, textView5);
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
    public static ss inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44932b;
    }

    @NonNull
    public static ss inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetial_favorties_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
