package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
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
public final class vg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46258b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f46259c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f46260d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46261e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46262f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46263g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46264h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46265i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46266j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f46267k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46268l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f46269m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46270n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f46271o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f46272p;

    private vg0(@NonNull LinearLayout rootView, @NonNull TextView forumDesc, @NonNull Button forumFollow, @NonNull LinearLayout forumFollowLayout, @NonNull TextView forumFollowTv, @NonNull LinearLayout forumFollowsParent, @NonNull SimpleDraweeView forumIcon, @NonNull TextView forumName, @NonNull LinearLayout forumPostsParent, @NonNull TextView forumPostsTv, @NonNull RelativeLayout forumTodayPostsParent, @NonNull TextView forumTodayPostsTv, @NonNull LinearLayout forumUsersParent, @NonNull TextView forumUsersTv, @NonNull TextView textView14) {
        this.f46258b = rootView;
        this.f46259c = forumDesc;
        this.f46260d = forumFollow;
        this.f46261e = forumFollowLayout;
        this.f46262f = forumFollowTv;
        this.f46263g = forumFollowsParent;
        this.f46264h = forumIcon;
        this.f46265i = forumName;
        this.f46266j = forumPostsParent;
        this.f46267k = forumPostsTv;
        this.f46268l = forumTodayPostsParent;
        this.f46269m = forumTodayPostsTv;
        this.f46270n = forumUsersParent;
        this.f46271o = forumUsersTv;
        this.f46272p = textView14;
    }

    @NonNull
    public static vg0 bind(@NonNull View rootView) {
        int i10 = R.id.forum_desc;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_desc);
        if (textView != null) {
            i10 = R.id.forum_follow;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.forum_follow);
            if (button != null) {
                i10 = R.id.forum_follow_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forum_follow_layout);
                if (linearLayout != null) {
                    i10 = R.id.forum_follow_tv;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_follow_tv);
                    if (textView2 != null) {
                        i10 = R.id.forumFollowsParent;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forumFollowsParent);
                        if (linearLayout2 != null) {
                            i10 = R.id.forum_icon;
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.forum_icon);
                            if (simpleDraweeView != null) {
                                i10 = R.id.forum_name;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_name);
                                if (textView3 != null) {
                                    i10 = R.id.forumPostsParent;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forumPostsParent);
                                    if (linearLayout3 != null) {
                                        i10 = R.id.forum_posts_tv;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_posts_tv);
                                        if (textView4 != null) {
                                            i10 = R.id.forumTodayPostsParent;
                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.forumTodayPostsParent);
                                            if (relativeLayout != null) {
                                                i10 = R.id.forum_today_posts_tv;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_today_posts_tv);
                                                if (textView5 != null) {
                                                    i10 = R.id.forumUsersParent;
                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forumUsersParent);
                                                    if (linearLayout4 != null) {
                                                        i10 = R.id.forum_users_tv;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_users_tv);
                                                        if (textView6 != null) {
                                                            i10 = R.id.textView14;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView14);
                                                            if (textView7 != null) {
                                                                return new vg0((LinearLayout) rootView, textView, button, linearLayout, textView2, linearLayout2, simpleDraweeView, textView3, linearLayout3, textView4, relativeLayout, textView5, linearLayout4, textView6, textView7);
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
    public static vg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46258b;
    }

    @NonNull
    public static vg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_item_for_welcome, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
