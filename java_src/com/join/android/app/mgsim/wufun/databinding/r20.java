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
public final class r20 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44182c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44183d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44184e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44185f;

    private r20(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView ivIcon, @NonNull LinearLayout main, @NonNull TextView tvGameName, @NonNull TextView tvRoomCounts) {
        this.f44181b = rootView;
        this.f44182c = ivIcon;
        this.f44183d = main;
        this.f44184e = tvGameName;
        this.f44185f = tvRoomCounts;
    }

    @NonNull
    public static r20 bind(@NonNull View rootView) {
        int i10 = R.id.iv_icon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iv_icon);
        if (simpleDraweeView != null) {
            LinearLayout linearLayout = (LinearLayout) rootView;
            i10 = R.id.tv_gameName;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_gameName);
            if (textView != null) {
                i10 = R.id.tv_roomCounts;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_roomCounts);
                if (textView2 != null) {
                    return new r20(linearLayout, simpleDraweeView, linearLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static r20 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44181b;
    }

    @NonNull
    public static r20 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_gameinfo_1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
