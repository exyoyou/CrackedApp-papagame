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
import com.join.mgps.customview.WrapContentGridView;

/* JADX INFO: loaded from: classes4.dex */
public final class kk implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40822b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final WrapContentGridView f40823c;

    private kk(@NonNull LinearLayout rootView, @NonNull WrapContentGridView gridView) {
        this.f40822b = rootView;
        this.f40823c = gridView;
    }

    @NonNull
    public static kk bind(@NonNull View rootView) {
        WrapContentGridView wrapContentGridView = (WrapContentGridView) ViewBindings.findChildViewById(rootView, R.id.gridView);
        if (wrapContentGridView != null) {
            return new kk((LinearLayout) rootView, wrapContentGridView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.gridView)));
    }

    @NonNull
    public static kk inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40822b;
    }

    @NonNull
    public static kk inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.forum_posts_activity_functions1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
