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

/* JADX INFO: loaded from: classes4.dex */
public final class sk implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44819c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f44820d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f44821e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44822f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44823g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44824h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f44825i;

    private sk(@NonNull LinearLayout rootView, @NonNull LinearLayout categoryLayout, @NonNull View categoryRankArrow, @NonNull View categoryRankImageCategory, @NonNull TextView categoryRankTextCategory, @NonNull LinearLayout searchLayout, @NonNull TextView searchTv, @NonNull View searchView) {
        this.f44818b = rootView;
        this.f44819c = categoryLayout;
        this.f44820d = categoryRankArrow;
        this.f44821e = categoryRankImageCategory;
        this.f44822f = categoryRankTextCategory;
        this.f44823g = searchLayout;
        this.f44824h = searchTv;
        this.f44825i = searchView;
    }

    @NonNull
    public static sk bind(@NonNull View rootView) {
        int i10 = R.id.category_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.category_layout);
        if (linearLayout != null) {
            i10 = R.id.category_rank_arrow;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.category_rank_arrow);
            if (viewFindChildViewById != null) {
                i10 = R.id.category_rank_image_category;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.category_rank_image_category);
                if (viewFindChildViewById2 != null) {
                    i10 = R.id.category_rank_text_category;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.category_rank_text_category);
                    if (textView != null) {
                        i10 = R.id.search_layout;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.search_layout);
                        if (linearLayout2 != null) {
                            i10 = R.id.search_tv;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.search_tv);
                            if (textView2 != null) {
                                i10 = R.id.search_view;
                                View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.search_view);
                                if (viewFindChildViewById3 != null) {
                                    return new sk((LinearLayout) rootView, linearLayout, viewFindChildViewById, viewFindChildViewById2, textView, linearLayout2, textView2, viewFindChildViewById3);
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
    public static sk inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44818b;
    }

    @NonNull
    public static sk inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.forum_theme_list_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
