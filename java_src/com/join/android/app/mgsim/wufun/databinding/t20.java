package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class t20 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f45088c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45089d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45090e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45091f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45092g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45093h;

    private t20(@NonNull RelativeLayout rootView, @NonNull View cover, @NonNull SimpleDraweeView ivIcon, @NonNull RelativeLayout main, @NonNull TextView romeName, @NonNull TextView tvGameName, @NonNull TextView tvRoomCounts) {
        this.f45087b = rootView;
        this.f45088c = cover;
        this.f45089d = ivIcon;
        this.f45090e = main;
        this.f45091f = romeName;
        this.f45092g = tvGameName;
        this.f45093h = tvRoomCounts;
    }

    @NonNull
    public static t20 bind(@NonNull View rootView) {
        int i10 = R.id.cover;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.cover);
        if (viewFindChildViewById != null) {
            i10 = R.id.iv_icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iv_icon);
            if (simpleDraweeView != null) {
                i10 = R.id.main;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                if (relativeLayout != null) {
                    i10 = R.id.romeName;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.romeName);
                    if (textView != null) {
                        i10 = R.id.tv_gameName;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_gameName);
                        if (textView2 != null) {
                            i10 = R.id.tv_roomCounts;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_roomCounts);
                            if (textView3 != null) {
                                return new t20((RelativeLayout) rootView, viewFindChildViewById, simpleDraweeView, relativeLayout, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static t20 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45087b;
    }

    @NonNull
    public static t20 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_gameinfo, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
