package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.WrapContentListView;

/* JADX INFO: loaded from: classes4.dex */
public final class ek implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final WrapContentListView f37990c;

    private ek(@NonNull RelativeLayout rootView, @NonNull WrapContentListView wrapListView) {
        this.f37989b = rootView;
        this.f37990c = wrapListView;
    }

    @NonNull
    public static ek bind(@NonNull View rootView) {
        WrapContentListView wrapContentListView = (WrapContentListView) ViewBindings.findChildViewById(rootView, R.id.wrapListView);
        if (wrapContentListView != null) {
            return new ek((RelativeLayout) rootView, wrapContentListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.wrapListView)));
    }

    @NonNull
    public static ek inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37989b;
    }

    @NonNull
    public static ek inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.forum_activity_forum_post, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
