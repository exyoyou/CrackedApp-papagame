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
public final class ub implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45636c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45637d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45638e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45639f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45640g;

    private ub(@NonNull RelativeLayout rootView, @NonNull RelativeLayout rlIcon, @NonNull SimpleDraweeView simv, @NonNull TextView tvName, @NonNull TextView tvReply, @NonNull TextView tvTime) {
        this.f45635b = rootView;
        this.f45636c = rlIcon;
        this.f45637d = simv;
        this.f45638e = tvName;
        this.f45639f = tvReply;
        this.f45640g = tvTime;
    }

    @NonNull
    public static ub bind(@NonNull View rootView) {
        RelativeLayout relativeLayout = (RelativeLayout) rootView;
        int i10 = R.id.simv;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.simv);
        if (simpleDraweeView != null) {
            i10 = R.id.tv_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_name);
            if (textView != null) {
                i10 = R.id.tv_reply;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_reply);
                if (textView2 != null) {
                    i10 = R.id.tv_time;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_time);
                    if (textView3 != null) {
                        return new ub(relativeLayout, relativeLayout, simpleDraweeView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ub inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45635b;
    }

    @NonNull
    public static ub inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.community_iconitem, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
