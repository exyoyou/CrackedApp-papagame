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
public final class tb implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f45172c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45173d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45174e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45175f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45176g;

    private tb(@NonNull RelativeLayout rootView, @NonNull TextView CommitItemContext, @NonNull TextView CommitItemName, @NonNull TextView CommitItemTime, @NonNull SimpleDraweeView commitItemIv, @NonNull RelativeLayout relateLayout) {
        this.f45171b = rootView;
        this.f45172c = CommitItemContext;
        this.f45173d = CommitItemName;
        this.f45174e = CommitItemTime;
        this.f45175f = commitItemIv;
        this.f45176g = relateLayout;
    }

    @NonNull
    public static tb bind(@NonNull View rootView) {
        int i10 = R.id.CommitItemContext;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.CommitItemContext);
        if (textView != null) {
            i10 = R.id.CommitItemName;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.CommitItemName);
            if (textView2 != null) {
                i10 = R.id.CommitItemTime;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.CommitItemTime);
                if (textView3 != null) {
                    i10 = R.id.commitItemIv;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.commitItemIv);
                    if (simpleDraweeView != null) {
                        i10 = R.id.relateLayout;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.relateLayout);
                        if (relativeLayout != null) {
                            return new tb((RelativeLayout) rootView, textView, textView2, textView3, simpleDraweeView, relativeLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static tb inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45171b;
    }

    @NonNull
    public static tb inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.commit_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
