package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class pw implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43555c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43556d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43557e;

    private pw(@NonNull LinearLayout rootView, @NonNull RelativeLayout papaLayout, @NonNull TextView tvLabel, @NonNull TextView tvSubTitle) {
        this.f43554b = rootView;
        this.f43555c = papaLayout;
        this.f43556d = tvLabel;
        this.f43557e = tvSubTitle;
    }

    @NonNull
    public static pw bind(@NonNull View rootView) {
        int i10 = R.id.papaLayout;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.papaLayout);
        if (relativeLayout != null) {
            i10 = R.id.tv_label;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label);
            if (textView != null) {
                i10 = R.id.tv_sub_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_sub_title);
                if (textView2 != null) {
                    return new pw((LinearLayout) rootView, relativeLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pw inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43554b;
    }

    @NonNull
    public static pw inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_about_top_menu, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
