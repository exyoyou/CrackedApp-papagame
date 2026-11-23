package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.NestedScrollableHost;

/* JADX INFO: loaded from: classes4.dex */
public final class uy implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f45966c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final NestedScrollableHost f45967d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RecyclerView f45968e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45969f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45970g;

    private uy(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout clRoot, @NonNull NestedScrollableHost nshView, @NonNull RecyclerView rvList, @NonNull TextView tvText1, @NonNull TextView tvText2) {
        this.f45965b = rootView;
        this.f45966c = clRoot;
        this.f45967d = nshView;
        this.f45968e = rvList;
        this.f45969f = tvText1;
        this.f45970g = tvText2;
    }

    @NonNull
    public static uy bind(@NonNull View rootView) {
        ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
        int i10 = R.id.nsh_view;
        NestedScrollableHost nestedScrollableHost = (NestedScrollableHost) ViewBindings.findChildViewById(rootView, R.id.nsh_view);
        if (nestedScrollableHost != null) {
            i10 = R.id.rv_list;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_list);
            if (recyclerView != null) {
                i10 = R.id.tv_text_1;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                if (textView != null) {
                    i10 = R.id.tv_text_2;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_2);
                    if (textView2 != null) {
                        return new uy(constraintLayout, constraintLayout, nestedScrollableHost, recyclerView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static uy inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f45965b;
    }

    @NonNull
    public static uy inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_daily_find_day_today, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
