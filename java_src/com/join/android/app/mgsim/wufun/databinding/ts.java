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
public final class ts implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f45425c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45426d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45427e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45428f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45429g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45430h;

    private ts(@NonNull LinearLayout rootView, @NonNull TextView follow, @NonNull LinearLayout iconLayout, @NonNull RelativeLayout main, @NonNull TextView name, @NonNull TextView number, @NonNull TextView title) {
        this.f45424b = rootView;
        this.f45425c = follow;
        this.f45426d = iconLayout;
        this.f45427e = main;
        this.f45428f = name;
        this.f45429g = number;
        this.f45430h = title;
    }

    @NonNull
    public static ts bind(@NonNull View rootView) {
        int i10 = R.id.follow;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.follow);
        if (textView != null) {
            i10 = R.id.iconLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iconLayout);
            if (linearLayout != null) {
                i10 = R.id.main;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                if (relativeLayout != null) {
                    i10 = R.id.name;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                    if (textView2 != null) {
                        i10 = R.id.number;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.number);
                        if (textView3 != null) {
                            i10 = R.id.title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                            if (textView4 != null) {
                                return new ts((LinearLayout) rootView, textView, linearLayout, relativeLayout, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ts inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45424b;
    }

    @NonNull
    public static ts inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetial_favorties_item_layoutv2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
