package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class e10 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37711c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f37712d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37713e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37714f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f37715g;

    private e10(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView avatar, @NonNull View likeDot, @NonNull TextView msg, @NonNull TextView name, @NonNull TextView time) {
        this.f37710b = rootView;
        this.f37711c = avatar;
        this.f37712d = likeDot;
        this.f37713e = msg;
        this.f37714f = name;
        this.f37715g = time;
    }

    @NonNull
    public static e10 bind(@NonNull View rootView) {
        int i10 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.avatar);
        if (simpleDraweeView != null) {
            i10 = R.id.likeDot;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.likeDot);
            if (viewFindChildViewById != null) {
                i10 = R.id.msg;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.msg);
                if (textView != null) {
                    i10 = R.id.name;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                    if (textView2 != null) {
                        i10 = R.id.time;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.time);
                        if (textView3 != null) {
                            return new e10((ConstraintLayout) rootView, simpleDraweeView, viewFindChildViewById, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static e10 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37710b;
    }

    @NonNull
    public static e10 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_friend_like_record, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
