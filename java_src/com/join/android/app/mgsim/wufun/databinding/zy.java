package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class zy implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f48481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f48482c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f48483d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f48484e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f48485f;

    private zy(@NonNull ConstraintLayout rootView, @NonNull TextView dateCellDay, @NonNull View dateCellDot, @NonNull View dateCellTodayBg, @NonNull TextView dateCellWeekday) {
        this.f48481b = rootView;
        this.f48482c = dateCellDay;
        this.f48483d = dateCellDot;
        this.f48484e = dateCellTodayBg;
        this.f48485f = dateCellWeekday;
    }

    @NonNull
    public static zy bind(@NonNull View rootView) {
        int i10 = R.id.dateCellDay;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dateCellDay);
        if (textView != null) {
            i10 = R.id.dateCellDot;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.dateCellDot);
            if (viewFindChildViewById != null) {
                i10 = R.id.dateCellTodayBg;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.dateCellTodayBg);
                if (viewFindChildViewById2 != null) {
                    i10 = R.id.dateCellWeekday;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dateCellWeekday);
                    if (textView2 != null) {
                        return new zy((ConstraintLayout) rootView, textView, viewFindChildViewById, viewFindChildViewById2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static zy inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f48481b;
    }

    @NonNull
    public static zy inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_date_cell, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
