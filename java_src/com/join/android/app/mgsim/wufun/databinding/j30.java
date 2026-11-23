package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CornersLinearLayout;
import com.join.mgps.customview.textview.MovementTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class j30 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CornersLinearLayout f40063c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40064d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final MovementTextView f40065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f40066f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f40067g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f40068h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40069i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40070j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f40071k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f40072l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f40073m;

    private j30(@NonNull LinearLayout rootView, @NonNull CornersLinearLayout cllView, @NonNull LinearLayout commentAllRootLl, @NonNull MovementTextView content, @NonNull ImageView ivMore, @NonNull ImageView ivPraise, @NonNull View layoutTop, @NonNull LinearLayout llReplay, @NonNull SimpleDraweeView sivHead, @NonNull TextView tvReplayNum, @NonNull TextView tvStarNum, @NonNull TextView userName) {
        this.f40062b = rootView;
        this.f40063c = cllView;
        this.f40064d = commentAllRootLl;
        this.f40065e = content;
        this.f40066f = ivMore;
        this.f40067g = ivPraise;
        this.f40068h = layoutTop;
        this.f40069i = llReplay;
        this.f40070j = sivHead;
        this.f40071k = tvReplayNum;
        this.f40072l = tvStarNum;
        this.f40073m = userName;
    }

    @NonNull
    public static j30 bind(@NonNull View rootView) {
        int i10 = R.id.cll_view;
        CornersLinearLayout cornersLinearLayout = (CornersLinearLayout) ViewBindings.findChildViewById(rootView, R.id.cll_view);
        if (cornersLinearLayout != null) {
            LinearLayout linearLayout = (LinearLayout) rootView;
            i10 = R.id.content;
            MovementTextView movementTextView = (MovementTextView) ViewBindings.findChildViewById(rootView, R.id.content);
            if (movementTextView != null) {
                i10 = R.id.iv_more;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_more);
                if (imageView != null) {
                    i10 = R.id.iv_praise;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_praise);
                    if (imageView2 != null) {
                        i10 = R.id.layoutTop;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.layoutTop);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.ll_replay;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_replay);
                            if (linearLayout2 != null) {
                                i10 = R.id.siv_head;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.siv_head);
                                if (simpleDraweeView != null) {
                                    i10 = R.id.tv_replay_num;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_replay_num);
                                    if (textView != null) {
                                        i10 = R.id.tv_star_num;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_star_num);
                                        if (textView2 != null) {
                                            i10 = R.id.userName;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userName);
                                            if (textView3 != null) {
                                                return new j30(linearLayout, cornersLinearLayout, linearLayout, movementTextView, imageView, imageView2, viewFindChildViewById, linearLayout2, simpleDraweeView, textView, textView2, textView3);
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
    public static j30 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40062b;
    }

    @NonNull
    public static j30 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_introduction_commont, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
