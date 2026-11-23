package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CopyTextView;
import com.join.mgps.customview.CopyTextViewNew;
import com.join.mgps.customview.VipView;

/* JADX INFO: loaded from: classes4.dex */
public final class yc implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47655b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CopyTextView f47656c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CopyTextViewNew f47657d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47658e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47659f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final VipView f47660g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f47661h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47662i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f47663j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f47664k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f47665l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47666m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f47667n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47668o;

    private yc(@NonNull RelativeLayout rootView, @NonNull CopyTextView content, @NonNull CopyTextViewNew contentWeb, @NonNull TextView isConnoisseurs, @NonNull LinearLayout lLayout, @NonNull VipView levelTv, @NonNull View line0, @NonNull RelativeLayout main, @NonNull ImageView parise, @NonNull TextView pariseNumber, @NonNull TextView time, @NonNull SimpleDraweeView usericon, @NonNull TextView username, @NonNull RelativeLayout usernameRl) {
        this.f47655b = rootView;
        this.f47656c = content;
        this.f47657d = contentWeb;
        this.f47658e = isConnoisseurs;
        this.f47659f = lLayout;
        this.f47660g = levelTv;
        this.f47661h = line0;
        this.f47662i = main;
        this.f47663j = parise;
        this.f47664k = pariseNumber;
        this.f47665l = time;
        this.f47666m = usericon;
        this.f47667n = username;
        this.f47668o = usernameRl;
    }

    @NonNull
    public static yc bind(@NonNull View rootView) {
        int i10 = R.id.content;
        CopyTextView copyTextView = (CopyTextView) ViewBindings.findChildViewById(rootView, R.id.content);
        if (copyTextView != null) {
            i10 = R.id.contentWeb;
            CopyTextViewNew copyTextViewNew = (CopyTextViewNew) ViewBindings.findChildViewById(rootView, R.id.contentWeb);
            if (copyTextViewNew != null) {
                i10 = R.id.isConnoisseurs;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.isConnoisseurs);
                if (textView != null) {
                    i10 = R.id.lLayout;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.lLayout);
                    if (linearLayout != null) {
                        i10 = R.id.levelTv;
                        VipView vipView = (VipView) ViewBindings.findChildViewById(rootView, R.id.levelTv);
                        if (vipView != null) {
                            i10 = R.id.line0;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line0);
                            if (viewFindChildViewById != null) {
                                RelativeLayout relativeLayout = (RelativeLayout) rootView;
                                i10 = R.id.parise;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.parise);
                                if (imageView != null) {
                                    i10 = R.id.pariseNumber;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pariseNumber);
                                    if (textView2 != null) {
                                        i10 = R.id.time;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.time);
                                        if (textView3 != null) {
                                            i10 = R.id.usericon;
                                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.usericon);
                                            if (simpleDraweeView != null) {
                                                i10 = R.id.username;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.username);
                                                if (textView4 != null) {
                                                    i10 = R.id.usernameRl;
                                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.usernameRl);
                                                    if (relativeLayout2 != null) {
                                                        return new yc(relativeLayout, copyTextView, copyTextViewNew, textView, linearLayout, vipView, viewFindChildViewById, relativeLayout, imageView, textView2, textView3, simpleDraweeView, textView4, relativeLayout2);
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
    public static yc inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47655b;
    }

    @NonNull
    public static yc inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.detail_commit_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
