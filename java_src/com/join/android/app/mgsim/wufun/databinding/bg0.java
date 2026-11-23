package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class bg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36381c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f36382d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f36383e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36384f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36385g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f36386h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36387i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f36388j;

    private bg0(@NonNull RelativeLayout rootView, @NonNull TextView forumDescTv, @NonNull Button forumFollowBtn, @NonNull TextView forumFollowTv, @NonNull SimpleDraweeView forumIcon, @NonNull TextView forumName, @NonNull TextView forumPostsTv, @NonNull TextView forumUsersTv, @NonNull TextView textView14) {
        this.f36380b = rootView;
        this.f36381c = forumDescTv;
        this.f36382d = forumFollowBtn;
        this.f36383e = forumFollowTv;
        this.f36384f = forumIcon;
        this.f36385g = forumName;
        this.f36386h = forumPostsTv;
        this.f36387i = forumUsersTv;
        this.f36388j = textView14;
    }

    @NonNull
    public static bg0 bind(@NonNull View rootView) {
        int i10 = R.id.forumDescTv;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.forumDescTv);
        if (textView != null) {
            i10 = R.id.forumFollowBtn;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.forumFollowBtn);
            if (button != null) {
                i10 = R.id.forum_follow_tv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_follow_tv);
                if (textView2 != null) {
                    i10 = R.id.forum_icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.forum_icon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.forum_name;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_name);
                        if (textView3 != null) {
                            i10 = R.id.forum_posts_tv;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_posts_tv);
                            if (textView4 != null) {
                                i10 = R.id.forum_users_tv;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_users_tv);
                                if (textView5 != null) {
                                    i10 = R.id.textView14;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView14);
                                    if (textView6 != null) {
                                        return new bg0((RelativeLayout) rootView, textView, button, textView2, simpleDraweeView, textView3, textView4, textView5, textView6);
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
    public static bg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36380b;
    }

    @NonNull
    public static bg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_forum_activity_top, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
