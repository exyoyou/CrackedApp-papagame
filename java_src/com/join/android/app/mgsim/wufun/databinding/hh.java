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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class hh implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f39329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39330c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f39331d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f39332e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f39333f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f39334g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f39335h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39336i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39337j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39338k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39339l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39340m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39341n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f39342o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f39343p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f39344q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f39345r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f39346s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f39347t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f39348u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f39349v;

    private hh(@NonNull RelativeLayout rootView, @NonNull ImageView ivArchive1, @NonNull ImageView ivArchive2, @NonNull ImageView ivArchive3, @NonNull ImageView ivChoice1, @NonNull ImageView ivChoice2, @NonNull ImageView ivChoice3, @NonNull LinearLayout ivClose, @NonNull LinearLayout llArchive, @NonNull RelativeLayout rlArchive1, @NonNull RelativeLayout rlArchive2, @NonNull RelativeLayout rlArchive3, @NonNull RelativeLayout rlMain, @NonNull TextView tvArchive1, @NonNull TextView tvArchive2, @NonNull TextView tvArchive3, @NonNull TextView tvName1, @NonNull TextView tvName2, @NonNull TextView tvName3, @NonNull TextView tvOldArchive, @NonNull TextView tvTop) {
        this.f39329b = rootView;
        this.f39330c = ivArchive1;
        this.f39331d = ivArchive2;
        this.f39332e = ivArchive3;
        this.f39333f = ivChoice1;
        this.f39334g = ivChoice2;
        this.f39335h = ivChoice3;
        this.f39336i = ivClose;
        this.f39337j = llArchive;
        this.f39338k = rlArchive1;
        this.f39339l = rlArchive2;
        this.f39340m = rlArchive3;
        this.f39341n = rlMain;
        this.f39342o = tvArchive1;
        this.f39343p = tvArchive2;
        this.f39344q = tvArchive3;
        this.f39345r = tvName1;
        this.f39346s = tvName2;
        this.f39347t = tvName3;
        this.f39348u = tvOldArchive;
        this.f39349v = tvTop;
    }

    @NonNull
    public static hh bind(@NonNull View rootView) {
        int i10 = R.id.iv_archive_1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_archive_1);
        if (imageView != null) {
            i10 = R.id.iv_archive_2;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_archive_2);
            if (imageView2 != null) {
                i10 = R.id.iv_archive_3;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_archive_3);
                if (imageView3 != null) {
                    i10 = R.id.iv_choice_1;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_choice_1);
                    if (imageView4 != null) {
                        i10 = R.id.iv_choice_2;
                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_choice_2);
                        if (imageView5 != null) {
                            i10 = R.id.iv_choice_3;
                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_choice_3);
                            if (imageView6 != null) {
                                i10 = R.id.iv_close;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                                if (linearLayout != null) {
                                    i10 = R.id.ll_archive;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_archive);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.rl_archive_1;
                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_archive_1);
                                        if (relativeLayout != null) {
                                            i10 = R.id.rl_archive_2;
                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_archive_2);
                                            if (relativeLayout2 != null) {
                                                i10 = R.id.rl_archive_3;
                                                RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_archive_3);
                                                if (relativeLayout3 != null) {
                                                    i10 = R.id.rl_main;
                                                    RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_main);
                                                    if (relativeLayout4 != null) {
                                                        i10 = R.id.tv_archive_1;
                                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_archive_1);
                                                        if (textView != null) {
                                                            i10 = R.id.tv_archive_2;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_archive_2);
                                                            if (textView2 != null) {
                                                                i10 = R.id.tv_archive_3;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_archive_3);
                                                                if (textView3 != null) {
                                                                    i10 = R.id.tv_name_1;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_name_1);
                                                                    if (textView4 != null) {
                                                                        i10 = R.id.tv_name_2;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_name_2);
                                                                        if (textView5 != null) {
                                                                            i10 = R.id.tv_name_3;
                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_name_3);
                                                                            if (textView6 != null) {
                                                                                i10 = R.id.tv_oldArchive;
                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_oldArchive);
                                                                                if (textView7 != null) {
                                                                                    i10 = R.id.tv_top;
                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_top);
                                                                                    if (textView8 != null) {
                                                                                        return new hh((RelativeLayout) rootView, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, linearLayout, linearLayout2, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8);
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
    public static hh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f39329b;
    }

    @NonNull
    public static hh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_net_archive, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
