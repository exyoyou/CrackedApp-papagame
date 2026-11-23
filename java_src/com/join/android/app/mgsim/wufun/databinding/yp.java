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
import com.join.mgps.customview.VipView;

/* JADX INFO: loaded from: classes4.dex */
public final class yp implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f47859c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final VipView f47860d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f47861e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47862f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47863g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47864h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f47865i;

    private yp(@NonNull RelativeLayout rootView, @NonNull TextView content, @NonNull VipView levelTv, @NonNull ImageView parise, @NonNull TextView pariseNumber, @NonNull TextView time, @NonNull SimpleDraweeView usericon, @NonNull TextView username) {
        this.f47858b = rootView;
        this.f47859c = content;
        this.f47860d = levelTv;
        this.f47861e = parise;
        this.f47862f = pariseNumber;
        this.f47863g = time;
        this.f47864h = usericon;
        this.f47865i = username;
    }

    @NonNull
    public static yp bind(@NonNull View rootView) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.content);
        if (textView != null) {
            i10 = R.id.levelTv;
            VipView vipView = (VipView) ViewBindings.findChildViewById(rootView, R.id.levelTv);
            if (vipView != null) {
                i10 = R.id.parise;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.parise);
                if (imageView != null) {
                    i10 = R.id.pariseNumber;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pariseNumber);
                    if (textView2 != null) {
                        i10 = R.id.time;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.time);
                        if (textView3 != null) {
                            i10 = R.id.usericon;
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.usericon);
                            if (simpleDraweeView != null) {
                                i10 = R.id.username;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.username);
                                if (textView4 != null) {
                                    return new yp((RelativeLayout) rootView, textView, vipView, imageView, textView2, textView3, simpleDraweeView, textView4);
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
    public static yp inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47858b;
    }

    @NonNull
    public static yp inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_information_comment_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
