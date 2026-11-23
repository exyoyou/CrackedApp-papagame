package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
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

/* JADX INFO: loaded from: classes4.dex */
public final class jh0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40240c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f40241d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f40242e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40243f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40244g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f40245h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f40246i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f40247j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40248k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final Button f40249l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f40250m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f40251n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ProgressBar f40252o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ProgressBar f40253p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40254q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40255r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40256s;

    private jh0(@NonNull LinearLayout rootView, @NonNull TextView appSize, @NonNull View divider, @NonNull View line, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView lodingInfo, @NonNull TextView mgListviewItemAppname, @NonNull TextView mgListviewItemDescribe, @NonNull SimpleDraweeView mgListviewItemIcon, @NonNull Button mgListviewItemInstall, @NonNull TextView mgListviewItemSize, @NonNull TextView moneyText, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull RelativeLayout rLayoutRight, @NonNull RelativeLayout relateLayoutApp, @NonNull LinearLayout tipsLayout) {
        this.f40239b = rootView;
        this.f40240c = appSize;
        this.f40241d = divider;
        this.f40242e = line;
        this.f40243f = linearLayout;
        this.f40244g = linearLayout2;
        this.f40245h = lodingInfo;
        this.f40246i = mgListviewItemAppname;
        this.f40247j = mgListviewItemDescribe;
        this.f40248k = mgListviewItemIcon;
        this.f40249l = mgListviewItemInstall;
        this.f40250m = mgListviewItemSize;
        this.f40251n = moneyText;
        this.f40252o = progressBar;
        this.f40253p = progressBarZip;
        this.f40254q = rLayoutRight;
        this.f40255r = relateLayoutApp;
        this.f40256s = tipsLayout;
    }

    @NonNull
    public static jh0 bind(@NonNull View rootView) {
        int i10 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
        if (textView != null) {
            i10 = R.id.divider;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
            if (viewFindChildViewById != null) {
                i10 = R.id.line;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.line);
                if (viewFindChildViewById2 != null) {
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
                                            i10 = R.id.mgListviewItemInstall;
                                            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemInstall);
                                            if (button != null) {
                                                i10 = R.id.mgListviewItemSize;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemSize);
                                                if (textView5 != null) {
                                                    i10 = R.id.moneyText;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText);
                                                    if (textView6 != null) {
                                                        i10 = R.id.progressBar;
                                                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                                        if (progressBar != null) {
                                                            i10 = R.id.progressBarZip;
                                                            ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBarZip);
                                                            if (progressBar2 != null) {
                                                                i10 = R.id.rLayoutRight;
                                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rLayoutRight);
                                                                if (relativeLayout != null) {
                                                                    i10 = R.id.relateLayoutApp;
                                                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.relateLayoutApp);
                                                                    if (relativeLayout2 != null) {
                                                                        i10 = R.id.tipsLayout;
                                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                                                                        if (linearLayout3 != null) {
                                                                            return new jh0((LinearLayout) rootView, textView, viewFindChildViewById, viewFindChildViewById2, linearLayout, linearLayout2, textView2, textView3, textView4, simpleDraweeView, button, textView5, textView6, progressBar, progressBar2, relativeLayout, relativeLayout2, linearLayout3);
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
    public static jh0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40239b;
    }

    @NonNull
    public static jh0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_post_activity_item_post_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
