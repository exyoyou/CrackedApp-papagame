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

/* JADX INFO: loaded from: classes4.dex */
public final class nf0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42307b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f42308c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f42309d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42310e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42311f;

    private nf0(@NonNull LinearLayout rootView, @NonNull Button best, @NonNull View forumPostDivider, @NonNull TextView subject, @NonNull LinearLayout subjectMain) {
        this.f42307b = rootView;
        this.f42308c = best;
        this.f42309d = forumPostDivider;
        this.f42310e = subject;
        this.f42311f = subjectMain;
    }

    @NonNull
    public static nf0 bind(@NonNull View rootView) {
        int i10 = R.id.best;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.best);
        if (button != null) {
            i10 = R.id.forum_post_divider;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.forum_post_divider);
            if (viewFindChildViewById != null) {
                i10 = R.id.subject;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.subject);
                if (textView != null) {
                    i10 = R.id.subjectMain;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.subjectMain);
                    if (linearLayout != null) {
                        return new nf0((LinearLayout) rootView, button, viewFindChildViewById, textView, linearLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static nf0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42307b;
    }

    @NonNull
    public static nf0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_f_item_post_subject_label, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
