package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class et implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38091c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f38092d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38093e;

    private et(@NonNull LinearLayout rootView, @NonNull LinearLayout group, @NonNull View line, @NonNull LinearLayout tabs) {
        this.f38090b = rootView;
        this.f38091c = group;
        this.f38092d = line;
        this.f38093e = tabs;
    }

    @NonNull
    public static et bind(@NonNull View rootView) {
        int i10 = R.id.group;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.group);
        if (linearLayout != null) {
            i10 = R.id.line;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
            if (viewFindChildViewById != null) {
                LinearLayout linearLayout2 = (LinearLayout) rootView;
                return new et(linearLayout2, linearLayout, viewFindChildViewById, linearLayout2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static et inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38090b;
    }

    @NonNull
    public static et inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetial_more_strategy_table, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
