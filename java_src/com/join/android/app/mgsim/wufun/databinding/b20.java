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
import com.join.mgps.customview.ActivityTabView;

/* JADX INFO: loaded from: classes4.dex */
public final class b20 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ActivityTabView f36198c;

    private b20(@NonNull LinearLayout rootView, @NonNull ActivityTabView atvActivities) {
        this.f36197b = rootView;
        this.f36198c = atvActivities;
    }

    @NonNull
    public static b20 bind(@NonNull View rootView) {
        ActivityTabView activityTabView = (ActivityTabView) ViewBindings.findChildViewById(rootView, R.id.atv_activities);
        if (activityTabView != null) {
            return new b20((LinearLayout) rootView, activityTabView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.atv_activities)));
    }

    @NonNull
    public static b20 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36197b;
    }

    @NonNull
    public static b20 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_detial_activities, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
