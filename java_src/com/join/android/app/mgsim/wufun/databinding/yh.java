package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class yh implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f47726c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f47727d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f47728e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47729f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f47730g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f47731h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f47732i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f47733j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final View f47734k;

    private yh(@NonNull ConstraintLayout rootView, @NonNull Button btnDownload, @NonNull Button btnSearch, @NonNull Button btnSource, @NonNull LinearLayout close, @NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout container, @NonNull ConstraintLayout outside, @NonNull TextView textView37, @NonNull View view3) {
        this.f47725b = rootView;
        this.f47726c = btnDownload;
        this.f47727d = btnSearch;
        this.f47728e = btnSource;
        this.f47729f = close;
        this.f47730g = constraintLayout;
        this.f47731h = container;
        this.f47732i = outside;
        this.f47733j = textView37;
        this.f47734k = view3;
    }

    @NonNull
    public static yh bind(@NonNull View rootView) {
        int i10 = R.id.btnDownload;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btnDownload);
        if (button != null) {
            i10 = R.id.btnSearch;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.btnSearch);
            if (button2 != null) {
                i10 = R.id.btnSource;
                Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.btnSource);
                if (button3 != null) {
                    i10 = R.id.close;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.close);
                    if (linearLayout != null) {
                        i10 = R.id.constraintLayout;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.constraintLayout);
                        if (constraintLayout != null) {
                            ConstraintLayout constraintLayout2 = (ConstraintLayout) rootView;
                            i10 = R.id.outside;
                            ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.outside);
                            if (constraintLayout3 != null) {
                                i10 = R.id.textView37;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView37);
                                if (textView != null) {
                                    i10 = R.id.view3;
                                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.view3);
                                    if (viewFindChildViewById != null) {
                                        return new yh(constraintLayout2, button, button2, button3, linearLayout, constraintLayout, constraintLayout2, constraintLayout3, textView, viewFindChildViewById);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static yh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f47725b;
    }

    @NonNull
    public static yh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_sniffer_promt, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
