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
public final class mh0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41887c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f41888d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41889e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41890f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41891g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f41892h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final Button f41893i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f41894j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f41895k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f41896l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41897m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f41898n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f41899o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f41900p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final VipView f41901q;

    private mh0(@NonNull LinearLayout rootView, @NonNull TextView copperTitleTv, @NonNull ImageView flagBestAnswer, @NonNull RelativeLayout forumExtFunc, @NonNull TextView forumPostAddTime, @NonNull SimpleDraweeView forumPostAvatarSrc, @NonNull View forumPostDivider, @NonNull Button forumPostHost, @NonNull ImageView forumPostModerator, @NonNull TextView forumPostNickname, @NonNull TextView forumPostStickie, @NonNull LinearLayout layoutPostsTop, @NonNull ImageView moreFunc, @NonNull ImageView officialIcon, @NonNull ImageView replyFunc, @NonNull VipView vipFlag) {
        this.f41886b = rootView;
        this.f41887c = copperTitleTv;
        this.f41888d = flagBestAnswer;
        this.f41889e = forumExtFunc;
        this.f41890f = forumPostAddTime;
        this.f41891g = forumPostAvatarSrc;
        this.f41892h = forumPostDivider;
        this.f41893i = forumPostHost;
        this.f41894j = forumPostModerator;
        this.f41895k = forumPostNickname;
        this.f41896l = forumPostStickie;
        this.f41897m = layoutPostsTop;
        this.f41898n = moreFunc;
        this.f41899o = officialIcon;
        this.f41900p = replyFunc;
        this.f41901q = vipFlag;
    }

    @NonNull
    public static mh0 bind(@NonNull View rootView) {
        int i10 = R.id.copperTitleTv;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.copperTitleTv);
        if (textView != null) {
            i10 = R.id.flagBestAnswer;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.flagBestAnswer);
            if (imageView != null) {
                i10 = R.id.forumExtFunc;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.forumExtFunc);
                if (relativeLayout != null) {
                    i10 = R.id.forum_post_add_time;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_add_time);
                    if (textView2 != null) {
                        i10 = R.id.forum_post_avatar_src;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.forum_post_avatar_src);
                        if (simpleDraweeView != null) {
                            i10 = R.id.forum_post_divider;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.forum_post_divider);
                            if (viewFindChildViewById != null) {
                                i10 = R.id.forum_post_host;
                                Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.forum_post_host);
                                if (button != null) {
                                    i10 = R.id.forum_post_moderator;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.forum_post_moderator);
                                    if (imageView2 != null) {
                                        i10 = R.id.forum_post_nickname;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_nickname);
                                        if (textView3 != null) {
                                            i10 = R.id.forum_post_stickie;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_stickie);
                                            if (textView4 != null) {
                                                i10 = R.id.layout_posts_top;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_posts_top);
                                                if (linearLayout != null) {
                                                    i10 = R.id.moreFunc;
                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.moreFunc);
                                                    if (imageView3 != null) {
                                                        i10 = R.id.officialIcon;
                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.officialIcon);
                                                        if (imageView4 != null) {
                                                            i10 = R.id.replyFunc;
                                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.replyFunc);
                                                            if (imageView5 != null) {
                                                                i10 = R.id.vipFlag;
                                                                VipView vipView = (VipView) ViewBindings.findChildViewById(rootView, R.id.vipFlag);
                                                                if (vipView != null) {
                                                                    return new mh0((LinearLayout) rootView, textView, imageView, relativeLayout, textView2, simpleDraweeView, viewFindChildViewById, button, imageView2, textView3, textView4, linearLayout, imageView3, imageView4, imageView5, vipView);
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
    public static mh0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41886b;
    }

    @NonNull
    public static mh0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_post_activity_item_post_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
