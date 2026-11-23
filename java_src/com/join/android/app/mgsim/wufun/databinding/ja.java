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
import com.join.mgps.customview.CloudDownButn;

/* JADX INFO: loaded from: classes4.dex */
public final class ja implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40151c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40152d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CloudDownButn f40153e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40154f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40155g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f40156h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40157i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40158j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f40159k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40160l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f40161m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f40162n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f40163o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f40164p;

    private ja(@NonNull LinearLayout rootView, @NonNull TextView authorname, @NonNull TextView backUp, @NonNull CloudDownButn downButton, @NonNull TextView goodauthor, @NonNull LinearLayout ivMore, @NonNull ImageView ivgoodauthor, @NonNull LinearLayout llInfo, @NonNull LinearLayout llVip, @NonNull TextView shape, @NonNull SimpleDraweeView simv, @NonNull TextView tvEvalute, @NonNull TextView tvName, @NonNull TextView tvcouldnum, @NonNull TextView tvgoodpraisenum) {
        this.f40150b = rootView;
        this.f40151c = authorname;
        this.f40152d = backUp;
        this.f40153e = downButton;
        this.f40154f = goodauthor;
        this.f40155g = ivMore;
        this.f40156h = ivgoodauthor;
        this.f40157i = llInfo;
        this.f40158j = llVip;
        this.f40159k = shape;
        this.f40160l = simv;
        this.f40161m = tvEvalute;
        this.f40162n = tvName;
        this.f40163o = tvcouldnum;
        this.f40164p = tvgoodpraisenum;
    }

    @NonNull
    public static ja bind(@NonNull View rootView) {
        int i10 = R.id.authorname;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.authorname);
        if (textView != null) {
            i10 = R.id.backUp;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.backUp);
            if (textView2 != null) {
                i10 = R.id.downButton;
                CloudDownButn cloudDownButn = (CloudDownButn) ViewBindings.findChildViewById(rootView, R.id.downButton);
                if (cloudDownButn != null) {
                    i10 = R.id.goodauthor;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.goodauthor);
                    if (textView3 != null) {
                        i10 = R.id.iv_more;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_more);
                        if (linearLayout != null) {
                            i10 = R.id.ivgoodauthor;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivgoodauthor);
                            if (imageView != null) {
                                i10 = R.id.ll_info;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_info);
                                if (linearLayout2 != null) {
                                    i10 = R.id.ll_vip;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_vip);
                                    if (linearLayout3 != null) {
                                        i10 = R.id.shape;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.shape);
                                        if (textView4 != null) {
                                            i10 = R.id.simv;
                                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.simv);
                                            if (simpleDraweeView != null) {
                                                i10 = R.id.tv_evalute;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_evalute);
                                                if (textView5 != null) {
                                                    i10 = R.id.tv_name;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_name);
                                                    if (textView6 != null) {
                                                        i10 = R.id.tvcouldnum;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvcouldnum);
                                                        if (textView7 != null) {
                                                            i10 = R.id.tvgoodpraisenum;
                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvgoodpraisenum);
                                                            if (textView8 != null) {
                                                                return new ja((LinearLayout) rootView, textView, textView2, cloudDownButn, textView3, linearLayout, imageView, linearLayout2, linearLayout3, textView4, simpleDraweeView, textView5, textView6, textView7, textView8);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ja inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40150b;
    }

    @NonNull
    public static ja inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.cloud_list_item2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
