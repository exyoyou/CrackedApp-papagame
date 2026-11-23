package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LoadMoreRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public final class fb implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38326c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LoadMoreRecyclerView f38327d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38328e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38329f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f38330g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f38331h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f38332i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38333j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f38334k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f38335l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f38336m;

    private fb(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull LoadMoreRecyclerView commentAllList, @NonNull TextView editText5, @NonNull LinearLayout goCommit, @NonNull ImageView imageView44, @NonNull NestedScrollView noCommentLl, @NonNull ImageView progressBar2, @NonNull LinearLayout starlayout, @NonNull TextView textMessage, @NonNull TextView textTopRight, @NonNull TextView titleTextview) {
        this.f38325b = rootView;
        this.f38326c = backImage;
        this.f38327d = commentAllList;
        this.f38328e = editText5;
        this.f38329f = goCommit;
        this.f38330g = imageView44;
        this.f38331h = noCommentLl;
        this.f38332i = progressBar2;
        this.f38333j = starlayout;
        this.f38334k = textMessage;
        this.f38335l = textTopRight;
        this.f38336m = titleTextview;
    }

    @NonNull
    public static fb bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.comment_all_list;
            LoadMoreRecyclerView loadMoreRecyclerView = (LoadMoreRecyclerView) ViewBindings.findChildViewById(rootView, R.id.comment_all_list);
            if (loadMoreRecyclerView != null) {
                i10 = R.id.editText5;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.editText5);
                if (textView != null) {
                    i10 = R.id.goCommit;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.goCommit);
                    if (linearLayout != null) {
                        i10 = R.id.imageView44;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView44);
                        if (imageView2 != null) {
                            i10 = R.id.noCommentLl;
                            NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(rootView, R.id.noCommentLl);
                            if (nestedScrollView != null) {
                                i10 = R.id.progressBar2;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.progressBar2);
                                if (imageView3 != null) {
                                    i10 = R.id.starlayout;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.starlayout);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.textMessage;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textMessage);
                                        if (textView2 != null) {
                                            i10 = R.id.textTopRight;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textTopRight);
                                            if (textView3 != null) {
                                                i10 = R.id.title_textview;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                                                if (textView4 != null) {
                                                    return new fb((LinearLayout) rootView, imageView, loadMoreRecyclerView, textView, linearLayout, imageView2, nestedScrollView, imageView3, linearLayout2, textView2, textView3, textView4);
                                                }
                                            }
                                        }
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
    public static fb inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38325b;
    }

    @NonNull
    public static fb inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.comment_all_list_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
