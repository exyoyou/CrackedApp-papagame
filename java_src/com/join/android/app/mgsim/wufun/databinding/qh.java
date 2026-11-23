package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qh implements ViewBinding {

    @NonNull
    public final View A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43814b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43815c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43816d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43817e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f43818f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f43819g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RadioButton f43820h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RadioButton f43821i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RadioButton f43822j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RadioButton f43823k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RadioButton f43824l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RadioButton f43825m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RadioGroup f43826n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final RadioGroup f43827o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43828p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43829q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43830r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43831s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43832t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f43833u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f43834v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f43835w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f43836x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final View f43837y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final View f43838z;

    private qh(@NonNull RelativeLayout rootView, @NonNull LinearLayout clo, @NonNull ImageView ivBjBattleAreaRec, @NonNull LinearLayout ivClose, @NonNull ImageView ivGzBattleAreaRec, @NonNull ImageView ivShBattleAreaRec, @NonNull RadioButton rbPhone, @NonNull RadioButton rbRankAsc, @NonNull RadioButton rbRankDesc, @NonNull RadioButton rbSeatAsc, @NonNull RadioButton rbSynthesize, @NonNull RadioButton rbTimeAsc, @NonNull RadioGroup rgRoomSort, @NonNull RadioGroup rgRoomType, @NonNull RelativeLayout rlBj, @NonNull RelativeLayout rlGz, @NonNull RelativeLayout rlSh, @NonNull RelativeLayout rlTop, @NonNull LinearLayout serverLayout, @NonNull TextView tvBj, @NonNull TextView tvGz, @NonNull TextView tvSh, @NonNull TextView tvSubmit, @NonNull View viewBj, @NonNull View viewGz, @NonNull View viewSh) {
        this.f43814b = rootView;
        this.f43815c = clo;
        this.f43816d = ivBjBattleAreaRec;
        this.f43817e = ivClose;
        this.f43818f = ivGzBattleAreaRec;
        this.f43819g = ivShBattleAreaRec;
        this.f43820h = rbPhone;
        this.f43821i = rbRankAsc;
        this.f43822j = rbRankDesc;
        this.f43823k = rbSeatAsc;
        this.f43824l = rbSynthesize;
        this.f43825m = rbTimeAsc;
        this.f43826n = rgRoomSort;
        this.f43827o = rgRoomType;
        this.f43828p = rlBj;
        this.f43829q = rlGz;
        this.f43830r = rlSh;
        this.f43831s = rlTop;
        this.f43832t = serverLayout;
        this.f43833u = tvBj;
        this.f43834v = tvGz;
        this.f43835w = tvSh;
        this.f43836x = tvSubmit;
        this.f43837y = viewBj;
        this.f43838z = viewGz;
        this.A = viewSh;
    }

    @NonNull
    public static qh bind(@NonNull View rootView) {
        int i10 = R.id.clo;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.clo);
        if (linearLayout != null) {
            i10 = R.id.iv_bj_battle_area_rec;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_bj_battle_area_rec);
            if (imageView != null) {
                i10 = R.id.iv_close;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                if (linearLayout2 != null) {
                    i10 = R.id.iv_gz_battle_area_rec;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_gz_battle_area_rec);
                    if (imageView2 != null) {
                        i10 = R.id.iv_sh_battle_area_rec;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_sh_battle_area_rec);
                        if (imageView3 != null) {
                            i10 = R.id.rb_phone;
                            RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rb_phone);
                            if (radioButton != null) {
                                i10 = R.id.rb_rank_asc;
                                RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rb_rank_asc);
                                if (radioButton2 != null) {
                                    i10 = R.id.rb_rank_desc;
                                    RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rb_rank_desc);
                                    if (radioButton3 != null) {
                                        i10 = R.id.rb_seat_asc;
                                        RadioButton radioButton4 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rb_seat_asc);
                                        if (radioButton4 != null) {
                                            i10 = R.id.rb_synthesize;
                                            RadioButton radioButton5 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rb_synthesize);
                                            if (radioButton5 != null) {
                                                i10 = R.id.rb_time_asc;
                                                RadioButton radioButton6 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rb_time_asc);
                                                if (radioButton6 != null) {
                                                    i10 = R.id.rgRoomSort;
                                                    RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(rootView, R.id.rgRoomSort);
                                                    if (radioGroup != null) {
                                                        i10 = R.id.rgRoomType;
                                                        RadioGroup radioGroup2 = (RadioGroup) ViewBindings.findChildViewById(rootView, R.id.rgRoomType);
                                                        if (radioGroup2 != null) {
                                                            i10 = R.id.rl_bj;
                                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_bj);
                                                            if (relativeLayout != null) {
                                                                i10 = R.id.rl_gz;
                                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_gz);
                                                                if (relativeLayout2 != null) {
                                                                    i10 = R.id.rl_sh;
                                                                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_sh);
                                                                    if (relativeLayout3 != null) {
                                                                        i10 = R.id.rl_top;
                                                                        RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_top);
                                                                        if (relativeLayout4 != null) {
                                                                            i10 = R.id.serverLayout;
                                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.serverLayout);
                                                                            if (linearLayout3 != null) {
                                                                                i10 = R.id.tv_bj;
                                                                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_bj);
                                                                                if (textView != null) {
                                                                                    i10 = R.id.tv_gz;
                                                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_gz);
                                                                                    if (textView2 != null) {
                                                                                        i10 = R.id.tv_sh;
                                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_sh);
                                                                                        if (textView3 != null) {
                                                                                            i10 = R.id.tvSubmit;
                                                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvSubmit);
                                                                                            if (textView4 != null) {
                                                                                                i10 = R.id.view_bj;
                                                                                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.view_bj);
                                                                                                if (viewFindChildViewById != null) {
                                                                                                    i10 = R.id.view_gz;
                                                                                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.view_gz);
                                                                                                    if (viewFindChildViewById2 != null) {
                                                                                                        i10 = R.id.view_sh;
                                                                                                        View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.view_sh);
                                                                                                        if (viewFindChildViewById3 != null) {
                                                                                                            return new qh((RelativeLayout) rootView, linearLayout, imageView, linearLayout2, imageView2, imageView3, radioButton, radioButton2, radioButton3, radioButton4, radioButton5, radioButton6, radioGroup, radioGroup2, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, linearLayout3, textView, textView2, textView3, textView4, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f43814b;
    }

    @NonNull
    public static qh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_room_sort, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
