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
public final class zt0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f48449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f48450c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f48451d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f48452e;

    private zt0(@NonNull LinearLayout rootView, @NonNull TextView icon, @NonNull TextView name, @NonNull TextView rank) {
        this.f48449b = rootView;
        this.f48450c = icon;
        this.f48451d = name;
        this.f48452e = rank;
    }

    @NonNull
    public static zt0 bind(@NonNull View rootView) {
        int i10 = R.id.icon;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.icon);
        if (textView != null) {
            i10 = R.id.name;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
            if (textView2 != null) {
                i10 = R.id.rank;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.rank);
                if (textView3 != null) {
                    return new zt0((LinearLayout) rootView, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static zt0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f48449b;
    }

    @NonNull
    public static zt0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.search_hint_hot_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
