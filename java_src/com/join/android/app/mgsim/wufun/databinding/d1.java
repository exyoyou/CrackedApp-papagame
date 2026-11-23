package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class d1 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f37188c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f37189d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37190e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f37191f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RecyclerView f37192g;

    private d1(@NonNull LinearLayout rootView, @NonNull TextView btnSubmit, @NonNull EditText etDesc, @NonNull LinearLayout llMain, @NonNull ConstraintLayout outside, @NonNull RecyclerView rvReportType) {
        this.f37187b = rootView;
        this.f37188c = btnSubmit;
        this.f37189d = etDesc;
        this.f37190e = llMain;
        this.f37191f = outside;
        this.f37192g = rvReportType;
    }

    @NonNull
    public static d1 bind(@NonNull View rootView) {
        int i10 = R.id.btnSubmit;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.btnSubmit);
        if (textView != null) {
            i10 = R.id.etDesc;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.etDesc);
            if (editText != null) {
                i10 = R.id.llMain;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llMain);
                if (linearLayout != null) {
                    i10 = R.id.outside;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.outside);
                    if (constraintLayout != null) {
                        i10 = R.id.rvReportType;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvReportType);
                        if (recyclerView != null) {
                            return new d1((LinearLayout) rootView, textView, editText, linearLayout, constraintLayout, recyclerView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static d1 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37187b;
    }

    @NonNull
    public static d1 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_end_game_report, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
