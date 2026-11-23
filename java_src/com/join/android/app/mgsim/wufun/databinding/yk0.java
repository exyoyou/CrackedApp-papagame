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
public final class yk0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final hw0 f47782c;

    private yk0(@NonNull LinearLayout rootView, @NonNull hw0 titleBarLayout) {
        this.f47781b = rootView;
        this.f47782c = titleBarLayout;
    }

    @NonNull
    public static yk0 bind(@NonNull View rootView) {
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
        if (viewFindChildViewById == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.title_bar_layout)));
        }
        return new yk0((LinearLayout) rootView, hw0.bind(viewFindChildViewById));
    }

    @NonNull
    public static yk0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47781b;
    }

    @NonNull
    public static yk0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_tips_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
