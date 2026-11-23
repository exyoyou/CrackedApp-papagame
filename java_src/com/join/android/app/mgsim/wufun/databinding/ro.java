package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ro implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Group f44438c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RecyclerView f44439d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44440e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44441f;

    private ro(@NonNull ConstraintLayout rootView, @NonNull Group groupMain, @NonNull RecyclerView rvRecom, @NonNull TextView tvRecGameount, @NonNull TextView tvTitleRecom) {
        this.f44437b = rootView;
        this.f44438c = groupMain;
        this.f44439d = rvRecom;
        this.f44440e = tvRecGameount;
        this.f44441f = tvTitleRecom;
    }

    @NonNull
    public static ro bind(@NonNull View rootView) {
        int i10 = R.id.groupMain;
        Group group = (Group) ViewBindings.findChildViewById(rootView, R.id.groupMain);
        if (group != null) {
            i10 = R.id.rvRecom;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvRecom);
            if (recyclerView != null) {
                i10 = R.id.tvRecGameount;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvRecGameount);
                if (textView != null) {
                    i10 = R.id.tvTitleRecom;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitleRecom);
                    if (textView2 != null) {
                        return new ro((ConstraintLayout) rootView, group, recyclerView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ro inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44437b;
    }

    @NonNull
    public static ro inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_simulator_recommend, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
