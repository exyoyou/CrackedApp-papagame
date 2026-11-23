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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ug0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f45693c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45694d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45695e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45696f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45697g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45698h;

    private ug0(@NonNull LinearLayout rootView, @NonNull ImageView arrow, @NonNull TextView countTv, @NonNull TextView forumDesc, @NonNull SimpleDraweeView forumIcon, @NonNull TextView forumName, @NonNull RelativeLayout forumTodayPostsParent) {
        this.f45692b = rootView;
        this.f45693c = arrow;
        this.f45694d = countTv;
        this.f45695e = forumDesc;
        this.f45696f = forumIcon;
        this.f45697g = forumName;
        this.f45698h = forumTodayPostsParent;
    }

    @NonNull
    public static ug0 bind(@NonNull View rootView) {
        int i10 = R.id.arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arrow);
        if (imageView != null) {
            i10 = R.id.countTv;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.countTv);
            if (textView != null) {
                i10 = R.id.forum_desc;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_desc);
                if (textView2 != null) {
                    i10 = R.id.forum_icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.forum_icon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.forum_name;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_name);
                        if (textView3 != null) {
                            i10 = R.id.forumTodayPostsParent;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.forumTodayPostsParent);
                            if (relativeLayout != null) {
                                return new ug0((LinearLayout) rootView, imageView, textView, textView2, simpleDraweeView, textView3, relativeLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ug0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45692b;
    }

    @NonNull
    public static ug0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_item_for_welcome1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
