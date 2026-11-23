package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
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
public final class tr0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f45410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45411d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45412e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45413f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f45414g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f45415h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f45416i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f45417j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45418k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45419l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f45420m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final View f45421n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final View f45422o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final View f45423p;

    private tr0(@NonNull ConstraintLayout rootView, @NonNull TextView cancel, @NonNull TextView delete, @NonNull SimpleDraweeView icon, @NonNull SimpleDraweeView iconMod, @NonNull ImageView ivModCheck, @NonNull ImageView ivStandCheck, @NonNull TextView name, @NonNull TextView nameMod, @NonNull RelativeLayout rlMod, @NonNull RelativeLayout rlStand, @NonNull TextView tvTitle, @NonNull View vLine, @NonNull View view5, @NonNull View view8) {
        this.f45409b = rootView;
        this.f45410c = cancel;
        this.f45411d = delete;
        this.f45412e = icon;
        this.f45413f = iconMod;
        this.f45414g = ivModCheck;
        this.f45415h = ivStandCheck;
        this.f45416i = name;
        this.f45417j = nameMod;
        this.f45418k = rlMod;
        this.f45419l = rlStand;
        this.f45420m = tvTitle;
        this.f45421n = vLine;
        this.f45422o = view5;
        this.f45423p = view8;
    }

    @NonNull
    public static tr0 bind(@NonNull View rootView) {
        int i10 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.cancel);
        if (textView != null) {
            i10 = R.id.delete;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.delete);
            if (textView2 != null) {
                i10 = R.id.icon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                if (simpleDraweeView != null) {
                    i10 = R.id.icon_mod;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon_mod);
                    if (simpleDraweeView2 != null) {
                        i10 = R.id.iv_mod_check;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_mod_check);
                        if (imageView != null) {
                            i10 = R.id.iv_stand_check;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_stand_check);
                            if (imageView2 != null) {
                                i10 = R.id.name;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                                if (textView3 != null) {
                                    i10 = R.id.name_mod;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name_mod);
                                    if (textView4 != null) {
                                        i10 = R.id.rl_mod;
                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_mod);
                                        if (relativeLayout != null) {
                                            i10 = R.id.rl_stand;
                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_stand);
                                            if (relativeLayout2 != null) {
                                                i10 = R.id.tv_title;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                                                if (textView5 != null) {
                                                    i10 = R.id.v_line;
                                                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_line);
                                                    if (viewFindChildViewById != null) {
                                                        i10 = R.id.view5;
                                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.view5);
                                                        if (viewFindChildViewById2 != null) {
                                                            i10 = R.id.view8;
                                                            View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.view8);
                                                            if (viewFindChildViewById3 != null) {
                                                                return new tr0((ConstraintLayout) rootView, textView, textView2, simpleDraweeView, simpleDraweeView2, imageView, imageView2, textView3, textView4, relativeLayout, relativeLayout2, textView5, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3);
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
    public static tr0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f45409b;
    }

    @NonNull
    public static tr0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.pop_mod_game_delete_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
