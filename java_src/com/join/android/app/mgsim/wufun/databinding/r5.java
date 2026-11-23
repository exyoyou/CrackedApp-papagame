package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.papa91.arc.widget.htmltext.HtmlTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class r5 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44227c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CheckBox f44228d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f44229e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f44230f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44231g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44232h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f44233i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final HtmlTextView f44234j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f44235k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f44236l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f44237m;

    private r5(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout card, @NonNull CheckBox cbIgnore, @NonNull ImageView ivClose, @NonNull ImageView ivIcon, @NonNull LinearLayout llButtons, @NonNull LinearLayout llCloudLaunch, @NonNull TextView tvConfirm, @NonNull HtmlTextView tvContent, @NonNull TextView tvNegative, @NonNull TextView tvPositive, @NonNull TextView tvTitle) {
        this.f44226b = rootView;
        this.f44227c = card;
        this.f44228d = cbIgnore;
        this.f44229e = ivClose;
        this.f44230f = ivIcon;
        this.f44231g = llButtons;
        this.f44232h = llCloudLaunch;
        this.f44233i = tvConfirm;
        this.f44234j = tvContent;
        this.f44235k = tvNegative;
        this.f44236l = tvPositive;
        this.f44237m = tvTitle;
    }

    @NonNull
    public static r5 bind(@NonNull View rootView) {
        int i10 = R.id.card;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.card);
        if (constraintLayout != null) {
            i10 = R.id.cb_ignore;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.cb_ignore);
            if (checkBox != null) {
                i10 = R.id.iv_close;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                if (imageView != null) {
                    i10 = R.id.ivIcon;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivIcon);
                    if (imageView2 != null) {
                        i10 = R.id.ll_buttons;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_buttons);
                        if (linearLayout != null) {
                            i10 = R.id.ll_cloud_launch;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_cloud_launch);
                            if (linearLayout2 != null) {
                                i10 = R.id.tvConfirm;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvConfirm);
                                if (textView != null) {
                                    i10 = R.id.tvContent;
                                    HtmlTextView htmlTextView = (HtmlTextView) ViewBindings.findChildViewById(rootView, R.id.tvContent);
                                    if (htmlTextView != null) {
                                        i10 = R.id.tvNegative;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvNegative);
                                        if (textView2 != null) {
                                            i10 = R.id.tvPositive;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvPositive);
                                            if (textView3 != null) {
                                                i10 = R.id.tvTitle;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitle);
                                                if (textView4 != null) {
                                                    return new r5((ConstraintLayout) rootView, constraintLayout, checkBox, imageView, imageView2, linearLayout, linearLayout2, textView, htmlTextView, textView2, textView3, textView4);
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
    public static r5 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44226b;
    }

    @NonNull
    public static r5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_warning_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
