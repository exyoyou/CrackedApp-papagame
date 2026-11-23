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
import com.join.mgps.customview.GamelistExpandableTextView;
import com.join.mgps.customview.MStarBar;

/* JADX INFO: loaded from: classes4.dex */
public final class pt implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final MStarBar f43515c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final GamelistExpandableTextView f43516d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43517e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43518f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43519g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f43520h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f43521i;

    private pt(@NonNull LinearLayout rootView, @NonNull MStarBar commentHeadMstarBar, @NonNull GamelistExpandableTextView content, @NonNull LinearLayout main, @NonNull TextView more, @NonNull SimpleDraweeView userIcon, @NonNull TextView userName, @NonNull TextView usertag) {
        this.f43514b = rootView;
        this.f43515c = commentHeadMstarBar;
        this.f43516d = content;
        this.f43517e = main;
        this.f43518f = more;
        this.f43519g = userIcon;
        this.f43520h = userName;
        this.f43521i = usertag;
    }

    @NonNull
    public static pt bind(@NonNull View rootView) {
        int i10 = R.id.comment_head_mstarBar;
        MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(rootView, R.id.comment_head_mstarBar);
        if (mStarBar != null) {
            i10 = R.id.content;
            GamelistExpandableTextView gamelistExpandableTextView = (GamelistExpandableTextView) ViewBindings.findChildViewById(rootView, R.id.content);
            if (gamelistExpandableTextView != null) {
                i10 = R.id.main;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                if (linearLayout != null) {
                    i10 = R.id.more;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.more);
                    if (textView != null) {
                        i10 = R.id.userIcon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.userIcon);
                        if (simpleDraweeView != null) {
                            i10 = R.id.userName;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userName);
                            if (textView2 != null) {
                                i10 = R.id.usertag;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.usertag);
                                if (textView3 != null) {
                                    return new pt((LinearLayout) rootView, mStarBar, gamelistExpandableTextView, linearLayout, textView, simpleDraweeView, textView2, textView3);
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
    public static pt inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43514b;
    }

    @NonNull
    public static pt inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamelist_detial_comment_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
