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
public final class nk0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42376c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42377d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42378e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42379f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f42380g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f42381h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f42382i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f42383j;

    private nk0(@NonNull LinearLayout rootView, @NonNull RelativeLayout backLayout, @NonNull TextView editRecommend, @NonNull TextView gameDescribe, @NonNull TextView htmlEditRecommend, @NonNull TextView htmlGameDescribe, @NonNull TextView htmlGameDescribeShort, @NonNull View lineView, @NonNull TextView textMore) {
        this.f42375b = rootView;
        this.f42376c = backLayout;
        this.f42377d = editRecommend;
        this.f42378e = gameDescribe;
        this.f42379f = htmlEditRecommend;
        this.f42380g = htmlGameDescribe;
        this.f42381h = htmlGameDescribeShort;
        this.f42382i = lineView;
        this.f42383j = textMore;
    }

    @NonNull
    public static nk0 bind(@NonNull View rootView) {
        int i10 = R.id.backLayout;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout);
        if (relativeLayout != null) {
            i10 = R.id.editRecommend;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.editRecommend);
            if (textView != null) {
                i10 = R.id.gameDescribe;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameDescribe);
                if (textView2 != null) {
                    i10 = R.id.htmlEditRecommend;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.htmlEditRecommend);
                    if (textView3 != null) {
                        i10 = R.id.htmlGameDescribe;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.htmlGameDescribe);
                        if (textView4 != null) {
                            i10 = R.id.htmlGameDescribeShort;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.htmlGameDescribeShort);
                            if (textView5 != null) {
                                i10 = R.id.lineView;
                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.lineView);
                                if (viewFindChildViewById != null) {
                                    i10 = R.id.textMore;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textMore);
                                    if (textView6 != null) {
                                        return new nk0((LinearLayout) rootView, relativeLayout, textView, textView2, textView3, textView4, textView5, viewFindChildViewById, textView6);
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
    public static nk0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42375b;
    }

    @NonNull
    public static nk0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_gamedetail_web, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
