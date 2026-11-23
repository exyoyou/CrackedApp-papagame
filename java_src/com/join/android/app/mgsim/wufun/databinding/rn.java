package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;

/* JADX INFO: loaded from: classes4.dex */
public final class rn implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44412c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f44413d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f44414e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44415f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f44416g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final XListView2 f44417h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44418i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final kn f44419j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f44420k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f44421l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f44422m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44423n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44424o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f44425p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ImageView f44426q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final View f44427r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f44428s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f44429t;

    private rn(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout appbar, @NonNull ImageView back, @NonNull View filter, @NonNull TextView filterArr, @NonNull ImageView ivOnlineCouponBottomClose, @NonNull XListView2 listView, @NonNull LinearLayout llOnlineCouponBottom, @NonNull kn needUpdate, @NonNull TextView plugProgress, @NonNull TextView plugType, @NonNull ImageView plugs, @NonNull LinearLayout plugsDownloadTip, @NonNull ConstraintLayout root, @NonNull ImageView search, @NonNull ImageView settings, @NonNull View statubar, @NonNull TextView title, @NonNull TextView tvOnlineCouponBottomDesc) {
        this.f44411b = rootView;
        this.f44412c = appbar;
        this.f44413d = back;
        this.f44414e = filter;
        this.f44415f = filterArr;
        this.f44416g = ivOnlineCouponBottomClose;
        this.f44417h = listView;
        this.f44418i = llOnlineCouponBottom;
        this.f44419j = needUpdate;
        this.f44420k = plugProgress;
        this.f44421l = plugType;
        this.f44422m = plugs;
        this.f44423n = plugsDownloadTip;
        this.f44424o = root;
        this.f44425p = search;
        this.f44426q = settings;
        this.f44427r = statubar;
        this.f44428s = title;
        this.f44429t = tvOnlineCouponBottomDesc;
    }

    @NonNull
    public static rn bind(@NonNull View rootView) {
        int i10 = R.id.appbar;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.appbar);
        if (constraintLayout != null) {
            i10 = R.id.back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back);
            if (imageView != null) {
                i10 = R.id.filter;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.filter);
                if (viewFindChildViewById != null) {
                    i10 = R.id.filterArr;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.filterArr);
                    if (textView != null) {
                        i10 = R.id.ivOnlineCouponBottomClose;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivOnlineCouponBottomClose);
                        if (imageView2 != null) {
                            i10 = R.id.listView;
                            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listView);
                            if (xListView2 != null) {
                                i10 = R.id.llOnlineCouponBottom;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llOnlineCouponBottom);
                                if (linearLayout != null) {
                                    i10 = R.id.needUpdate;
                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.needUpdate);
                                    if (viewFindChildViewById2 != null) {
                                        kn knVarBind = kn.bind(viewFindChildViewById2);
                                        i10 = R.id.plugProgress;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.plugProgress);
                                        if (textView2 != null) {
                                            i10 = R.id.plugType;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.plugType);
                                            if (textView3 != null) {
                                                i10 = R.id.plugs;
                                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.plugs);
                                                if (imageView3 != null) {
                                                    i10 = R.id.plugsDownloadTip;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.plugsDownloadTip);
                                                    if (linearLayout2 != null) {
                                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) rootView;
                                                        i10 = R.id.search;
                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.search);
                                                        if (imageView4 != null) {
                                                            i10 = R.id.settings;
                                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.settings);
                                                            if (imageView5 != null) {
                                                                i10 = R.id.statubar;
                                                                View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.statubar);
                                                                if (viewFindChildViewById3 != null) {
                                                                    i10 = R.id.title;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                                    if (textView4 != null) {
                                                                        i10 = R.id.tvOnlineCouponBottomDesc;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvOnlineCouponBottomDesc);
                                                                        if (textView5 != null) {
                                                                            return new rn(constraintLayout2, constraintLayout, imageView, viewFindChildViewById, textView, imageView2, xListView2, linearLayout, knVarBind, textView2, textView3, imageView3, linearLayout2, constraintLayout2, imageView4, imageView5, viewFindChildViewById3, textView4, textView5);
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
    public static rn inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44411b;
    }

    @NonNull
    public static rn inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_my_game_v1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
