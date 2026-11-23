package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class re0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f44323c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44324d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44325e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f44326f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44327g;

    private re0(@NonNull LinearLayout rootView, @NonNull ImageView closed, @NonNull LinearLayout historyTitle, @NonNull LinearLayout nullHistory, @NonNull XRecyclerView recyclerView, @NonNull TextView title) {
        this.f44322b = rootView;
        this.f44323c = closed;
        this.f44324d = historyTitle;
        this.f44325e = nullHistory;
        this.f44326f = recyclerView;
        this.f44327g = title;
    }

    @NonNull
    public static re0 bind(@NonNull View rootView) {
        int i10 = R.id.closed;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.closed);
        if (imageView != null) {
            i10 = R.id.historyTitle;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.historyTitle);
            if (linearLayout != null) {
                i10 = R.id.nullHistory;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.nullHistory);
                if (linearLayout2 != null) {
                    i10 = R.id.recyclerView;
                    XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerView);
                    if (xRecyclerView != null) {
                        i10 = R.id.title;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                        if (textView != null) {
                            return new re0((LinearLayout) rootView, imageView, linearLayout, linearLayout2, xRecyclerView, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static re0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44322b;
    }

    @NonNull
    public static re0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.luck_prize_base_filter_bottom_operate, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
