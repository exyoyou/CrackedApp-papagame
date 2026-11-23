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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class wb0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f46734c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46735d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46736e;

    private wb0(@NonNull RelativeLayout rootView, @NonNull View line, @NonNull RelativeLayout moreItem, @NonNull TextView rankingMore) {
        this.f46733b = rootView;
        this.f46734c = line;
        this.f46735d = moreItem;
        this.f46736e = rankingMore;
    }

    @NonNull
    public static wb0 bind(@NonNull View rootView) {
        int i10 = R.id.line;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
        if (viewFindChildViewById != null) {
            RelativeLayout relativeLayout = (RelativeLayout) rootView;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.ranking_more);
            if (textView != null) {
                return new wb0(relativeLayout, viewFindChildViewById, relativeLayout, textView);
            }
            i10 = R.id.ranking_more;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wb0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46733b;
    }

    @NonNull
    public static wb0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_ranking_more, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
