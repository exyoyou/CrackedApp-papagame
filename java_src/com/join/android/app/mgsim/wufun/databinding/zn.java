package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;

/* JADX INFO: loaded from: classes4.dex */
public final class zn implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f48321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XListView2 f48322c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final kn f48323d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f48324e;

    private zn(@NonNull ConstraintLayout rootView, @NonNull XListView2 listView, @NonNull kn needUpdate, @NonNull ConstraintLayout root) {
        this.f48321b = rootView;
        this.f48322c = listView;
        this.f48323d = needUpdate;
        this.f48324e = root;
    }

    @NonNull
    public static zn bind(@NonNull View rootView) {
        int i10 = R.id.listView;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listView);
        if (xListView2 != null) {
            i10 = R.id.needUpdate;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.needUpdate);
            if (viewFindChildViewById != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
                return new zn(constraintLayout, xListView2, kn.bind(viewFindChildViewById), constraintLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static zn inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f48321b;
    }

    @NonNull
    public static zn inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_papa_game_local, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
