package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class pq implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43479c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43480d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43481e;

    private pq(@NonNull LinearLayout rootView, @NonNull RelativeLayout commentFooterLayout, @NonNull TextView goforum, @NonNull TextView showAllCommit) {
        this.f43478b = rootView;
        this.f43479c = commentFooterLayout;
        this.f43480d = goforum;
        this.f43481e = showAllCommit;
    }

    @NonNull
    public static pq bind(@NonNull View rootView) {
        int i10 = R.id.commentFooterLayout;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.commentFooterLayout);
        if (relativeLayout != null) {
            i10 = R.id.goforum;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.goforum);
            if (textView != null) {
                i10 = R.id.showAllCommit;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.showAllCommit);
                if (textView2 != null) {
                    return new pq((LinearLayout) rootView, relativeLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pq inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43478b;
    }

    @NonNull
    public static pq inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_commit_footer, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
