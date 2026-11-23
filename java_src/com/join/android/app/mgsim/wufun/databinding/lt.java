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
import com.join.mgps.customview.VipView;

/* JADX INFO: loaded from: classes4.dex */
public final class lt implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41531b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41532c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41533d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41534e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final VipView f41535f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f41536g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41537h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f41538i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f41539j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f41540k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f41541l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41542m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f41543n;

    private lt(@NonNull LinearLayout rootView, @NonNull TextView content, @NonNull LinearLayout lLayout, @NonNull TextView levelTv, @NonNull VipView levelVip, @NonNull View line, @NonNull RelativeLayout main, @NonNull TextView more, @NonNull ImageView parise, @NonNull TextView pariseNumber, @NonNull TextView time, @NonNull SimpleDraweeView usericon, @NonNull TextView username) {
        this.f41531b = rootView;
        this.f41532c = content;
        this.f41533d = lLayout;
        this.f41534e = levelTv;
        this.f41535f = levelVip;
        this.f41536g = line;
        this.f41537h = main;
        this.f41538i = more;
        this.f41539j = parise;
        this.f41540k = pariseNumber;
        this.f41541l = time;
        this.f41542m = usericon;
        this.f41543n = username;
    }

    @NonNull
    public static lt bind(@NonNull View rootView) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.content);
        if (textView != null) {
            i10 = R.id.lLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.lLayout);
            if (linearLayout != null) {
                i10 = R.id.levelTv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.levelTv);
                if (textView2 != null) {
                    i10 = R.id.levelVip;
                    VipView vipView = (VipView) ViewBindings.findChildViewById(rootView, R.id.levelVip);
                    if (vipView != null) {
                        i10 = R.id.line;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.main;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                            if (relativeLayout != null) {
                                i10 = R.id.more;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.more);
                                if (textView3 != null) {
                                    i10 = R.id.parise;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.parise);
                                    if (imageView != null) {
                                        i10 = R.id.pariseNumber;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pariseNumber);
                                        if (textView4 != null) {
                                            i10 = R.id.time;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.time);
                                            if (textView5 != null) {
                                                i10 = R.id.usericon;
                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.usericon);
                                                if (simpleDraweeView != null) {
                                                    i10 = R.id.username;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.username);
                                                    if (textView6 != null) {
                                                        return new lt((LinearLayout) rootView, textView, linearLayout, textView2, vipView, viewFindChildViewById, relativeLayout, textView3, imageView, textView4, textView5, simpleDraweeView, textView6);
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
    public static lt inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41531b;
    }

    @NonNull
    public static lt inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gameinformation_commit_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
