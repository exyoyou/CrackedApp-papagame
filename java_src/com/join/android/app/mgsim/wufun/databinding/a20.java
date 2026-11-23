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
import it.sephiroth.android.library.widget.HListView;

/* JADX INFO: loaded from: classes4.dex */
public final class a20 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f35614c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35615d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f35616e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35617f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35618g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f35619h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f35620i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f35621j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35622k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f35623l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f35624m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ProgressBar f35625n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ProgressBar f35626o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f35627p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35628q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final HListView f35629r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35630s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35631t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f35632u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f35633v;

    private a20(@NonNull LinearLayout rootView, @NonNull TextView appSize, @NonNull LinearLayout backLayout, @NonNull DownloadNormalView dvView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView lodingInfo, @NonNull TextView mgListviewItemAppname, @NonNull TextView mgListviewItemDescribe, @NonNull SimpleDraweeView mgListviewItemIcon, @NonNull TextView moneyText2, @NonNull TextView privilege, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull RelativeLayout rLayoutRight2, @NonNull LinearLayout rlItem, @NonNull HListView screenListView, @NonNull LinearLayout tipsLayout, @NonNull LinearLayout tipsLayout1, @NonNull TextView tvContent, @NonNull TextView tvDelectGame) {
        this.f35613b = rootView;
        this.f35614c = appSize;
        this.f35615d = backLayout;
        this.f35616e = dvView;
        this.f35617f = linearLayout;
        this.f35618g = linearLayout2;
        this.f35619h = lodingInfo;
        this.f35620i = mgListviewItemAppname;
        this.f35621j = mgListviewItemDescribe;
        this.f35622k = mgListviewItemIcon;
        this.f35623l = moneyText2;
        this.f35624m = privilege;
        this.f35625n = progressBar;
        this.f35626o = progressBarZip;
        this.f35627p = rLayoutRight2;
        this.f35628q = rlItem;
        this.f35629r = screenListView;
        this.f35630s = tipsLayout;
        this.f35631t = tipsLayout1;
        this.f35632u = tvContent;
        this.f35633v = tvDelectGame;
    }

    @NonNull
    public static a20 bind(@NonNull View rootView) {
        int i10 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
        if (textView != null) {
            i10 = R.id.backLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout);
            if (linearLayout != null) {
                i10 = R.id.dv_view;
                DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dv_view);
                if (downloadNormalView != null) {
                    i10 = R.id.linearLayout;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
                    if (linearLayout2 != null) {
                        i10 = R.id.linearLayout2;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout2);
                        if (linearLayout3 != null) {
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
                                                                i10 = R.id.rl_item;
                                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.rl_item);
                                                                if (linearLayout4 != null) {
                                                                    i10 = R.id.screenListView;
                                                                    HListView hListView = (HListView) ViewBindings.findChildViewById(rootView, R.id.screenListView);
                                                                    if (hListView != null) {
                                                                        i10 = R.id.tipsLayout;
                                                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                                                                        if (linearLayout5 != null) {
                                                                            i10 = R.id.tipsLayout1;
                                                                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout1);
                                                                            if (linearLayout6 != null) {
                                                                                i10 = R.id.tv_content;
                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_content);
                                                                                if (textView7 != null) {
                                                                                    i10 = R.id.tv_delect_game;
                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_delect_game);
                                                                                    if (textView8 != null) {
                                                                                        return new a20((LinearLayout) rootView, textView, linearLayout, downloadNormalView, linearLayout2, linearLayout3, textView2, textView3, textView4, simpleDraweeView, textView5, textView6, progressBar, progressBar2, relativeLayout, linearLayout4, hListView, linearLayout5, linearLayout6, textView7, textView8);
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
    public static a20 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35613b;
    }

    @NonNull
    public static a20 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_detail_similar_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
