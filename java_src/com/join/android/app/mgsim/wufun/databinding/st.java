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
public final class st implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44964c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44965d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44966e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44967f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44968g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44969h;

    private st(@NonNull RelativeLayout rootView, @NonNull TextView follow, @NonNull LinearLayout iconLayout, @NonNull RelativeLayout main, @NonNull TextView name, @NonNull TextView number, @NonNull TextView title) {
        this.f44963b = rootView;
        this.f44964c = follow;
        this.f44965d = iconLayout;
        this.f44966e = main;
        this.f44967f = name;
        this.f44968g = number;
        this.f44969h = title;
    }

    @NonNull
    public static st bind(@NonNull View rootView) {
        int i10 = R.id.follow;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.follow);
        if (textView != null) {
            i10 = R.id.iconLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iconLayout);
            if (linearLayout != null) {
                RelativeLayout relativeLayout = (RelativeLayout) rootView;
                i10 = R.id.name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                if (textView2 != null) {
                    i10 = R.id.number;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.number);
                    if (textView3 != null) {
                        i10 = R.id.title;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                        if (textView4 != null) {
                            return new st(relativeLayout, textView, linearLayout, relativeLayout, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static st inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44963b;
    }

    @NonNull
    public static st inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamelist_list_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
