package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
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

/* JADX INFO: loaded from: classes4.dex */
public final class g40 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38702b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38703c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38704d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38705e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f38706f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38707g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38708h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f38709i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f38710j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageButton f38711k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38712l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f38713m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f38714n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f38715o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38716p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38717q;

    private g40(@NonNull LinearLayout rootView, @NonNull ImageView itemHanderBgIv, @NonNull SimpleDraweeView itemHanderIv, @NonNull TextView itemRankBfTv, @NonNull ImageView itemRankBgIv, @NonNull TextView itemRankCionTv, @NonNull RelativeLayout itemRankHeaderRl, @NonNull ImageView itemRankIv, @NonNull TextView itemRankNameTv, @NonNull ImageButton itemRankPlayIb, @NonNull RelativeLayout itemRankRl, @NonNull TextView itemRankRoleTv, @NonNull TextView itemRankTimeTv, @NonNull TextView itemRankTv, @NonNull RelativeLayout itemRootRl, @NonNull RelativeLayout relativeLayout2) {
        this.f38702b = rootView;
        this.f38703c = itemHanderBgIv;
        this.f38704d = itemHanderIv;
        this.f38705e = itemRankBfTv;
        this.f38706f = itemRankBgIv;
        this.f38707g = itemRankCionTv;
        this.f38708h = itemRankHeaderRl;
        this.f38709i = itemRankIv;
        this.f38710j = itemRankNameTv;
        this.f38711k = itemRankPlayIb;
        this.f38712l = itemRankRl;
        this.f38713m = itemRankRoleTv;
        this.f38714n = itemRankTimeTv;
        this.f38715o = itemRankTv;
        this.f38716p = itemRootRl;
        this.f38717q = relativeLayout2;
    }

    @NonNull
    public static g40 bind(@NonNull View rootView) {
        int i10 = R.id.item_hander_bg_iv;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.item_hander_bg_iv);
        if (imageView != null) {
            i10 = R.id.item_hander_iv;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.item_hander_iv);
            if (simpleDraweeView != null) {
                i10 = R.id.item_rank_bf_tv;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.item_rank_bf_tv);
                if (textView != null) {
                    i10 = R.id.item_rank_bg_iv;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.item_rank_bg_iv);
                    if (imageView2 != null) {
                        i10 = R.id.item_rank_cion_tv;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.item_rank_cion_tv);
                        if (textView2 != null) {
                            i10 = R.id.item_rank_header_rl;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.item_rank_header_rl);
                            if (relativeLayout != null) {
                                i10 = R.id.item_rank_iv;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.item_rank_iv);
                                if (imageView3 != null) {
                                    i10 = R.id.item_rank_name_tv;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.item_rank_name_tv);
                                    if (textView3 != null) {
                                        i10 = R.id.item_rank_play_ib;
                                        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(rootView, R.id.item_rank_play_ib);
                                        if (imageButton != null) {
                                            i10 = R.id.item_rank_rl;
                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.item_rank_rl);
                                            if (relativeLayout2 != null) {
                                                i10 = R.id.item_rank_role_tv;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.item_rank_role_tv);
                                                if (textView4 != null) {
                                                    i10 = R.id.item_rank_time_tv;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.item_rank_time_tv);
                                                    if (textView5 != null) {
                                                        i10 = R.id.item_rank_tv;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.item_rank_tv);
                                                        if (textView6 != null) {
                                                            i10 = R.id.item_root_rl;
                                                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.item_root_rl);
                                                            if (relativeLayout3 != null) {
                                                                i10 = R.id.relativeLayout2;
                                                                RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.relativeLayout2);
                                                                if (relativeLayout4 != null) {
                                                                    return new g40((LinearLayout) rootView, imageView, simpleDraweeView, textView, imageView2, textView2, relativeLayout, imageView3, textView3, imageButton, relativeLayout2, textView4, textView5, textView6, relativeLayout3, relativeLayout4);
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
    public static g40 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38702b;
    }

    @NonNull
    public static g40 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_paiwei_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
