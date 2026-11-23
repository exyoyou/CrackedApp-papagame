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
public final class qn implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XListView2 f43933c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f43934d;

    private qn(@NonNull ConstraintLayout rootView, @NonNull XListView2 listView, @NonNull ConstraintLayout root) {
        this.f43932b = rootView;
        this.f43933c = listView;
        this.f43934d = root;
    }

    @NonNull
    public static qn bind(@NonNull View rootView) {
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listView);
        if (xListView2 == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.listView)));
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
        return new qn(constraintLayout, xListView2, constraintLayout);
    }

    @NonNull
    public static qn inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43932b;
    }

    @NonNull
    public static qn inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_my_game_papa_local, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
