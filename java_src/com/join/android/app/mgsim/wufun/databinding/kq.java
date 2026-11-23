package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public final class kq implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40907b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40908c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f40909d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40910e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40911f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40912g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f40913h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f40914i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40915j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f40916k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f40917l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ProgressBar f40918m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ProgressBar f40919n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40920o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40921p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40922q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40923r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f40924s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f40925t;

    private kq(@NonNull LinearLayout rootView, @NonNull TextView appSize, @NonNull DownloadNormalView dvView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView lodingInfo, @NonNull TextView mgListviewItemAppname, @NonNull TextView mgListviewItemDescribe, @NonNull SimpleDraweeView mgListviewItemIcon, @NonNull TextView moneyText2, @NonNull TextView privilege, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull RelativeLayout rLayoutRight2, @NonNull LinearLayout relateLayoutApp, @NonNull LinearLayout rlItem, @NonNull LinearLayout tipsLayout, @NonNull TextView tvContent, @NonNull TextView tvDelectGame) {
        this.f40907b = rootView;
        this.f40908c = appSize;
        this.f40909d = dvView;
        this.f40910e = linearLayout;
        this.f40911f = linearLayout2;
        this.f40912g = lodingInfo;
        this.f40913h = mgListviewItemAppname;
        this.f40914i = mgListviewItemDescribe;
        this.f40915j = mgListviewItemIcon;
        this.f40916k = moneyText2;
        this.f40917l = privilege;
        this.f40918m = progressBar;
        this.f40919n = progressBarZip;
        this.f40920o = rLayoutRight2;
        this.f40921p = relateLayoutApp;
        this.f40922q = rlItem;
        this.f40923r = tipsLayout;
        this.f40924s = tvContent;
        this.f40925t = tvDelectGame;
    }

    @NonNull
    public static kq bind(@NonNull View rootView) {
        int i10 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
        if (textView != null) {
            i10 = R.id.dv_view;
            DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dv_view);
            if (downloadNormalView != null) {
                i10 = R.id.linearLayout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
                if (linearLayout != null) {
                    i10 = R.id.linearLayout2;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout2);
                    if (linearLayout2 != null) {
                        i10 = R.id.loding_info;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.loding_info);
                        if (textView2 != null) {
                            i10 = R.id.mgListviewItemAppname;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemAppname);
                            if (textView3 != null) {
                                i10 = R.id.mgListviewItemDescribe;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemDescribe);
                                if (textView4 != null) {
                                    i10 = R.id.mgListviewItemIcon;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemIcon);
                                    if (simpleDraweeView != null) {
                                        i10 = R.id.moneyText2;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText2);
                                        if (textView5 != null) {
                                            i10 = R.id.privilege;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.privilege);
                                            if (textView6 != null) {
                                                i10 = R.id.progressBar;
                                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                                if (progressBar != null) {
                                                    i10 = R.id.progressBarZip;
                                                    ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBarZip);
                                                    if (progressBar2 != null) {
                                                        i10 = R.id.rLayoutRight2;
                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rLayoutRight2);
                                                        if (relativeLayout != null) {
                                                            LinearLayout linearLayout3 = (LinearLayout) rootView;
                                                            i10 = R.id.rl_item;
                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.rl_item);
                                                            if (linearLayout4 != null) {
                                                                i10 = R.id.tipsLayout;
                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                                                                if (linearLayout5 != null) {
                                                                    i10 = R.id.tv_content;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_content);
                                                                    if (textView7 != null) {
                                                                        i10 = R.id.tv_delect_game;
                                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_delect_game);
                                                                        if (textView8 != null) {
                                                                            return new kq(linearLayout3, textView, downloadNormalView, linearLayout, linearLayout2, textView2, textView3, textView4, simpleDraweeView, textView5, textView6, progressBar, progressBar2, relativeLayout, linearLayout3, linearLayout4, linearLayout5, textView7, textView8);
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
    public static kq inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40907b;
    }

    @NonNull
    public static kq inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamede_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
