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
public final class ah0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f35821b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f35822c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35823d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f35824e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35825f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f35826g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f35827h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f35828i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final Button f35829j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f35830k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f35831l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35832m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f35833n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f35834o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final VipView f35835p;

    private ah0(@NonNull RelativeLayout rootView, @NonNull TextView commentAddTime, @NonNull SimpleDraweeView commentAvatarSrc, @NonNull TextView commentFloor, @NonNull TextView commentNickname, @NonNull ImageView commentReply, @NonNull View divider, @NonNull ImageView flagBestAnswer, @NonNull Button forumPostHost, @NonNull ImageView forumPostModerator, @NonNull ImageView isOfficial, @NonNull LinearLayout llMain, @NonNull TextView memberHonor, @NonNull TextView moderator, @NonNull VipView vipFlag) {
        this.f35821b = rootView;
        this.f35822c = commentAddTime;
        this.f35823d = commentAvatarSrc;
        this.f35824e = commentFloor;
        this.f35825f = commentNickname;
        this.f35826g = commentReply;
        this.f35827h = divider;
        this.f35828i = flagBestAnswer;
        this.f35829j = forumPostHost;
        this.f35830k = forumPostModerator;
        this.f35831l = isOfficial;
        this.f35832m = llMain;
        this.f35833n = memberHonor;
        this.f35834o = moderator;
        this.f35835p = vipFlag;
    }

    @NonNull
    public static ah0 bind(@NonNull View rootView) {
        int i10 = R.id.comment_add_time;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_add_time);
        if (textView != null) {
            i10 = R.id.comment_avatar_src;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.comment_avatar_src);
            if (simpleDraweeView != null) {
                i10 = R.id.comment_floor;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_floor);
                if (textView2 != null) {
                    i10 = R.id.comment_nickname;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_nickname);
                    if (textView3 != null) {
                        i10 = R.id.comment_reply;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.comment_reply);
                        if (imageView != null) {
                            i10 = R.id.divider;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
                            if (viewFindChildViewById != null) {
                                i10 = R.id.flagBestAnswer;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.flagBestAnswer);
                                if (imageView2 != null) {
                                    i10 = R.id.forum_post_host;
                                    Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.forum_post_host);
                                    if (button != null) {
                                        i10 = R.id.forum_post_moderator;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.forum_post_moderator);
                                        if (imageView3 != null) {
                                            i10 = R.id.isOfficial;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.isOfficial);
                                            if (imageView4 != null) {
                                                i10 = R.id.ll_main;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_main);
                                                if (linearLayout != null) {
                                                    i10 = R.id.member_honor;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.member_honor);
                                                    if (textView4 != null) {
                                                        i10 = R.id.moderator;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moderator);
                                                        if (textView5 != null) {
                                                            i10 = R.id.vipFlag;
                                                            VipView vipView = (VipView) ViewBindings.findChildViewById(rootView, R.id.vipFlag);
                                                            if (vipView != null) {
                                                                return new ah0((RelativeLayout) rootView, textView, simpleDraweeView, textView2, textView3, imageView, viewFindChildViewById, imageView2, button, imageView3, imageView4, linearLayout, textView4, textView5, vipView);
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
    public static ah0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f35821b;
    }

    @NonNull
    public static ah0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_post_activity_item_comment_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
