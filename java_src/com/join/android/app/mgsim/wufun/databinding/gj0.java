package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
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
public final class gj0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f38869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f38870c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38871d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38872e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38873f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38874g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f38875h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f38876i;

    private gj0(@NonNull RelativeLayout rootView, @NonNull Button actionButton, @NonNull SimpleDraweeView forumIcon, @NonNull TextView giftDesc, @NonNull LinearLayout linearLayout3, @NonNull TextView sectionTitle, @NonNull ImageView tag, @NonNull TextView title) {
        this.f38869b = rootView;
        this.f38870c = actionButton;
        this.f38871d = forumIcon;
        this.f38872e = giftDesc;
        this.f38873f = linearLayout3;
        this.f38874g = sectionTitle;
        this.f38875h = tag;
        this.f38876i = title;
    }

    @NonNull
    public static gj0 bind(@NonNull View rootView) {
        int i10 = R.id.actionButton;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.actionButton);
        if (button != null) {
            i10 = R.id.forum_icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.forum_icon);
            if (simpleDraweeView != null) {
                i10 = R.id.giftDesc;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftDesc);
                if (textView != null) {
                    i10 = R.id.linearLayout3;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout3);
                    if (linearLayout != null) {
                        i10 = R.id.sectionTitle;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.sectionTitle);
                        if (textView2 != null) {
                            i10 = R.id.tag;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.tag);
                            if (imageView != null) {
                                i10 = R.id.title;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                if (textView3 != null) {
                                    return new gj0((RelativeLayout) rootView, button, simpleDraweeView, textView, linearLayout, textView2, imageView, textView3);
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
    public static gj0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f38869b;
    }

    @NonNull
    public static gj0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_welcome_item_gift_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
