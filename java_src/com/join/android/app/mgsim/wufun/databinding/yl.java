package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class yl implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47783b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47784c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47785d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f47786e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47787f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final GridView f47788g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f47789h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f47790i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f47791j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f47792k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f47793l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final Group f47794m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f47795n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f47796o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f47797p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f47798q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f47799r;

    private yl(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView avatar, @NonNull TextView button, @NonNull View close, @NonNull TextView desc, @NonNull GridView gridView, @NonNull ImageView icLike, @NonNull ImageView icVip, @NonNull ImageView iv1, @NonNull TextView lbLevel, @NonNull TextView likeCount, @NonNull Group main, @NonNull TextView name, @NonNull TextView netFailed, @NonNull TextView noRecord, @NonNull TextView state, @NonNull TextView textView48) {
        this.f47783b = rootView;
        this.f47784c = avatar;
        this.f47785d = button;
        this.f47786e = close;
        this.f47787f = desc;
        this.f47788g = gridView;
        this.f47789h = icLike;
        this.f47790i = icVip;
        this.f47791j = iv1;
        this.f47792k = lbLevel;
        this.f47793l = likeCount;
        this.f47794m = main;
        this.f47795n = name;
        this.f47796o = netFailed;
        this.f47797p = noRecord;
        this.f47798q = state;
        this.f47799r = textView48;
    }

    @NonNull
    public static yl bind(@NonNull View rootView) {
        int i10 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.avatar);
        if (simpleDraweeView != null) {
            i10 = R.id.button;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.button);
            if (textView != null) {
                i10 = R.id.close;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.close);
                if (viewFindChildViewById != null) {
                    i10 = R.id.desc;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.desc);
                    if (textView2 != null) {
                        i10 = R.id.gridView;
                        GridView gridView = (GridView) ViewBindings.findChildViewById(rootView, R.id.gridView);
                        if (gridView != null) {
                            i10 = R.id.icLike;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icLike);
                            if (imageView != null) {
                                i10 = R.id.icVip;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icVip);
                                if (imageView2 != null) {
                                    i10 = R.id.iv1;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv1);
                                    if (imageView3 != null) {
                                        i10 = R.id.lbLevel;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.lbLevel);
                                        if (textView3 != null) {
                                            i10 = R.id.likeCount;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.likeCount);
                                            if (textView4 != null) {
                                                i10 = R.id.main;
                                                Group group = (Group) ViewBindings.findChildViewById(rootView, R.id.main);
                                                if (group != null) {
                                                    i10 = R.id.name;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                                                    if (textView5 != null) {
                                                        i10 = R.id.netFailed;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.netFailed);
                                                        if (textView6 != null) {
                                                            i10 = R.id.noRecord;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.noRecord);
                                                            if (textView7 != null) {
                                                                i10 = R.id.state;
                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.state);
                                                                if (textView8 != null) {
                                                                    i10 = R.id.textView48;
                                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView48);
                                                                    if (textView9 != null) {
                                                                        return new yl((ConstraintLayout) rootView, simpleDraweeView, textView, viewFindChildViewById, textView2, gridView, imageView, imageView2, imageView3, textView3, textView4, group, textView5, textView6, textView7, textView8, textView9);
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
    public static yl inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f47783b;
    }

    @NonNull
    public static yl inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_friend_card, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
