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
import com.join.mgps.customview.SlidingTabForumLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class ag0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SlidingTabForumLayout f35812c;

    private ag0(@NonNull LinearLayout rootView, @NonNull SlidingTabForumLayout tabs) {
        this.f35811b = rootView;
        this.f35812c = tabs;
    }

    @NonNull
    public static ag0 bind(@NonNull View rootView) {
        SlidingTabForumLayout slidingTabForumLayout = (SlidingTabForumLayout) ViewBindings.findChildViewById(rootView, R.id.tabs);
        if (slidingTabForumLayout != null) {
            return new ag0((LinearLayout) rootView, slidingTabForumLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.tabs)));
    }

    @NonNull
    public static ag0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35811b;
    }

    @NonNull
    public static ag0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_forum_activity_item_tab, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
