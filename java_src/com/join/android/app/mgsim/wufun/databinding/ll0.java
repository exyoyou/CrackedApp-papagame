package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ll0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f41388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41389c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41390d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f41391e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41392f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41393g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41394h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41395i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41396j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f41397k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f41398l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f41399m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f41400n;

    private ll0(@NonNull ConstraintLayout rootView, @NonNull TextView fightAppname, @NonNull SimpleDraweeView fightappImage, @NonNull View gradientView, @NonNull SimpleDraweeView ivDzg, @NonNull LinearLayout llDailyNewIcon, @NonNull RelativeLayout rlDailyDiscovery, @NonNull RelativeLayout rlDailyNew, @NonNull RelativeLayout rlDzg, @NonNull TextView tvDailyNewCount, @NonNull TextView tvDialyNew, @NonNull TextView tvDzg, @NonNull TextView tvDzgSub) {
        this.f41388b = rootView;
        this.f41389c = fightAppname;
        this.f41390d = fightappImage;
        this.f41391e = gradientView;
        this.f41392f = ivDzg;
        this.f41393g = llDailyNewIcon;
        this.f41394h = rlDailyDiscovery;
        this.f41395i = rlDailyNew;
        this.f41396j = rlDzg;
        this.f41397k = tvDailyNewCount;
        this.f41398l = tvDialyNew;
        this.f41399m = tvDzg;
        this.f41400n = tvDzgSub;
    }

    @NonNull
    public static ll0 bind(@NonNull View rootView) {
        int i10 = R.id.fight_appname;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.fight_appname);
        if (textView != null) {
            i10 = R.id.fightapp_image;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.fightapp_image);
            if (simpleDraweeView != null) {
                i10 = R.id.gradientView;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.gradientView);
                if (viewFindChildViewById != null) {
                    i10 = R.id.ivDzg;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivDzg);
                    if (simpleDraweeView2 != null) {
                        i10 = R.id.llDailyNewIcon;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llDailyNewIcon);
                        if (linearLayout != null) {
                            i10 = R.id.rlDailyDiscovery;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rlDailyDiscovery);
                            if (relativeLayout != null) {
                                i10 = R.id.rlDailyNew;
                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rlDailyNew);
                                if (relativeLayout2 != null) {
                                    i10 = R.id.rlDzg;
                                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rlDzg);
                                    if (relativeLayout3 != null) {
                                        i10 = R.id.tvDailyNewCount;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDailyNewCount);
                                        if (textView2 != null) {
                                            i10 = R.id.tvDialyNew;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDialyNew);
                                            if (textView3 != null) {
                                                i10 = R.id.tvDzg;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDzg);
                                                if (textView4 != null) {
                                                    i10 = R.id.tvDzgSub;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDzgSub);
                                                    if (textView5 != null) {
                                                        return new ll0((ConstraintLayout) rootView, textView, simpleDraweeView, viewFindChildViewById, simpleDraweeView2, linearLayout, relativeLayout, relativeLayout2, relativeLayout3, textView2, textView3, textView4, textView5);
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
    public static ll0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f41388b;
    }

    @NonNull
    public static ll0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mgpapa_localfight_include_v2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
