package com.join.android.app.mgsim.wufun.databinding;

import android.R;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;

/* JADX INFO: loaded from: classes4.dex */
public final class zv0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f48459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f48461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f48462e;

    private zv0(@NonNull LinearLayout rootView, @NonNull LinearLayout list, @NonNull TextView text1, @NonNull TextView text2) {
        this.f48459b = rootView;
        this.f48460c = list;
        this.f48461d = text1;
        this.f48462e = text2;
    }

    @NonNull
    public static zv0 bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        int i10 = R.id.text1;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.text1);
        if (textView != null) {
            i10 = R.id.text2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.text2);
            if (textView2 != null) {
                return new zv0(linearLayout, linearLayout, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static zv0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f48459b;
    }

    @NonNull
    public static zv0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(com.join.android.app.mgsim.wufun.R.layout.title_mygame_indicator, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
