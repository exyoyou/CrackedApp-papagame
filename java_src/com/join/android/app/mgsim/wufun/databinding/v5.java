package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.AutoScrollViewPager;

/* JADX INFO: loaded from: classes4.dex */
public final class v5 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46060c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46061d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final AutoScrollViewPager f46062e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f46063f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f46064g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f46065h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46066i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f46067j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f46068k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f46069l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ListView f46070m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f46071n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final Button f46072o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f46073p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f46074q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f46075r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46076s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final ImageView f46077t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final ListView f46078u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46079v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f46080w;

    private v5(@NonNull RelativeLayout rootView, @NonNull RelativeLayout infoRl, @NonNull SimpleDraweeView paiweiAdIv, @NonNull AutoScrollViewPager paiweiAdViewpager, @NonNull ImageView paiweiBackIv, @NonNull TextView paiweiCionTv, @NonNull ImageView paiweiHelpIb, @NonNull TextView paiweiInfoTv1, @NonNull TextView paiweiInfoTv2, @NonNull TextView paiweiInfoTv3, @NonNull TextView paiweiInfoTv4, @NonNull ListView paiweiListview, @NonNull TextView paiweiNullTv, @NonNull Button paiweiStartBt, @NonNull TextView paiweiStartNameTv, @NonNull TextView paiweiStartOrderTv, @NonNull TextView paiweiStartTimeTv, @NonNull RelativeLayout paiweiTitleRl, @NonNull ImageView selectRoloIv, @NonNull ListView selectRoloListview, @NonNull LinearLayout selectRoloLl, @NonNull TextView selectRoloTx) {
        this.f46059b = rootView;
        this.f46060c = infoRl;
        this.f46061d = paiweiAdIv;
        this.f46062e = paiweiAdViewpager;
        this.f46063f = paiweiBackIv;
        this.f46064g = paiweiCionTv;
        this.f46065h = paiweiHelpIb;
        this.f46066i = paiweiInfoTv1;
        this.f46067j = paiweiInfoTv2;
        this.f46068k = paiweiInfoTv3;
        this.f46069l = paiweiInfoTv4;
        this.f46070m = paiweiListview;
        this.f46071n = paiweiNullTv;
        this.f46072o = paiweiStartBt;
        this.f46073p = paiweiStartNameTv;
        this.f46074q = paiweiStartOrderTv;
        this.f46075r = paiweiStartTimeTv;
        this.f46076s = paiweiTitleRl;
        this.f46077t = selectRoloIv;
        this.f46078u = selectRoloListview;
        this.f46079v = selectRoloLl;
        this.f46080w = selectRoloTx;
    }

    @NonNull
    public static v5 bind(@NonNull View rootView) {
        int i10 = R.id.info_rl;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.info_rl);
        if (relativeLayout != null) {
            i10 = R.id.paiwei_ad_iv;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.paiwei_ad_iv);
            if (simpleDraweeView != null) {
                i10 = R.id.paiwei_ad_viewpager;
                AutoScrollViewPager autoScrollViewPager = (AutoScrollViewPager) ViewBindings.findChildViewById(rootView, R.id.paiwei_ad_viewpager);
                if (autoScrollViewPager != null) {
                    i10 = R.id.paiwei_back_iv;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.paiwei_back_iv);
                    if (imageView != null) {
                        i10 = R.id.paiwei_cion_tv;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.paiwei_cion_tv);
                        if (textView != null) {
                            i10 = R.id.paiwei_help_ib;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.paiwei_help_ib);
                            if (imageView2 != null) {
                                i10 = R.id.paiwei_info_tv1;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.paiwei_info_tv1);
                                if (textView2 != null) {
                                    i10 = R.id.paiwei_info_tv2;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.paiwei_info_tv2);
                                    if (textView3 != null) {
                                        i10 = R.id.paiwei_info_tv3;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.paiwei_info_tv3);
                                        if (textView4 != null) {
                                            i10 = R.id.paiwei_info_tv4;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.paiwei_info_tv4);
                                            if (textView5 != null) {
                                                i10 = R.id.paiwei_listview;
                                                ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.paiwei_listview);
                                                if (listView != null) {
                                                    i10 = R.id.paiwei_null_tv;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.paiwei_null_tv);
                                                    if (textView6 != null) {
                                                        i10 = R.id.paiwei_start_bt;
                                                        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.paiwei_start_bt);
                                                        if (button != null) {
                                                            i10 = R.id.paiwei_start_name_tv;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.paiwei_start_name_tv);
                                                            if (textView7 != null) {
                                                                i10 = R.id.paiwei_start_order_tv;
                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.paiwei_start_order_tv);
                                                                if (textView8 != null) {
                                                                    i10 = R.id.paiwei_start_time_tv;
                                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.paiwei_start_time_tv);
                                                                    if (textView9 != null) {
                                                                        i10 = R.id.paiwei_title_rl;
                                                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.paiwei_title_rl);
                                                                        if (relativeLayout2 != null) {
                                                                            i10 = R.id.select_rolo_iv;
                                                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.select_rolo_iv);
                                                                            if (imageView3 != null) {
                                                                                i10 = R.id.select_rolo_listview;
                                                                                ListView listView2 = (ListView) ViewBindings.findChildViewById(rootView, R.id.select_rolo_listview);
                                                                                if (listView2 != null) {
                                                                                    i10 = R.id.select_rolo_ll;
                                                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.select_rolo_ll);
                                                                                    if (linearLayout != null) {
                                                                                        i10 = R.id.select_rolo_tx;
                                                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.select_rolo_tx);
                                                                                        if (textView10 != null) {
                                                                                            return new v5((RelativeLayout) rootView, relativeLayout, simpleDraweeView, autoScrollViewPager, imageView, textView, imageView2, textView2, textView3, textView4, textView5, listView, textView6, button, textView7, textView8, textView9, relativeLayout2, imageView3, listView2, linearLayout, textView10);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static v5 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46059b;
    }

    @NonNull
    public static v5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activty_game_paiwei, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
