package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class id implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final HorizontalScrollView f39785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39786c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39787d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39789f;

    private id(@NonNull HorizontalScrollView rootView, @NonNull TextView k10, @NonNull TextView k11, @NonNull TextView k12, @NonNull TextView k13) {
        this.f39785b = rootView;
        this.f39786c = k10;
        this.f39787d = k11;
        this.f39788e = k12;
        this.f39789f = k13;
    }

    @NonNull
    public static id bind(@NonNull View rootView) {
        int i10 = R.id.f35465k1;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.f35465k1);
        if (textView != null) {
            i10 = R.id.f35466k2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.f35466k2);
            if (textView2 != null) {
                i10 = R.id.f35467k3;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.f35467k3);
                if (textView3 != null) {
                    i10 = R.id.f35468k4;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.f35468k4);
                    if (textView4 != null) {
                        return new id((HorizontalScrollView) rootView, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static id inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public HorizontalScrollView getRoot() {
        return this.f39785b;
    }

    @NonNull
    public static id inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.detial_golden_finger1_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
