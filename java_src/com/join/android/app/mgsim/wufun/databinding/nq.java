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
public final class nq implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f42483c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42484d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final VipView f42485e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f42486f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42487g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f42488h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f42489i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f42490j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42491k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f42492l;

    private nq(@NonNull LinearLayout rootView, @NonNull TextView content, @NonNull LinearLayout lLayout, @NonNull VipView levelTv, @NonNull View line, @NonNull RelativeLayout main, @NonNull ImageView parise, @NonNull TextView pariseNumber, @NonNull TextView time, @NonNull SimpleDraweeView usericon, @NonNull TextView username) {
        this.f42482b = rootView;
        this.f42483c = content;
        this.f42484d = lLayout;
        this.f42485e = levelTv;
        this.f42486f = line;
        this.f42487g = main;
        this.f42488h = parise;
        this.f42489i = pariseNumber;
        this.f42490j = time;
        this.f42491k = usericon;
        this.f42492l = username;
    }

    @NonNull
    public static nq bind(@NonNull View rootView) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.content);
        if (textView != null) {
            i10 = R.id.lLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.lLayout);
            if (linearLayout != null) {
                i10 = R.id.levelTv;
                VipView vipView = (VipView) ViewBindings.findChildViewById(rootView, R.id.levelTv);
                if (vipView != null) {
                    i10 = R.id.line;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.main;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                        if (relativeLayout != null) {
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
                                                return new nq((LinearLayout) rootView, textView, linearLayout, vipView, viewFindChildViewById, relativeLayout, imageView, textView2, textView3, simpleDraweeView, textView4);
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
    public static nq inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42482b;
    }

    @NonNull
    public static nq inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_comment_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
