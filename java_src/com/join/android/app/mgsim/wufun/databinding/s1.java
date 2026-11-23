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
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;

/* JADX INFO: loaded from: classes4.dex */
public final class s1 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44582b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44583c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44584d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44585e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44586f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f44587g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final XListView2 f44588h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44589i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44590j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44591k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44592l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44593m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44594n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f44595o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44596p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f44597q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f44598r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f44599s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f44600t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f44601u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f44602v;

    private s1(@NonNull RelativeLayout rootView, @NonNull TextView changeModle, @NonNull RelativeLayout imageCover, @NonNull RelativeLayout ivBack, @NonNull LinearLayout ivNome, @NonNull ImageView ivShare, @NonNull XListView2 listview, @NonNull LinearLayout llGameformTitle2, @NonNull LinearLayout main, @NonNull LinearLayout myswip, @NonNull RelativeLayout rlBackTitle, @NonNull SimpleDraweeView smvIcon, @NonNull RelativeLayout smvIcon2, @NonNull TextView title, @NonNull SimpleDraweeView topBack, @NonNull TextView tvBtn, @NonNull TextView tvGameTitle2, @NonNull TextView tvModify2, @NonNull TextView tvName, @NonNull TextView tvTime, @NonNull XRecyclerView xrecycleview) {
        this.f44582b = rootView;
        this.f44583c = changeModle;
        this.f44584d = imageCover;
        this.f44585e = ivBack;
        this.f44586f = ivNome;
        this.f44587g = ivShare;
        this.f44588h = listview;
        this.f44589i = llGameformTitle2;
        this.f44590j = main;
        this.f44591k = myswip;
        this.f44592l = rlBackTitle;
        this.f44593m = smvIcon;
        this.f44594n = smvIcon2;
        this.f44595o = title;
        this.f44596p = topBack;
        this.f44597q = tvBtn;
        this.f44598r = tvGameTitle2;
        this.f44599s = tvModify2;
        this.f44600t = tvName;
        this.f44601u = tvTime;
        this.f44602v = xrecycleview;
    }

    @NonNull
    public static s1 bind(@NonNull View rootView) {
        int i10 = R.id.changeModle;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.changeModle);
        if (textView != null) {
            i10 = R.id.image_cover;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.image_cover);
            if (relativeLayout != null) {
                i10 = R.id.iv_back;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.iv_back);
                if (relativeLayout2 != null) {
                    i10 = R.id.iv_nome;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_nome);
                    if (linearLayout != null) {
                        i10 = R.id.iv_share;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_share);
                        if (imageView != null) {
                            i10 = R.id.listview;
                            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listview);
                            if (xListView2 != null) {
                                i10 = R.id.ll_gameform_title2;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_gameform_title2);
                                if (linearLayout2 != null) {
                                    i10 = R.id.main;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                                    if (linearLayout3 != null) {
                                        i10 = R.id.myswip;
                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.myswip);
                                        if (linearLayout4 != null) {
                                            i10 = R.id.rl_back_title;
                                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_back_title);
                                            if (relativeLayout3 != null) {
                                                i10 = R.id.smv_icon;
                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.smv_icon);
                                                if (simpleDraweeView != null) {
                                                    i10 = R.id.smv_icon2;
                                                    RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.smv_icon2);
                                                    if (relativeLayout4 != null) {
                                                        i10 = R.id.title;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                        if (textView2 != null) {
                                                            i10 = R.id.topBack;
                                                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.topBack);
                                                            if (simpleDraweeView2 != null) {
                                                                i10 = R.id.tv_btn;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn);
                                                                if (textView3 != null) {
                                                                    i10 = R.id.tv_game_title2;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_game_title2);
                                                                    if (textView4 != null) {
                                                                        i10 = R.id.tv_modify2;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_modify2);
                                                                        if (textView5 != null) {
                                                                            i10 = R.id.tv_name;
                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_name);
                                                                            if (textView6 != null) {
                                                                                i10 = R.id.tv_time;
                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_time);
                                                                                if (textView7 != null) {
                                                                                    i10 = R.id.xrecycleview;
                                                                                    XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.xrecycleview);
                                                                                    if (xRecyclerView != null) {
                                                                                        return new s1((RelativeLayout) rootView, textView, relativeLayout, relativeLayout2, linearLayout, imageView, xListView2, linearLayout2, linearLayout3, linearLayout4, relativeLayout3, simpleDraweeView, relativeLayout4, textView2, simpleDraweeView2, textView3, textView4, textView5, textView6, textView7, xRecyclerView);
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
    public static s1 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44582b;
    }

    @NonNull
    public static s1 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_game_detail, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
