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
import com.join.mgps.customview.XListViewIntercept;

/* JADX INFO: loaded from: classes4.dex */
public final class fd implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XListViewIntercept f38355c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38356d;

    private fd(@NonNull LinearLayout rootView, @NonNull XListViewIntercept commentListView, @NonNull TextView noComentText) {
        this.f38354b = rootView;
        this.f38355c = commentListView;
        this.f38356d = noComentText;
    }

    @NonNull
    public static fd bind(@NonNull View rootView) {
        int i10 = R.id.commentListView;
        XListViewIntercept xListViewIntercept = (XListViewIntercept) ViewBindings.findChildViewById(rootView, R.id.commentListView);
        if (xListViewIntercept != null) {
            i10 = R.id.noComentText;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.noComentText);
            if (textView != null) {
                return new fd((LinearLayout) rootView, xListViewIntercept, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static fd inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38354b;
    }

    @NonNull
    public static fd inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.detial_comment_list_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
