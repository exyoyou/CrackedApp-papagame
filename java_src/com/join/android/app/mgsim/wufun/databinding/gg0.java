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
public final class gg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38838c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38839d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38840e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f38841f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f38842g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f38843h;

    private gg0(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView avatar, @NonNull TextView desc, @NonNull RelativeLayout follow, @NonNull Button followImg, @NonNull Button followedImg, @NonNull TextView nickName) {
        this.f38837b = rootView;
        this.f38838c = avatar;
        this.f38839d = desc;
        this.f38840e = follow;
        this.f38841f = followImg;
        this.f38842g = followedImg;
        this.f38843h = nickName;
    }

    @NonNull
    public static gg0 bind(@NonNull View rootView) {
        int i10 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.avatar);
        if (simpleDraweeView != null) {
            i10 = R.id.desc;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.desc);
            if (textView != null) {
                i10 = R.id.follow;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.follow);
                if (relativeLayout != null) {
                    i10 = R.id.followImg;
                    Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.followImg);
                    if (button != null) {
                        i10 = R.id.followedImg;
                        Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.followedImg);
                        if (button2 != null) {
                            i10 = R.id.nickName;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.nickName);
                            if (textView2 != null) {
                                return new gg0((LinearLayout) rootView, simpleDraweeView, textView, relativeLayout, button, button2, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static gg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38837b;
    }

    @NonNull
    public static gg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_forum_t_member_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
