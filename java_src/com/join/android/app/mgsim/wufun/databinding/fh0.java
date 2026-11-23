package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumStickView;

/* JADX INFO: loaded from: classes4.dex */
public final class fh0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ForumStickView f38391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ForumStickView f38392c;

    private fh0(@NonNull ForumStickView rootView, @NonNull ForumStickView fsvStick) {
        this.f38391b = rootView;
        this.f38392c = fsvStick;
    }

    @NonNull
    public static fh0 bind(@NonNull View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        ForumStickView forumStickView = (ForumStickView) rootView;
        return new fh0(forumStickView, forumStickView);
    }

    @NonNull
    public static fh0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ForumStickView getRoot() {
        return this.f38391b;
    }

    @NonNull
    public static fh0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_post_activity_item_commnet_stick, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
