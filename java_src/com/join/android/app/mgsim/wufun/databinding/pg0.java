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
public final class pg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43352b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43353c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43354d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43355e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43356f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43357g;

    private pg0(@NonNull RelativeLayout rootView, @NonNull TextView addTime, @NonNull SimpleDraweeView avatar, @NonNull TextView grade, @NonNull TextView groupAction, @NonNull TextView nickName) {
        this.f43352b = rootView;
        this.f43353c = addTime;
        this.f43354d = avatar;
        this.f43355e = grade;
        this.f43356f = groupAction;
        this.f43357g = nickName;
    }

    @NonNull
    public static pg0 bind(@NonNull View rootView) {
        int i10 = R.id.addTime;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.addTime);
        if (textView != null) {
            i10 = R.id.avatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.avatar);
            if (simpleDraweeView != null) {
                i10 = R.id.grade;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.grade);
                if (textView2 != null) {
                    i10 = R.id.groupAction;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.groupAction);
                    if (textView3 != null) {
                        i10 = R.id.nickName;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.nickName);
                        if (textView4 != null) {
                            return new pg0((RelativeLayout) rootView, textView, simpleDraweeView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f43352b;
    }

    @NonNull
    public static pg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_group_member_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
