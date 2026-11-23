package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class cg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f36919c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f36920d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f36921e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36922f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f36923g;

    private cg0(@NonNull RelativeLayout rootView, @NonNull Button forumPostBest, @NonNull ImageView forumPostPic, @NonNull Button forumPostStickie, @NonNull TextView forumPostSubject, @NonNull ImageView forumPostVideo) {
        this.f36918b = rootView;
        this.f36919c = forumPostBest;
        this.f36920d = forumPostPic;
        this.f36921e = forumPostStickie;
        this.f36922f = forumPostSubject;
        this.f36923g = forumPostVideo;
    }

    @NonNull
    public static cg0 bind(@NonNull View rootView) {
        int i10 = R.id.forum_post_best;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.forum_post_best);
        if (button != null) {
            i10 = R.id.forum_post_pic;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.forum_post_pic);
            if (imageView != null) {
                i10 = R.id.forum_post_stickie;
                Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.forum_post_stickie);
                if (button2 != null) {
                    i10 = R.id.forum_post_subject;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_subject);
                    if (textView != null) {
                        i10 = R.id.forum_post_video;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.forum_post_video);
                        if (imageView2 != null) {
                            return new cg0((RelativeLayout) rootView, button, imageView, button2, textView, imageView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36918b;
    }

    @NonNull
    public static cg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_forum_activity_top_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
