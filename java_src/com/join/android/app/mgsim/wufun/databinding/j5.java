package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
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
public final class j5 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40091c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f40092d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f40093e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40094f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f40095g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RecyclerView f40096h;

    private j5(@NonNull LinearLayout rootView, @NonNull TextView btnSubmit, @NonNull EditText etDesc, @NonNull ImageView ivClose, @NonNull LinearLayout llMain, @NonNull ConstraintLayout outside, @NonNull RecyclerView rvReportType) {
        this.f40090b = rootView;
        this.f40091c = btnSubmit;
        this.f40092d = etDesc;
        this.f40093e = ivClose;
        this.f40094f = llMain;
        this.f40095g = outside;
        this.f40096h = rvReportType;
    }

    @NonNull
    public static j5 bind(@NonNull View rootView) {
        int i10 = R.id.btnSubmit;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.btnSubmit);
        if (textView != null) {
            i10 = R.id.etDesc;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.etDesc);
            if (editText != null) {
                i10 = R.id.ivClose;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivClose);
                if (imageView != null) {
                    i10 = R.id.llMain;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llMain);
                    if (linearLayout != null) {
                        i10 = R.id.outside;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.outside);
                        if (constraintLayout != null) {
                            i10 = R.id.rvReportType;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvReportType);
                            if (recyclerView != null) {
                                return new j5((LinearLayout) rootView, textView, editText, imageView, linearLayout, constraintLayout, recyclerView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static j5 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40090b;
    }

    @NonNull
    public static j5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_uninstall_wufun_reason, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
