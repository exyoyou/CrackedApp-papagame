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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.AutoScrollViewPager;

/* JADX INFO: loaded from: classes4.dex */
public final class no0 implements ViewBinding {

    @NonNull
    public final TextView A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42448c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final AutoScrollViewPager f42449d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42450e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42451f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f42452g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f42453h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42454i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f42455j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f42456k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f42457l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f42458m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42459n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f42460o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f42461p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f42462q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42463r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42464s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42465t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42466u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42467v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f42468w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f42469x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final TextView f42470y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f42471z;

    private no0(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView adIvIcon, @NonNull AutoScrollViewPager adViewpager, @NonNull TextView eventGamenameTv, @NonNull TextView eventNikeTv, @NonNull TextView eventNumAfterTv, @NonNull TextView eventNumTv, @NonNull RelativeLayout eventRootRl, @NonNull TextView fcLine, @NonNull TextView fcNumTv, @NonNull TextView gbaLine, @NonNull TextView jiejiNumTv, @NonNull LinearLayout jingxuan, @NonNull TextView jingxuanLine, @NonNull TextView jingxuantext, @NonNull TextView latestNumTv, @NonNull LinearLayout llFastEntrance, @NonNull LinearLayout llFc, @NonNull LinearLayout llJieji, @NonNull LinearLayout llLatest, @NonNull LinearLayout llOthers, @NonNull TextView newLine, @NonNull TextView tvFC, @NonNull TextView tvGBA, @NonNull TextView tvJingxuan, @NonNull TextView tvNew) {
        this.f42447b = rootView;
        this.f42448c = adIvIcon;
        this.f42449d = adViewpager;
        this.f42450e = eventGamenameTv;
        this.f42451f = eventNikeTv;
        this.f42452g = eventNumAfterTv;
        this.f42453h = eventNumTv;
        this.f42454i = eventRootRl;
        this.f42455j = fcLine;
        this.f42456k = fcNumTv;
        this.f42457l = gbaLine;
        this.f42458m = jiejiNumTv;
        this.f42459n = jingxuan;
        this.f42460o = jingxuanLine;
        this.f42461p = jingxuantext;
        this.f42462q = latestNumTv;
        this.f42463r = llFastEntrance;
        this.f42464s = llFc;
        this.f42465t = llJieji;
        this.f42466u = llLatest;
        this.f42467v = llOthers;
        this.f42468w = newLine;
        this.f42469x = tvFC;
        this.f42470y = tvGBA;
        this.f42471z = tvJingxuan;
        this.A = tvNew;
    }

    @NonNull
    public static no0 bind(@NonNull View rootView) {
        int i10 = R.id.ad_iv_icon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ad_iv_icon);
        if (simpleDraweeView != null) {
            i10 = R.id.ad_viewpager;
            AutoScrollViewPager autoScrollViewPager = (AutoScrollViewPager) ViewBindings.findChildViewById(rootView, R.id.ad_viewpager);
            if (autoScrollViewPager != null) {
                i10 = R.id.event_gamename_tv;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.event_gamename_tv);
                if (textView != null) {
                    i10 = R.id.event_nike_tv;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.event_nike_tv);
                    if (textView2 != null) {
                        i10 = R.id.event_num_after_tv;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.event_num_after_tv);
                        if (textView3 != null) {
                            i10 = R.id.event_num_tv;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.event_num_tv);
                            if (textView4 != null) {
                                i10 = R.id.event_root_rl;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.event_root_rl);
                                if (relativeLayout != null) {
                                    i10 = R.id.fcLine;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.fcLine);
                                    if (textView5 != null) {
                                        i10 = R.id.fc_num_tv;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.fc_num_tv);
                                        if (textView6 != null) {
                                            i10 = R.id.gbaLine;
                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gbaLine);
                                            if (textView7 != null) {
                                                i10 = R.id.jieji_num_tv;
                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.jieji_num_tv);
                                                if (textView8 != null) {
                                                    i10 = R.id.jingxuan;
                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.jingxuan);
                                                    if (linearLayout != null) {
                                                        i10 = R.id.jingxuanLine;
                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.jingxuanLine);
                                                        if (textView9 != null) {
                                                            i10 = R.id.jingxuantext;
                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.jingxuantext);
                                                            if (textView10 != null) {
                                                                i10 = R.id.latest_num_tv;
                                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.latest_num_tv);
                                                                if (textView11 != null) {
                                                                    i10 = R.id.ll_fast_entrance;
                                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_fast_entrance);
                                                                    if (linearLayout2 != null) {
                                                                        i10 = R.id.ll_fc;
                                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_fc);
                                                                        if (linearLayout3 != null) {
                                                                            i10 = R.id.ll_jieji;
                                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_jieji);
                                                                            if (linearLayout4 != null) {
                                                                                i10 = R.id.ll_latest;
                                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_latest);
                                                                                if (linearLayout5 != null) {
                                                                                    i10 = R.id.ll_others;
                                                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_others);
                                                                                    if (linearLayout6 != null) {
                                                                                        i10 = R.id.newLine;
                                                                                        TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, R.id.newLine);
                                                                                        if (textView12 != null) {
                                                                                            i10 = R.id.tvFC;
                                                                                            TextView textView13 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvFC);
                                                                                            if (textView13 != null) {
                                                                                                i10 = R.id.tvGBA;
                                                                                                TextView textView14 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGBA);
                                                                                                if (textView14 != null) {
                                                                                                    i10 = R.id.tvJingxuan;
                                                                                                    TextView textView15 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvJingxuan);
                                                                                                    if (textView15 != null) {
                                                                                                        i10 = R.id.tvNew;
                                                                                                        TextView textView16 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvNew);
                                                                                                        if (textView16 != null) {
                                                                                                            return new no0((LinearLayout) rootView, simpleDraweeView, autoScrollViewPager, textView, textView2, textView3, textView4, relativeLayout, textView5, textView6, textView7, textView8, linearLayout, textView9, textView10, textView11, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, textView12, textView13, textView14, textView15, textView16);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static no0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42447b;
    }

    @NonNull
    public static no0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.new_arena_list_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
