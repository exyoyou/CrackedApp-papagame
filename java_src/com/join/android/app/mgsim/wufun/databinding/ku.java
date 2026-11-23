package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ku implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40983b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40984c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40985d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f40986e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40987f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40988g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f40989h;

    private ku(@NonNull LinearLayout rootView, @NonNull LinearLayout llPost, @NonNull SimpleDraweeView simv, @NonNull TextView tvName, @NonNull TextView tvPost, @NonNull TextView tvReply, @NonNull TextView tvTime) {
        this.f40983b = rootView;
        this.f40984c = llPost;
        this.f40985d = simv;
        this.f40986e = tvName;
        this.f40987f = tvPost;
        this.f40988g = tvReply;
        this.f40989h = tvTime;
    }

    @NonNull
    public static ku bind(@NonNull View rootView) {
        int i10 = R.id.ll_post;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_post);
        if (linearLayout != null) {
            i10 = R.id.simv;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.simv);
            if (simpleDraweeView != null) {
                i10 = R.id.tv_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_name);
                if (textView != null) {
                    i10 = R.id.tv_post;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_post);
                    if (textView2 != null) {
                        i10 = R.id.tv_reply;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_reply);
                        if (textView3 != null) {
                            i10 = R.id.tv_time;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_time);
                            if (textView4 != null) {
                                return new ku((LinearLayout) rootView, linearLayout, simpleDraweeView, textView, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ku inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40983b;
    }

    @NonNull
    public static ku inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.givepraice_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
