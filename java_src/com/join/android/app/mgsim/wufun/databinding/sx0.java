package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class sx0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final HorizontalScrollView f45032c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45033d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45034e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45035f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45036g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45037h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45038i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f45039j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f45040k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f45041l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final View f45042m;

    private sx0(@NonNull LinearLayout rootView, @NonNull HorizontalScrollView hsvTags, @NonNull LinearLayout llHandle, @NonNull LinearLayout llShareBy, @NonNull LinearLayout llTags, @NonNull SimpleDraweeView sdvGameIcon, @NonNull SimpleDraweeView sdvShareUser, @NonNull SimpleDraweeView sdvTopAd, @NonNull TextView tvAppName, @NonNull TextView tvGameDesc, @NonNull TextView tvScore, @NonNull View vScore) {
        this.f45031b = rootView;
        this.f45032c = hsvTags;
        this.f45033d = llHandle;
        this.f45034e = llShareBy;
        this.f45035f = llTags;
        this.f45036g = sdvGameIcon;
        this.f45037h = sdvShareUser;
        this.f45038i = sdvTopAd;
        this.f45039j = tvAppName;
        this.f45040k = tvGameDesc;
        this.f45041l = tvScore;
        this.f45042m = vScore;
    }

    @NonNull
    public static sx0 bind(@NonNull View rootView) {
        int i10 = R.id.hsv_tags;
        HorizontalScrollView horizontalScrollView = (HorizontalScrollView) ViewBindings.findChildViewById(rootView, R.id.hsv_tags);
        if (horizontalScrollView != null) {
            i10 = R.id.ll_handle;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_handle);
            if (linearLayout != null) {
                i10 = R.id.ll_share_by;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_share_by);
                if (linearLayout2 != null) {
                    i10 = R.id.ll_tags;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_tags);
                    if (linearLayout3 != null) {
                        i10 = R.id.sdv_game_icon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_game_icon);
                        if (simpleDraweeView != null) {
                            i10 = R.id.sdv_share_user;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_share_user);
                            if (simpleDraweeView2 != null) {
                                i10 = R.id.sdv_top_ad;
                                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_top_ad);
                                if (simpleDraweeView3 != null) {
                                    i10 = R.id.tv_app_name;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_app_name);
                                    if (textView != null) {
                                        i10 = R.id.tv_game_desc;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_game_desc);
                                        if (textView2 != null) {
                                            i10 = R.id.tv_score;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_score);
                                            if (textView3 != null) {
                                                i10 = R.id.v_score;
                                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_score);
                                                if (viewFindChildViewById != null) {
                                                    return new sx0((LinearLayout) rootView, horizontalScrollView, linearLayout, linearLayout2, linearLayout3, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, textView, textView2, textView3, viewFindChildViewById);
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
    public static sx0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45031b;
    }

    @NonNull
    public static sx0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.view_game_detail_game_info_pc, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
