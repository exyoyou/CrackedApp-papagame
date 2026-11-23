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
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;

/* JADX INFO: loaded from: classes4.dex */
public final class gh0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final HListView f38850c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38851d;

    private gh0(@NonNull LinearLayout rootView, @NonNull HListView list, @NonNull TextView textView51) {
        this.f38849b = rootView;
        this.f38850c = list;
        this.f38851d = textView51;
    }

    @NonNull
    public static gh0 bind(@NonNull View rootView) {
        int i10 = R.id.list;
        HListView hListView = (HListView) ViewBindings.findChildViewById(rootView, R.id.list);
        if (hListView != null) {
            i10 = R.id.textView51;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView51);
            if (textView != null) {
                return new gh0((LinearLayout) rootView, hListView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static gh0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38849b;
    }

    @NonNull
    public static gh0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_post_activity_item_employee_tags, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
