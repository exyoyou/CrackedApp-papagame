package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class q1 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43607c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43608d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43609e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43610f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f43611g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f43612h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f43613i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f43614j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f43615k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f43616l;

    private q1(@NonNull RelativeLayout rootView, @NonNull TextView accept, @NonNull SimpleDraweeView avatar, @NonNull TextView decline, @NonNull TextView gameName, @NonNull ImageView imageView66, @NonNull ImageView imageView68, @NonNull View ivClose, @NonNull TextView name, @NonNull TextView textView84, @NonNull TextView textView97) {
        this.f43606b = rootView;
        this.f43607c = accept;
        this.f43608d = avatar;
        this.f43609e = decline;
        this.f43610f = gameName;
        this.f43611g = imageView66;
        this.f43612h = imageView68;
        this.f43613i = ivClose;
        this.f43614j = name;
        this.f43615k = textView84;
        this.f43616l = textView97;
    }

    @NonNull
    public static q1 bind(@NonNull View rootView) {
        int i10 = R.id.accept;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.accept);
        if (textView != null) {
            i10 = R.id.avatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.avatar);
            if (simpleDraweeView != null) {
                i10 = R.id.decline;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.decline);
                if (textView2 != null) {
                    i10 = R.id.gameName;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameName);
                    if (textView3 != null) {
                        i10 = R.id.imageView66;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView66);
                        if (imageView != null) {
                            i10 = R.id.imageView68;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView68);
                            if (imageView2 != null) {
                                i10 = R.id.iv_close;
                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.iv_close);
                                if (viewFindChildViewById != null) {
                                    i10 = R.id.name;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                                    if (textView4 != null) {
                                        i10 = R.id.textView84;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView84);
                                        if (textView5 != null) {
                                            i10 = R.id.textView97;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView97);
                                            if (textView6 != null) {
                                                return new q1((RelativeLayout) rootView, textView, simpleDraweeView, textView2, textView3, imageView, imageView2, viewFindChildViewById, textView4, textView5, textView6);
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
    public static q1 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f43606b;
    }

    @NonNull
    public static q1 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_friend_invite, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
