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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class o3 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f42617c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42618d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42619e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42620f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f42621g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f42622h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f42623i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f42624j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f42625k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f42626l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f42627m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f42628n;

    private o3(@NonNull LinearLayout rootView, @NonNull TextView money, @NonNull TextView orderName, @NonNull TextView orderType, @NonNull TextView payOderId, @NonNull TextView payTime, @NonNull TextView payType, @NonNull TextView textView12, @NonNull TextView textView20, @NonNull TextView textView23, @NonNull TextView textView24, @NonNull TextView textView25, @NonNull TextView textView27) {
        this.f42616b = rootView;
        this.f42617c = money;
        this.f42618d = orderName;
        this.f42619e = orderType;
        this.f42620f = payOderId;
        this.f42621g = payTime;
        this.f42622h = payType;
        this.f42623i = textView12;
        this.f42624j = textView20;
        this.f42625k = textView23;
        this.f42626l = textView24;
        this.f42627m = textView25;
        this.f42628n = textView27;
    }

    @NonNull
    public static o3 bind(@NonNull View rootView) {
        int i10 = R.id.money;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.money);
        if (textView != null) {
            i10 = R.id.orderName;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.orderName);
            if (textView2 != null) {
                i10 = R.id.orderType;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.orderType);
                if (textView3 != null) {
                    i10 = R.id.payOderId;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.payOderId);
                    if (textView4 != null) {
                        i10 = R.id.payTime;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.payTime);
                        if (textView5 != null) {
                            i10 = R.id.payType;
                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.payType);
                            if (textView6 != null) {
                                i10 = R.id.textView12;
                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView12);
                                if (textView7 != null) {
                                    i10 = R.id.textView20;
                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView20);
                                    if (textView8 != null) {
                                        i10 = R.id.textView23;
                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView23);
                                        if (textView9 != null) {
                                            i10 = R.id.textView24;
                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView24);
                                            if (textView10 != null) {
                                                i10 = R.id.textView25;
                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView25);
                                                if (textView11 != null) {
                                                    i10 = R.id.textView27;
                                                    TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView27);
                                                    if (textView12 != null) {
                                                        return new o3((LinearLayout) rootView, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12);
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
    public static o3 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42616b;
    }

    @NonNull
    public static o3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_papay_detial, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
