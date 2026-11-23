package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class cl implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36981b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36982c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f36983d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f36984e;

    private cl(@NonNull LinearLayout rootView, @NonNull LinearLayout llNodata, @NonNull XRecyclerView rcyRecommed, @NonNull TextView tvShowNodata) {
        this.f36981b = rootView;
        this.f36982c = llNodata;
        this.f36983d = rcyRecommed;
        this.f36984e = tvShowNodata;
    }

    @NonNull
    public static cl bind(@NonNull View rootView) {
        int i10 = R.id.ll_nodata;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_nodata);
        if (linearLayout != null) {
            i10 = R.id.rcy_recommed;
            XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.rcy_recommed);
            if (xRecyclerView != null) {
                i10 = R.id.tv_show_nodata;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_show_nodata);
                if (textView != null) {
                    return new cl((LinearLayout) rootView, linearLayout, xRecyclerView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cl inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36981b;
    }

    @NonNull
    public static cl inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_cloud_list_v2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
