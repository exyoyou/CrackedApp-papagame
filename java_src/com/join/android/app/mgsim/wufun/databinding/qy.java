package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.customview.MViewpagerV4;
import com.papa91.arc.widget.htmltext.HtmlTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class qy implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44087c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CardView f44088d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f44089e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final HtmlTextView f44090f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f44091g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f44092h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44093i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RecyclerView f44094j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44095k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f44096l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f44097m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f44098n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f44099o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final View f44100p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final View f44101q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final View f44102r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final MViewpagerV4 f44103s;

    private qy(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout clRoot, @NonNull CardView cllHead, @NonNull DownloadNormalView dvView, @NonNull HtmlTextView htvText1, @NonNull ImageView iv1, @NonNull ImageView iv2, @NonNull LinearLayout llTopImages, @NonNull RecyclerView rvTopList, @NonNull SimpleDraweeView sdvIcon, @NonNull TextView tvText1, @NonNull TextView tvText2, @NonNull TextView tvText3, @NonNull TextView tvText4, @NonNull View v10, @NonNull View vInfo, @NonNull View vLine1, @NonNull MViewpagerV4 viewPager1) {
        this.f44086b = rootView;
        this.f44087c = clRoot;
        this.f44088d = cllHead;
        this.f44089e = dvView;
        this.f44090f = htvText1;
        this.f44091g = iv1;
        this.f44092h = iv2;
        this.f44093i = llTopImages;
        this.f44094j = rvTopList;
        this.f44095k = sdvIcon;
        this.f44096l = tvText1;
        this.f44097m = tvText2;
        this.f44098n = tvText3;
        this.f44099o = tvText4;
        this.f44100p = v10;
        this.f44101q = vInfo;
        this.f44102r = vLine1;
        this.f44103s = viewPager1;
    }

    @NonNull
    public static qy bind(@NonNull View rootView) {
        ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
        int i10 = R.id.cll_head;
        CardView cardView = (CardView) ViewBindings.findChildViewById(rootView, R.id.cll_head);
        if (cardView != null) {
            i10 = R.id.dv_view;
            DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dv_view);
            if (downloadNormalView != null) {
                i10 = R.id.htv_text_1;
                HtmlTextView htmlTextView = (HtmlTextView) ViewBindings.findChildViewById(rootView, R.id.htv_text_1);
                if (htmlTextView != null) {
                    i10 = R.id.iv_1;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
                    if (imageView != null) {
                        i10 = R.id.iv_2;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_2);
                        if (imageView2 != null) {
                            i10 = R.id.ll_top_images;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_top_images);
                            if (linearLayout != null) {
                                i10 = R.id.rv_top_list;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_top_list);
                                if (recyclerView != null) {
                                    i10 = R.id.sdv_icon;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_icon);
                                    if (simpleDraweeView != null) {
                                        i10 = R.id.tv_text_1;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                                        if (textView != null) {
                                            i10 = R.id.tv_text_2;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_2);
                                            if (textView2 != null) {
                                                i10 = R.id.tv_text_3;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_3);
                                                if (textView3 != null) {
                                                    i10 = R.id.tv_text_4;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_4);
                                                    if (textView4 != null) {
                                                        i10 = R.id.v_2;
                                                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_2);
                                                        if (viewFindChildViewById != null) {
                                                            i10 = R.id.v_info;
                                                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.v_info);
                                                            if (viewFindChildViewById2 != null) {
                                                                i10 = R.id.v_line_1;
                                                                View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.v_line_1);
                                                                if (viewFindChildViewById3 != null) {
                                                                    i10 = R.id.viewPager1;
                                                                    MViewpagerV4 mViewpagerV4 = (MViewpagerV4) ViewBindings.findChildViewById(rootView, R.id.viewPager1);
                                                                    if (mViewpagerV4 != null) {
                                                                        return new qy(constraintLayout, constraintLayout, cardView, downloadNormalView, htmlTextView, imageView, imageView2, linearLayout, recyclerView, simpleDraweeView, textView, textView2, textView3, textView4, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3, mViewpagerV4);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qy inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44086b;
    }

    @NonNull
    public static qy inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_daily_find_day_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
