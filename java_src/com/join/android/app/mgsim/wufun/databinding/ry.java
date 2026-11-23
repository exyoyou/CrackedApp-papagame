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

/* JADX INFO: loaded from: classes4.dex */
public final class ry implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RecyclerView f44556c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44557d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44558e;

    private ry(@NonNull ConstraintLayout rootView, @NonNull RecyclerView rvList, @NonNull TextView tvBtn1, @NonNull TextView tvText1) {
        this.f44555b = rootView;
        this.f44556c = rvList;
        this.f44557d = tvBtn1;
        this.f44558e = tvText1;
    }

    @NonNull
    public static ry bind(@NonNull View rootView) {
        int i10 = R.id.rv_list;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_list);
        if (recyclerView != null) {
            i10 = R.id.tv_btn_1;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_1);
            if (textView != null) {
                i10 = R.id.tv_text_1;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                if (textView2 != null) {
                    return new ry((ConstraintLayout) rootView, recyclerView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ry inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44555b;
    }

    @NonNull
    public static ry inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_daily_find_day_guess, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
