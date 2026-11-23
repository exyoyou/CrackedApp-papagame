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
public final class pk implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43386c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f43387d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43388e;

    private pk(@NonNull LinearLayout rootView, @NonNull LinearLayout group, @NonNull View line, @NonNull LinearLayout tabs) {
        this.f43385b = rootView;
        this.f43386c = group;
        this.f43387d = line;
        this.f43388e = tabs;
    }

    @NonNull
    public static pk bind(@NonNull View rootView) {
        int i10 = R.id.group;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.group);
        if (linearLayout != null) {
            i10 = R.id.line;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
            if (viewFindChildViewById != null) {
                LinearLayout linearLayout2 = (LinearLayout) rootView;
                return new pk(linearLayout2, linearLayout, viewFindChildViewById, linearLayout2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pk inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43385b;
    }

    @NonNull
    public static pk inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.forum_strategy_tag_grid, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
