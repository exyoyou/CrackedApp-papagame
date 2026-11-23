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
public final class ki implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40789b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40790c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40791d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f40792e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40793f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40794g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f40795h;

    private ki(@NonNull LinearLayout rootView, @NonNull TextView commentNumber, @NonNull TextView content, @NonNull TextView gameType, @NonNull SimpleDraweeView image, @NonNull LinearLayout main, @NonNull TextView seeNumber) {
        this.f40789b = rootView;
        this.f40790c = commentNumber;
        this.f40791d = content;
        this.f40792e = gameType;
        this.f40793f = image;
        this.f40794g = main;
        this.f40795h = seeNumber;
    }

    @NonNull
    public static ki bind(@NonNull View rootView) {
        int i10 = R.id.commentNumber;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.commentNumber);
        if (textView != null) {
            i10 = R.id.content;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.content);
            if (textView2 != null) {
                i10 = R.id.gameType;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameType);
                if (textView3 != null) {
                    i10 = R.id.image;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.image);
                    if (simpleDraweeView != null) {
                        LinearLayout linearLayout = (LinearLayout) rootView;
                        i10 = R.id.seeNumber;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.seeNumber);
                        if (textView4 != null) {
                            return new ki(linearLayout, textView, textView2, textView3, simpleDraweeView, linearLayout, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ki inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40789b;
    }

    @NonNull
    public static ki inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.discover_list_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
