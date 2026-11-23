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
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyTouchFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class c3 implements ViewBinding {

    @NonNull
    public final RecyclerView A;

    @NonNull
    public final RecyclerView B;

    @NonNull
    public final SimpleDraweeView C;

    @NonNull
    public final SimpleDraweeView D;

    @NonNull
    public final TabLayout E;

    @NonNull
    public final TextView F;

    @NonNull
    public final TextView G;

    @NonNull
    public final TextView H;

    @NonNull
    public final TextView I;

    @NonNull
    public final TextView J;

    @NonNull
    public final TextView K;

    @NonNull
    public final SimpleDraweeView L;

    @NonNull
    public final TextView M;

    @NonNull
    public final TextView N;

    @NonNull
    public final TextView O;

    @NonNull
    public final TextView P;

    @NonNull
    public final TextView Q;

    @NonNull
    public final TextView R;

    @NonNull
    public final SimpleDraweeView S;

    @NonNull
    public final View T;

    @NonNull
    public final View U;

    @NonNull
    public final ViewPager V;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36724c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f36725d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f36726e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f36727f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36728g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36729h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36730i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final MyTouchFrameLayout f36731j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final MyTouchFrameLayout f36732k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f36733l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f36734m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f36735n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f36736o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f36737p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ImageView f36738q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ImageView f36739r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final ImageView f36740s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final ImageView f36741t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36742u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36743v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36744w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36745x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36746y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36747z;

    private c3(@NonNull RelativeLayout rootView, @NonNull RelativeLayout archiveLayout, @NonNull ImageView bgExpand, @NonNull ImageView btnRecommendToggleExpand, @NonNull ImageView btnRecommendToggleShrink, @NonNull ConstraintLayout clCloud, @NonNull ConstraintLayout clMod, @NonNull LinearLayout expandMask, @NonNull MyTouchFrameLayout flRecommendExpand, @NonNull MyTouchFrameLayout flRecommendShrink, @NonNull ImageView ivBack, @NonNull ImageView ivCloud, @NonNull ImageView ivCloud1, @NonNull ImageView ivCloudPlay, @NonNull ImageView ivMod, @NonNull ImageView ivMod1, @NonNull ImageView ivModFont, @NonNull ImageView ivModPlay, @NonNull ImageView ivStandFont, @NonNull LinearLayout llContainer, @NonNull LinearLayout llModStart, @NonNull LinearLayout llStandStart, @NonNull LinearLayout llTitle, @NonNull LinearLayout llVip, @NonNull LinearLayout rightLayout, @NonNull RecyclerView rvModGameRecommendExpand, @NonNull RecyclerView rvModGameRecommendShrink, @NonNull SimpleDraweeView sdvImage, @NonNull SimpleDraweeView sdvModDot, @NonNull TabLayout tabLayout, @NonNull TextView tvGameName, @NonNull TextView tvModInstallStatus, @NonNull TextView tvModStart, @NonNull TextView tvModStatus, @NonNull TextView tvModType, @NonNull TextView tvNewVersion, @NonNull SimpleDraweeView tvOpenVip, @NonNull TextView tvRecommendAdCount, @NonNull TextView tvStandNewVersion, @NonNull TextView tvStandStatus, @NonNull TextView tvStandType, @NonNull TextView tvText1, @NonNull TextView tvText5, @NonNull SimpleDraweeView userIcon, @NonNull View v10, @NonNull View v11, @NonNull ViewPager viewPager) {
        this.f36723b = rootView;
        this.f36724c = archiveLayout;
        this.f36725d = bgExpand;
        this.f36726e = btnRecommendToggleExpand;
        this.f36727f = btnRecommendToggleShrink;
        this.f36728g = clCloud;
        this.f36729h = clMod;
        this.f36730i = expandMask;
        this.f36731j = flRecommendExpand;
        this.f36732k = flRecommendShrink;
        this.f36733l = ivBack;
        this.f36734m = ivCloud;
        this.f36735n = ivCloud1;
        this.f36736o = ivCloudPlay;
        this.f36737p = ivMod;
        this.f36738q = ivMod1;
        this.f36739r = ivModFont;
        this.f36740s = ivModPlay;
        this.f36741t = ivStandFont;
        this.f36742u = llContainer;
        this.f36743v = llModStart;
        this.f36744w = llStandStart;
        this.f36745x = llTitle;
        this.f36746y = llVip;
        this.f36747z = rightLayout;
        this.A = rvModGameRecommendExpand;
        this.B = rvModGameRecommendShrink;
        this.C = sdvImage;
        this.D = sdvModDot;
        this.E = tabLayout;
        this.F = tvGameName;
        this.G = tvModInstallStatus;
        this.H = tvModStart;
        this.I = tvModStatus;
        this.J = tvModType;
        this.K = tvNewVersion;
        this.L = tvOpenVip;
        this.M = tvRecommendAdCount;
        this.N = tvStandNewVersion;
        this.O = tvStandStatus;
        this.P = tvStandType;
        this.Q = tvText1;
        this.R = tvText5;
        this.S = userIcon;
        this.T = v10;
        this.U = v11;
        this.V = viewPager;
    }

    @NonNull
    public static c3 bind(@NonNull View rootView) {
        int i10 = R.id.archiveLayout;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.archiveLayout);
        if (relativeLayout != null) {
            i10 = R.id.bgExpand;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.bgExpand);
            if (imageView != null) {
                i10 = R.id.btnRecommendToggleExpand;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.btnRecommendToggleExpand);
                if (imageView2 != null) {
                    i10 = R.id.btnRecommendToggleShrink;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.btnRecommendToggleShrink);
                    if (imageView3 != null) {
                        i10 = R.id.cl_cloud;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_cloud);
                        if (constraintLayout != null) {
                            i10 = R.id.cl_mod;
                            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_mod);
                            if (constraintLayout2 != null) {
                                i10 = R.id.expandMask;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.expandMask);
                                if (linearLayout != null) {
                                    i10 = R.id.flRecommendExpand;
                                    MyTouchFrameLayout myTouchFrameLayout = (MyTouchFrameLayout) ViewBindings.findChildViewById(rootView, R.id.flRecommendExpand);
                                    if (myTouchFrameLayout != null) {
                                        i10 = R.id.flRecommendShrink;
                                        MyTouchFrameLayout myTouchFrameLayout2 = (MyTouchFrameLayout) ViewBindings.findChildViewById(rootView, R.id.flRecommendShrink);
                                        if (myTouchFrameLayout2 != null) {
                                            i10 = R.id.iv_back;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_back);
                                            if (imageView4 != null) {
                                                i10 = R.id.iv_cloud;
                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_cloud);
                                                if (imageView5 != null) {
                                                    i10 = R.id.iv_cloud_1;
                                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_cloud_1);
                                                    if (imageView6 != null) {
                                                        i10 = R.id.iv_cloud_play;
                                                        ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_cloud_play);
                                                        if (imageView7 != null) {
                                                            i10 = R.id.iv_mod;
                                                            ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_mod);
                                                            if (imageView8 != null) {
                                                                i10 = R.id.iv_mod_1;
                                                                ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_mod_1);
                                                                if (imageView9 != null) {
                                                                    i10 = R.id.iv_mod_font;
                                                                    ImageView imageView10 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_mod_font);
                                                                    if (imageView10 != null) {
                                                                        i10 = R.id.iv_mod_play;
                                                                        ImageView imageView11 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_mod_play);
                                                                        if (imageView11 != null) {
                                                                            i10 = R.id.iv_stand_font;
                                                                            ImageView imageView12 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_stand_font);
                                                                            if (imageView12 != null) {
                                                                                i10 = R.id.llContainer;
                                                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llContainer);
                                                                                if (linearLayout2 != null) {
                                                                                    i10 = R.id.ll_mod_start;
                                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_mod_start);
                                                                                    if (linearLayout3 != null) {
                                                                                        i10 = R.id.ll_stand_start;
                                                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_stand_start);
                                                                                        if (linearLayout4 != null) {
                                                                                            i10 = R.id.ll_title;
                                                                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_title);
                                                                                            if (linearLayout5 != null) {
                                                                                                i10 = R.id.ll_vip;
                                                                                                LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_vip);
                                                                                                if (linearLayout6 != null) {
                                                                                                    i10 = R.id.rightLayout;
                                                                                                    LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.rightLayout);
                                                                                                    if (linearLayout7 != null) {
                                                                                                        i10 = R.id.rvModGameRecommendExpand;
                                                                                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvModGameRecommendExpand);
                                                                                                        if (recyclerView != null) {
                                                                                                            i10 = R.id.rvModGameRecommendShrink;
                                                                                                            RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvModGameRecommendShrink);
                                                                                                            if (recyclerView2 != null) {
                                                                                                                i10 = R.id.sdv_image;
                                                                                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
                                                                                                                if (simpleDraweeView != null) {
                                                                                                                    i10 = R.id.sdv_mod_dot;
                                                                                                                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_mod_dot);
                                                                                                                    if (simpleDraweeView2 != null) {
                                                                                                                        i10 = R.id.tabLayout;
                                                                                                                        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(rootView, R.id.tabLayout);
                                                                                                                        if (tabLayout != null) {
                                                                                                                            i10 = R.id.tv_game_name;
                                                                                                                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_game_name);
                                                                                                                            if (textView != null) {
                                                                                                                                i10 = R.id.tv_mod_install_status;
                                                                                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_mod_install_status);
                                                                                                                                if (textView2 != null) {
                                                                                                                                    i10 = R.id.tv_mod_start;
                                                                                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_mod_start);
                                                                                                                                    if (textView3 != null) {
                                                                                                                                        i10 = R.id.tv_mod_status;
                                                                                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_mod_status);
                                                                                                                                        if (textView4 != null) {
                                                                                                                                            i10 = R.id.tv_mod_type;
                                                                                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_mod_type);
                                                                                                                                            if (textView5 != null) {
                                                                                                                                                i10 = R.id.tv_new_version;
                                                                                                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_new_version);
                                                                                                                                                if (textView6 != null) {
                                                                                                                                                    i10 = R.id.tv_open_vip;
                                                                                                                                                    SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.tv_open_vip);
                                                                                                                                                    if (simpleDraweeView3 != null) {
                                                                                                                                                        i10 = R.id.tvRecommendAdCount;
                                                                                                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvRecommendAdCount);
                                                                                                                                                        if (textView7 != null) {
                                                                                                                                                            i10 = R.id.tv_stand_new_version;
                                                                                                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_stand_new_version);
                                                                                                                                                            if (textView8 != null) {
                                                                                                                                                                i10 = R.id.tv_stand_status;
                                                                                                                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_stand_status);
                                                                                                                                                                if (textView9 != null) {
                                                                                                                                                                    i10 = R.id.tv_stand_type;
                                                                                                                                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_stand_type);
                                                                                                                                                                    if (textView10 != null) {
                                                                                                                                                                        i10 = R.id.tv_text_1;
                                                                                                                                                                        TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                                                                                                                                                                        if (textView11 != null) {
                                                                                                                                                                            i10 = R.id.tv_text_5;
                                                                                                                                                                            TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_5);
                                                                                                                                                                            if (textView12 != null) {
                                                                                                                                                                                i10 = R.id.userIcon;
                                                                                                                                                                                SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.userIcon);
                                                                                                                                                                                if (simpleDraweeView4 != null) {
                                                                                                                                                                                    i10 = R.id.v_1;
                                                                                                                                                                                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_1);
                                                                                                                                                                                    if (viewFindChildViewById != null) {
                                                                                                                                                                                        i10 = R.id.v_2;
                                                                                                                                                                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.v_2);
                                                                                                                                                                                        if (viewFindChildViewById2 != null) {
                                                                                                                                                                                            i10 = R.id.viewPager;
                                                                                                                                                                                            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                                                                                                                                                                                            if (viewPager != null) {
                                                                                                                                                                                                return new c3((RelativeLayout) rootView, relativeLayout, imageView, imageView2, imageView3, constraintLayout, constraintLayout2, linearLayout, myTouchFrameLayout, myTouchFrameLayout2, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9, imageView10, imageView11, imageView12, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, recyclerView, recyclerView2, simpleDraweeView, simpleDraweeView2, tabLayout, textView, textView2, textView3, textView4, textView5, textView6, simpleDraweeView3, textView7, textView8, textView9, textView10, textView11, textView12, simpleDraweeView4, viewFindChildViewById, viewFindChildViewById2, viewPager);
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
    public static c3 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36723b;
    }

    @NonNull
    public static c3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_mod_game_index, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
