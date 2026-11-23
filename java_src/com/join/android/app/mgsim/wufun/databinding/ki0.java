package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ki0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40797c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40798d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f40799e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40800f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40801g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f40802h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40803i;

    private ki0(@NonNull LinearLayout rootView, @NonNull TextView forumPostAddTime, @NonNull SimpleDraweeView forumPostAvatarSrc, @NonNull View forumPostDivider, @NonNull LinearLayout forumPostFuncContainer, @NonNull TextView forumPostNickname, @NonNull ImageView forumPostReply, @NonNull LinearLayout layoutPostsTop) {
        this.f40796b = rootView;
        this.f40797c = forumPostAddTime;
        this.f40798d = forumPostAvatarSrc;
        this.f40799e = forumPostDivider;
        this.f40800f = forumPostFuncContainer;
        this.f40801g = forumPostNickname;
        this.f40802h = forumPostReply;
        this.f40803i = layoutPostsTop;
    }

    @NonNull
    public static ki0 bind(@NonNull View rootView) {
        int i10 = R.id.forum_post_add_time;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_add_time);
        if (textView != null) {
            i10 = R.id.forum_post_avatar_src;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.forum_post_avatar_src);
            if (simpleDraweeView != null) {
                i10 = R.id.forum_post_divider;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.forum_post_divider);
                if (viewFindChildViewById != null) {
                    i10 = R.id.forum_post_func_container;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forum_post_func_container);
                    if (linearLayout != null) {
                        i10 = R.id.forum_post_nickname;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_nickname);
                        if (textView2 != null) {
                            i10 = R.id.forum_post_reply;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.forum_post_reply);
                            if (imageView != null) {
                                i10 = R.id.layout_posts_top;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_posts_top);
                                if (linearLayout2 != null) {
                                    return new ki0((LinearLayout) rootView, textView, simpleDraweeView, viewFindChildViewById, linearLayout, textView2, imageView, linearLayout2);
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
    public static ki0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40796b;
    }

    @NonNull
    public static ki0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_profile_reply_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
