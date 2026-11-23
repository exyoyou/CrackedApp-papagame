package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.CornersLinearLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class mf0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CornersLinearLayout f41864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f41865c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CornersLinearLayout f41866d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f41867e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41868f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41869g;

    private mf0(@NonNull CornersLinearLayout rootView, @NonNull Button best, @NonNull CornersLinearLayout clView, @NonNull View forumPostDivider, @NonNull TextView subject, @NonNull LinearLayout subjectMain) {
        this.f41864b = rootView;
        this.f41865c = best;
        this.f41866d = clView;
        this.f41867e = forumPostDivider;
        this.f41868f = subject;
        this.f41869g = subjectMain;
    }

    @NonNull
    public static mf0 bind(@NonNull View rootView) {
        int i10 = R.id.best;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.best);
        if (button != null) {
            CornersLinearLayout cornersLinearLayout = (CornersLinearLayout) rootView;
            i10 = R.id.forum_post_divider;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.forum_post_divider);
            if (viewFindChildViewById != null) {
                i10 = R.id.subject;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.subject);
                if (textView != null) {
                    i10 = R.id.subjectMain;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.subjectMain);
                    if (linearLayout != null) {
                        return new mf0(cornersLinearLayout, button, cornersLinearLayout, viewFindChildViewById, textView, linearLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mf0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CornersLinearLayout getRoot() {
        return this.f41864b;
    }

    @NonNull
    public static mf0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_f_item_post_subject, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
