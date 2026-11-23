package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
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
import com.join.mgps.customview.VipView;

/* JADX INFO: loaded from: classes4.dex */
public final class aj0 implements ViewBinding {

    @NonNull
    public final SimpleDraweeView A;

    @NonNull
    public final RelativeLayout B;

    @NonNull
    public final ImageView C;

    @NonNull
    public final VipView D;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f35847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f35848c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f35849d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f35850e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35851f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f35852g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final Button f35853h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f35854i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f35855j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f35856k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f35857l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f35858m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f35859n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f35860o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f35861p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f35862q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f35863r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final ImageView f35864s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f35865t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35866u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35867v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f35868w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f35869x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final ImageView f35870y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final Button f35871z;

    private aj0(@NonNull RelativeLayout rootView, @NonNull ImageView backImage, @NonNull TextView checkInFlag, @NonNull TextView checkInImage, @NonNull TextView copperTitleTv, @NonNull Button forumPost, @NonNull Button forumPostHost, @NonNull ImageView forumPostModerator, @NonNull TextView forumPostNickname, @NonNull TextView forumPostStickie, @NonNull TextView forumTitleCenter, @NonNull ImageView ivMore, @NonNull TextView layoutTitle, @NonNull TextView layoutTitleRight, @NonNull TextView memberHonor, @NonNull TextView moderator, @NonNull RelativeLayout myProfileMessage, @NonNull ImageView officialIcon, @NonNull TextView postFuncHost, @NonNull LinearLayout postFuncMore, @NonNull LinearLayout postFunction, @NonNull TextView profileMessageFlag, @NonNull TextView profileMessageFlagNoNum, @NonNull ImageView profileMessageImage, @NonNull Button release, @NonNull SimpleDraweeView sdvHead, @NonNull RelativeLayout search, @NonNull ImageView sreachImage, @NonNull VipView vipFlag) {
        this.f35847b = rootView;
        this.f35848c = backImage;
        this.f35849d = checkInFlag;
        this.f35850e = checkInImage;
        this.f35851f = copperTitleTv;
        this.f35852g = forumPost;
        this.f35853h = forumPostHost;
        this.f35854i = forumPostModerator;
        this.f35855j = forumPostNickname;
        this.f35856k = forumPostStickie;
        this.f35857l = forumTitleCenter;
        this.f35858m = ivMore;
        this.f35859n = layoutTitle;
        this.f35860o = layoutTitleRight;
        this.f35861p = memberHonor;
        this.f35862q = moderator;
        this.f35863r = myProfileMessage;
        this.f35864s = officialIcon;
        this.f35865t = postFuncHost;
        this.f35866u = postFuncMore;
        this.f35867v = postFunction;
        this.f35868w = profileMessageFlag;
        this.f35869x = profileMessageFlagNoNum;
        this.f35870y = profileMessageImage;
        this.f35871z = release;
        this.A = sdvHead;
        this.B = search;
        this.C = sreachImage;
        this.D = vipFlag;
    }

    @NonNull
    public static aj0 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.checkInFlag;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.checkInFlag);
            if (textView != null) {
                i10 = R.id.checkInImage;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.checkInImage);
                if (textView2 != null) {
                    i10 = R.id.copperTitleTv;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.copperTitleTv);
                    if (textView3 != null) {
                        i10 = R.id.forum_post;
                        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.forum_post);
                        if (button != null) {
                            i10 = R.id.forum_post_host;
                            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.forum_post_host);
                            if (button2 != null) {
                                i10 = R.id.forum_post_moderator;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.forum_post_moderator);
                                if (imageView2 != null) {
                                    i10 = R.id.forum_post_nickname;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_nickname);
                                    if (textView4 != null) {
                                        i10 = R.id.forum_post_stickie;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_stickie);
                                        if (textView5 != null) {
                                            i10 = R.id.forum_title_center;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_title_center);
                                            if (textView6 != null) {
                                                i10 = R.id.iv_more;
                                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_more);
                                                if (imageView3 != null) {
                                                    i10 = R.id.layout_title;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.layout_title);
                                                    if (textView7 != null) {
                                                        i10 = R.id.layout_title_right;
                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.layout_title_right);
                                                        if (textView8 != null) {
                                                            i10 = R.id.member_honor;
                                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.member_honor);
                                                            if (textView9 != null) {
                                                                i10 = R.id.moderator;
                                                                TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moderator);
                                                                if (textView10 != null) {
                                                                    i10 = R.id.myProfileMessage;
                                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.myProfileMessage);
                                                                    if (relativeLayout != null) {
                                                                        i10 = R.id.officialIcon;
                                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.officialIcon);
                                                                        if (imageView4 != null) {
                                                                            i10 = R.id.postFuncHost;
                                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.postFuncHost);
                                                                            if (textView11 != null) {
                                                                                i10 = R.id.postFuncMore;
                                                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.postFuncMore);
                                                                                if (linearLayout != null) {
                                                                                    i10 = R.id.postFunction;
                                                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.postFunction);
                                                                                    if (linearLayout2 != null) {
                                                                                        i10 = R.id.profileMessageFlag;
                                                                                        TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, R.id.profileMessageFlag);
                                                                                        if (textView12 != null) {
                                                                                            i10 = R.id.profileMessageFlagNoNum;
                                                                                            TextView textView13 = (TextView) ViewBindings.findChildViewById(rootView, R.id.profileMessageFlagNoNum);
                                                                                            if (textView13 != null) {
                                                                                                i10 = R.id.profileMessageImage;
                                                                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.profileMessageImage);
                                                                                                if (imageView5 != null) {
                                                                                                    i10 = R.id.release;
                                                                                                    Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.release);
                                                                                                    if (button3 != null) {
                                                                                                        i10 = R.id.sdv_head;
                                                                                                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_head);
                                                                                                        if (simpleDraweeView != null) {
                                                                                                            i10 = R.id.search;
                                                                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.search);
                                                                                                            if (relativeLayout2 != null) {
                                                                                                                i10 = R.id.sreach_image;
                                                                                                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.sreach_image);
                                                                                                                if (imageView6 != null) {
                                                                                                                    i10 = R.id.vipFlag;
                                                                                                                    VipView vipView = (VipView) ViewBindings.findChildViewById(rootView, R.id.vipFlag);
                                                                                                                    if (vipView != null) {
                                                                                                                        return new aj0((RelativeLayout) rootView, imageView, textView, textView2, textView3, button, button2, imageView2, textView4, textView5, textView6, imageView3, textView7, textView8, textView9, textView10, relativeLayout, imageView4, textView11, linearLayout, linearLayout2, textView12, textView13, imageView5, button3, simpleDraweeView, relativeLayout2, imageView6, vipView);
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
    public static aj0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f35847b;
    }

    @NonNull
    public static aj0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_title_detail_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
