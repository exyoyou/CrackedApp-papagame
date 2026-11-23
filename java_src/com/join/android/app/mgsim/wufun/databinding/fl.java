package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CornersLinearLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class fl implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CornersLinearLayout f38416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38417c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f38418d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f38419e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f38420f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38421g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38422h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38423i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f38424j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RecyclerView f38425k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f38426l;

    private fl(@NonNull CornersLinearLayout rootView, @NonNull TextView editText5, @NonNull ImageView imageView44, @NonNull ImageView ivBack, @NonNull ImageView ivClose, @NonNull LinearLayout llEmpty, @NonNull RelativeLayout rlCommentDetail, @NonNull RelativeLayout rlCommentList, @NonNull XRecyclerView rvCommentDetailList, @NonNull RecyclerView rvListData, @NonNull TextView tvTitle) {
        this.f38416b = rootView;
        this.f38417c = editText5;
        this.f38418d = imageView44;
        this.f38419e = ivBack;
        this.f38420f = ivClose;
        this.f38421g = llEmpty;
        this.f38422h = rlCommentDetail;
        this.f38423i = rlCommentList;
        this.f38424j = rvCommentDetailList;
        this.f38425k = rvListData;
        this.f38426l = tvTitle;
    }

    @NonNull
    public static fl bind(@NonNull View rootView) {
        int i10 = R.id.editText5;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.editText5);
        if (textView != null) {
            i10 = R.id.imageView44;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView44);
            if (imageView != null) {
                i10 = R.id.iv_back;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_back);
                if (imageView2 != null) {
                    i10 = R.id.iv_close;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                    if (imageView3 != null) {
                        i10 = R.id.ll_empty;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_empty);
                        if (linearLayout != null) {
                            i10 = R.id.rl_comment_detail;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_comment_detail);
                            if (relativeLayout != null) {
                                i10 = R.id.rl_comment_list;
                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_comment_list);
                                if (relativeLayout2 != null) {
                                    i10 = R.id.rv_comment_detail_list;
                                    XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_comment_detail_list);
                                    if (xRecyclerView != null) {
                                        i10 = R.id.rv_list_data;
                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_list_data);
                                        if (recyclerView != null) {
                                            i10 = R.id.tv_title;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                                            if (textView2 != null) {
                                                return new fl((CornersLinearLayout) rootView, textView, imageView, imageView2, imageView3, linearLayout, relativeLayout, relativeLayout2, xRecyclerView, recyclerView, textView2);
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
    public static fl inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CornersLinearLayout getRoot() {
        return this.f38416b;
    }

    @NonNull
    public static fl inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_comment_list_introduction, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
