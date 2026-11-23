package com.join.android.app.mgsim.wufun.databinding;

import android.R;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;

/* JADX INFO: loaded from: classes4.dex */
public final class yv0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47974e;

    private yv0(@NonNull RelativeLayout rootView, @NonNull RelativeLayout list, @NonNull TextView text1, @NonNull TextView text2) {
        this.f47971b = rootView;
        this.f47972c = list;
        this.f47973d = text1;
        this.f47974e = text2;
    }

    @NonNull
    public static yv0 bind(@NonNull View rootView) {
        RelativeLayout relativeLayout = (RelativeLayout) rootView;
        int i10 = R.id.text1;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.text1);
        if (textView != null) {
            i10 = R.id.text2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.text2);
            if (textView2 != null) {
                return new yv0(relativeLayout, relativeLayout, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static yv0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47971b;
    }

    @NonNull
    public static yv0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(com.join.android.app.mgsim.wufun.R.layout.title_indicator, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
