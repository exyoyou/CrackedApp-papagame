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
import com.join.android.app.common.view.RoundImageView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.VipView;

/* JADX INFO: loaded from: classes4.dex */
public final class xh0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47221b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f47222c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RoundImageView f47223d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47224e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f47225f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f47226g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f47227h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f47228i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f47229j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f47230k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f47231l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f47232m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f47233n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f47234o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f47235p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ImageView f47236q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47237r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final View f47238s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47239t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final ImageView f47240u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final VipView f47241v;

    private xh0(@NonNull RelativeLayout rootView, @NonNull TextView commentAddTime, @NonNull RoundImageView commentAvatarSrc, @NonNull LinearLayout commentImages, @NonNull ImageView commentImg1, @NonNull ImageView commentImg2, @NonNull ImageView commentImg3, @NonNull ImageView commentImg4, @NonNull ImageView commentImg5, @NonNull ImageView commentImg6, @NonNull ImageView commentImg7, @NonNull ImageView commentImg8, @NonNull ImageView commentImg9, @NonNull TextView commentMessage, @NonNull TextView commentNickname, @NonNull ImageView commentReply, @NonNull LinearLayout commentReplyContainer, @NonNull View commentReplyDivider, @NonNull LinearLayout linearLayout9, @NonNull ImageView officialIcon, @NonNull VipView vipFlag) {
        this.f47221b = rootView;
        this.f47222c = commentAddTime;
        this.f47223d = commentAvatarSrc;
        this.f47224e = commentImages;
        this.f47225f = commentImg1;
        this.f47226g = commentImg2;
        this.f47227h = commentImg3;
        this.f47228i = commentImg4;
        this.f47229j = commentImg5;
        this.f47230k = commentImg6;
        this.f47231l = commentImg7;
        this.f47232m = commentImg8;
        this.f47233n = commentImg9;
        this.f47234o = commentMessage;
        this.f47235p = commentNickname;
        this.f47236q = commentReply;
        this.f47237r = commentReplyContainer;
        this.f47238s = commentReplyDivider;
        this.f47239t = linearLayout9;
        this.f47240u = officialIcon;
        this.f47241v = vipFlag;
    }

    @NonNull
    public static xh0 bind(@NonNull View rootView) {
        int i10 = R.id.comment_add_time;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_add_time);
        if (textView != null) {
            i10 = R.id.comment_avatar_src;
            RoundImageView roundImageView = (RoundImageView) ViewBindings.findChildViewById(rootView, R.id.comment_avatar_src);
            if (roundImageView != null) {
                i10 = R.id.comment_images;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.comment_images);
                if (linearLayout != null) {
                    i10 = R.id.comment_img_1;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.comment_img_1);
                    if (imageView != null) {
                        i10 = R.id.comment_img_2;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.comment_img_2);
                        if (imageView2 != null) {
                            i10 = R.id.comment_img_3;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.comment_img_3);
                            if (imageView3 != null) {
                                i10 = R.id.comment_img_4;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.comment_img_4);
                                if (imageView4 != null) {
                                    i10 = R.id.comment_img_5;
                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.comment_img_5);
                                    if (imageView5 != null) {
                                        i10 = R.id.comment_img_6;
                                        ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.comment_img_6);
                                        if (imageView6 != null) {
                                            i10 = R.id.comment_img_7;
                                            ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.comment_img_7);
                                            if (imageView7 != null) {
                                                i10 = R.id.comment_img_8;
                                                ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.comment_img_8);
                                                if (imageView8 != null) {
                                                    i10 = R.id.comment_img_9;
                                                    ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.comment_img_9);
                                                    if (imageView9 != null) {
                                                        i10 = R.id.comment_message;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_message);
                                                        if (textView2 != null) {
                                                            i10 = R.id.comment_nickname;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_nickname);
                                                            if (textView3 != null) {
                                                                i10 = R.id.comment_reply;
                                                                ImageView imageView10 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.comment_reply);
                                                                if (imageView10 != null) {
                                                                    i10 = R.id.comment_reply_container;
                                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.comment_reply_container);
                                                                    if (linearLayout2 != null) {
                                                                        i10 = R.id.comment_reply_divider;
                                                                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.comment_reply_divider);
                                                                        if (viewFindChildViewById != null) {
                                                                            i10 = R.id.linearLayout9;
                                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout9);
                                                                            if (linearLayout3 != null) {
                                                                                i10 = R.id.officialIcon;
                                                                                ImageView imageView11 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.officialIcon);
                                                                                if (imageView11 != null) {
                                                                                    i10 = R.id.vipFlag;
                                                                                    VipView vipView = (VipView) ViewBindings.findChildViewById(rootView, R.id.vipFlag);
                                                                                    if (vipView != null) {
                                                                                        return new xh0((RelativeLayout) rootView, textView, roundImageView, linearLayout, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9, textView2, textView3, imageView10, linearLayout2, viewFindChildViewById, linearLayout3, imageView11, vipView);
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
    public static xh0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47221b;
    }

    @NonNull
    public static xh0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_post_comment_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
