package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class eh0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final View f37973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f37974c;

    private eh0(@NonNull View rootView, @NonNull View vView) {
        this.f37973b = rootView;
        this.f37974c = vView;
    }

    @NonNull
    public static eh0 bind(@NonNull View rootView) {
        if (rootView != null) {
            return new eh0(rootView, rootView);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static eh0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f37973b;
    }

    @NonNull
    public static eh0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_post_activity_item_commnet_divider, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
