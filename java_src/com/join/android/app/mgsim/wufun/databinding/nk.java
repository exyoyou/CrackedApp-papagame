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
import com.join.mgps.customview.MarqueeTextView;
import com.join.mgps.customview.WrapContentGridView;
import com.join.mgps.customview.XListView2;

/* JADX INFO: loaded from: classes4.dex */
public final class nk implements ViewBinding {

    @NonNull
    public final TextView A;

    @NonNull
    public final WrapContentGridView B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42351c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XListView2 f42352d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42353e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42354f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42355g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42356h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42357i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42358j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42359k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42360l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ut0 f42361m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final MarqueeTextView f42362n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final MarqueeTextView f42363o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final MarqueeTextView f42364p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final MarqueeTextView f42365q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final MarqueeTextView f42366r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final MarqueeTextView f42367s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f42368t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f42369u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f42370v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f42371w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f42372x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final TextView f42373y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f42374z;

    private nk(@NonNull LinearLayout rootView, @NonNull LinearLayout allSearch, @NonNull XListView2 autoListView, @NonNull TextView changeData, @NonNull RelativeLayout layout1, @NonNull RelativeLayout layout2, @NonNull RelativeLayout layout3, @NonNull RelativeLayout layout4, @NonNull RelativeLayout layout5, @NonNull RelativeLayout layout6, @NonNull LinearLayout llHotSearch, @NonNull ut0 searchBarLayout, @NonNull MarqueeTextView text1, @NonNull MarqueeTextView text2, @NonNull MarqueeTextView text3, @NonNull MarqueeTextView text4, @NonNull MarqueeTextView text5, @NonNull MarqueeTextView text6, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView tv1, @NonNull TextView tv2, @NonNull TextView tv3, @NonNull TextView tv4, @NonNull TextView tv5, @NonNull TextView tv6, @NonNull WrapContentGridView wrapGridView) {
        this.f42350b = rootView;
        this.f42351c = allSearch;
        this.f42352d = autoListView;
        this.f42353e = changeData;
        this.f42354f = layout1;
        this.f42355g = layout2;
        this.f42356h = layout3;
        this.f42357i = layout4;
        this.f42358j = layout5;
        this.f42359k = layout6;
        this.f42360l = llHotSearch;
        this.f42361m = searchBarLayout;
        this.f42362n = text1;
        this.f42363o = text2;
        this.f42364p = text3;
        this.f42365q = text4;
        this.f42366r = text5;
        this.f42367s = text6;
        this.f42368t = textView;
        this.f42369u = textView2;
        this.f42370v = tv1;
        this.f42371w = tv2;
        this.f42372x = tv3;
        this.f42373y = tv4;
        this.f42374z = tv5;
        this.A = tv6;
        this.B = wrapGridView;
    }

    @NonNull
    public static nk bind(@NonNull View rootView) {
        int i10 = R.id.allSearch;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.allSearch);
        if (linearLayout != null) {
            i10 = R.id.autoListView;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.autoListView);
            if (xListView2 != null) {
                i10 = R.id.change_data;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.change_data);
                if (textView != null) {
                    i10 = R.id.layout1;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.layout1);
                    if (relativeLayout != null) {
                        i10 = R.id.layout2;
                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.layout2);
                        if (relativeLayout2 != null) {
                            i10 = R.id.layout3;
                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.layout3);
                            if (relativeLayout3 != null) {
                                i10 = R.id.layout4;
                                RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.layout4);
                                if (relativeLayout4 != null) {
                                    i10 = R.id.layout5;
                                    RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.layout5);
                                    if (relativeLayout5 != null) {
                                        i10 = R.id.layout6;
                                        RelativeLayout relativeLayout6 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.layout6);
                                        if (relativeLayout6 != null) {
                                            i10 = R.id.llHotSearch;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llHotSearch);
                                            if (linearLayout2 != null) {
                                                i10 = R.id.search_bar_layout;
                                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.search_bar_layout);
                                                if (viewFindChildViewById != null) {
                                                    ut0 ut0VarBind = ut0.bind(viewFindChildViewById);
                                                    i10 = R.id.text1;
                                                    MarqueeTextView marqueeTextView = (MarqueeTextView) ViewBindings.findChildViewById(rootView, R.id.text1);
                                                    if (marqueeTextView != null) {
                                                        i10 = R.id.text2;
                                                        MarqueeTextView marqueeTextView2 = (MarqueeTextView) ViewBindings.findChildViewById(rootView, R.id.text2);
                                                        if (marqueeTextView2 != null) {
                                                            i10 = R.id.text3;
                                                            MarqueeTextView marqueeTextView3 = (MarqueeTextView) ViewBindings.findChildViewById(rootView, R.id.text3);
                                                            if (marqueeTextView3 != null) {
                                                                i10 = R.id.text4;
                                                                MarqueeTextView marqueeTextView4 = (MarqueeTextView) ViewBindings.findChildViewById(rootView, R.id.text4);
                                                                if (marqueeTextView4 != null) {
                                                                    i10 = R.id.text5;
                                                                    MarqueeTextView marqueeTextView5 = (MarqueeTextView) ViewBindings.findChildViewById(rootView, R.id.text5);
                                                                    if (marqueeTextView5 != null) {
                                                                        i10 = R.id.text6;
                                                                        MarqueeTextView marqueeTextView6 = (MarqueeTextView) ViewBindings.findChildViewById(rootView, R.id.text6);
                                                                        if (marqueeTextView6 != null) {
                                                                            i10 = R.id.textView;
                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                                                                            if (textView2 != null) {
                                                                                i10 = R.id.textView2;
                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView2);
                                                                                if (textView3 != null) {
                                                                                    i10 = R.id.tv1;
                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv1);
                                                                                    if (textView4 != null) {
                                                                                        i10 = R.id.tv2;
                                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv2);
                                                                                        if (textView5 != null) {
                                                                                            i10 = R.id.tv3;
                                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv3);
                                                                                            if (textView6 != null) {
                                                                                                i10 = R.id.tv4;
                                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv4);
                                                                                                if (textView7 != null) {
                                                                                                    i10 = R.id.tv5;
                                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv5);
                                                                                                    if (textView8 != null) {
                                                                                                        i10 = R.id.tv6;
                                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv6);
                                                                                                        if (textView9 != null) {
                                                                                                            i10 = R.id.wrapGridView;
                                                                                                            WrapContentGridView wrapContentGridView = (WrapContentGridView) ViewBindings.findChildViewById(rootView, R.id.wrapGridView);
                                                                                                            if (wrapContentGridView != null) {
                                                                                                                return new nk((LinearLayout) rootView, linearLayout, xListView2, textView, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, linearLayout2, ut0VarBind, marqueeTextView, marqueeTextView2, marqueeTextView3, marqueeTextView4, marqueeTextView5, marqueeTextView6, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, wrapContentGridView);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static nk inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42350b;
    }

    @NonNull
    public static nk inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.forum_search_hint_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
