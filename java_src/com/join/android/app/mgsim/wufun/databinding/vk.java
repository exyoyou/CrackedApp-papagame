package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class vk implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f46320c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46321d;

    private vk(@NonNull RelativeLayout rootView, @NonNull XRecyclerView listView, @NonNull TextView noData) {
        this.f46319b = rootView;
        this.f46320c = listView;
        this.f46321d = noData;
    }

    @NonNull
    public static vk bind(@NonNull View rootView) {
        int i10 = R.id.listView;
        XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.listView);
        if (xRecyclerView != null) {
            i10 = R.id.noData;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.noData);
            if (textView != null) {
                return new vk((RelativeLayout) rootView, xRecyclerView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static vk inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46319b;
    }

    @NonNull
    public static vk inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_cheese_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
