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
public final class ig0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final HListView f39808c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39809d;

    private ig0(@NonNull LinearLayout rootView, @NonNull HListView list, @NonNull TextView noMoreModerator) {
        this.f39807b = rootView;
        this.f39808c = list;
        this.f39809d = noMoreModerator;
    }

    @NonNull
    public static ig0 bind(@NonNull View rootView) {
        int i10 = R.id.list;
        HListView hListView = (HListView) ViewBindings.findChildViewById(rootView, R.id.list);
        if (hListView != null) {
            i10 = R.id.noMoreModerator;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.noMoreModerator);
            if (textView != null) {
                return new ig0((LinearLayout) rootView, hListView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ig0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39807b;
    }

    @NonNull
    public static ig0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_forum_t_member_item_moderators, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
