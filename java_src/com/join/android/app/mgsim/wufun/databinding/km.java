package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class km implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40869c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f40870d;

    private km(@NonNull RelativeLayout rootView, @NonNull RelativeLayout fragmentGamelist, @NonNull XRecyclerView listView2) {
        this.f40868b = rootView;
        this.f40869c = fragmentGamelist;
        this.f40870d = listView2;
    }

    @NonNull
    public static km bind(@NonNull View rootView) {
        RelativeLayout relativeLayout = (RelativeLayout) rootView;
        XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.listView2);
        if (xRecyclerView != null) {
            return new km(relativeLayout, relativeLayout, xRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.listView2)));
    }

    @NonNull
    public static km inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40868b;
    }

    @NonNull
    public static km inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_gamelist, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
