package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyInnerScrollView;
import com.join.mgps.customview.NoScrollListView;

/* JADX INFO: loaded from: classes4.dex */
public final class xj0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final MyInnerScrollView f47264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final NoScrollListView f47265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final MyInnerScrollView f47266d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47267e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f47268f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47269g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f47270h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ProgressBar f47271i;

    private xj0(@NonNull MyInnerScrollView rootView, @NonNull NoScrollListView commitListView, @NonNull MyInnerScrollView mInnerScrollView, @NonNull TextView textMsg, @NonNull View transparentView, @NonNull RelativeLayout xlistviewFooterContent, @NonNull TextView xlistviewFooterHintTextview, @NonNull ProgressBar xlistviewFooterProgressbar) {
        this.f47264b = rootView;
        this.f47265c = commitListView;
        this.f47266d = mInnerScrollView;
        this.f47267e = textMsg;
        this.f47268f = transparentView;
        this.f47269g = xlistviewFooterContent;
        this.f47270h = xlistviewFooterHintTextview;
        this.f47271i = xlistviewFooterProgressbar;
    }

    @NonNull
    public static xj0 bind(@NonNull View rootView) {
        int i10 = R.id.commitListView;
        NoScrollListView noScrollListView = (NoScrollListView) ViewBindings.findChildViewById(rootView, R.id.commitListView);
        if (noScrollListView != null) {
            MyInnerScrollView myInnerScrollView = (MyInnerScrollView) rootView;
            i10 = R.id.textMsg;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textMsg);
            if (textView != null) {
                i10 = R.id.transparentView;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.transparentView);
                if (viewFindChildViewById != null) {
                    i10 = R.id.xlistview_footer_content;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.xlistview_footer_content);
                    if (relativeLayout != null) {
                        i10 = R.id.xlistview_footer_hint_textview;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.xlistview_footer_hint_textview);
                        if (textView2 != null) {
                            i10 = R.id.xlistview_footer_progressbar;
                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.xlistview_footer_progressbar);
                            if (progressBar != null) {
                                return new xj0(myInnerScrollView, noScrollListView, myInnerScrollView, textView, viewFindChildViewById, relativeLayout, textView2, progressBar);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static xj0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public MyInnerScrollView getRoot() {
        return this.f47264b;
    }

    @NonNull
    public static xj0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_game_commit_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
