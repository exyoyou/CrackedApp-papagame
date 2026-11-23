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
import com.join.android.app.common.view.RoundImageView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class tg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RoundImageView f45223c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45224d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45225e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45226f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f45227g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f45228h;

    private tg0(@NonNull LinearLayout rootView, @NonNull RoundImageView forumIcon, @NonNull TextView forumName, @NonNull TextView forumPostsTv, @NonNull TextView forumUsersTv, @NonNull ImageView imageView6, @NonNull ImageView imageView7) {
        this.f45222b = rootView;
        this.f45223c = forumIcon;
        this.f45224d = forumName;
        this.f45225e = forumPostsTv;
        this.f45226f = forumUsersTv;
        this.f45227g = imageView6;
        this.f45228h = imageView7;
    }

    @NonNull
    public static tg0 bind(@NonNull View rootView) {
        int i10 = R.id.forum_icon;
        RoundImageView roundImageView = (RoundImageView) ViewBindings.findChildViewById(rootView, R.id.forum_icon);
        if (roundImageView != null) {
            i10 = R.id.forum_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_name);
            if (textView != null) {
                i10 = R.id.forum_posts_tv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_posts_tv);
                if (textView2 != null) {
                    i10 = R.id.forum_users_tv;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_users_tv);
                    if (textView3 != null) {
                        i10 = R.id.imageView6;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView6);
                        if (imageView != null) {
                            i10 = R.id.imageView7;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView7);
                            if (imageView2 != null) {
                                return new tg0((LinearLayout) rootView, roundImageView, textView, textView2, textView3, imageView, imageView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static tg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45222b;
    }

    @NonNull
    public static tg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
