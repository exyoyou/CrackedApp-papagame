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
import com.join.mgps.customview.MViewpagerV4;

/* JADX INFO: loaded from: classes4.dex */
public final class vl implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46332c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final MViewpagerV4 f46333d;

    private vl(@NonNull LinearLayout rootView, @NonNull LinearLayout container, @NonNull MViewpagerV4 mViewpagerV4) {
        this.f46331b = rootView;
        this.f46332c = container;
        this.f46333d = mViewpagerV4;
    }

    @NonNull
    public static vl bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        MViewpagerV4 mViewpagerV4 = (MViewpagerV4) ViewBindings.findChildViewById(rootView, R.id.mViewpagerV4);
        if (mViewpagerV4 != null) {
            return new vl(linearLayout, linearLayout, mViewpagerV4);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.mViewpagerV4)));
    }

    @NonNull
    public static vl inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46331b;
    }

    @NonNull
    public static vl inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_fight_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
