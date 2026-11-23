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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class rb implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44281b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44282c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44283d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44284e;

    private rb(@NonNull RelativeLayout rootView, @NonNull TextView cancelTv, @NonNull TextView replyTv, @NonNull TextView reportTv) {
        this.f44281b = rootView;
        this.f44282c = cancelTv;
        this.f44283d = replyTv;
        this.f44284e = reportTv;
    }

    @NonNull
    public static rb bind(@NonNull View rootView) {
        int i10 = R.id.cancelTv;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.cancelTv);
        if (textView != null) {
            i10 = R.id.replyTv;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.replyTv);
            if (textView2 != null) {
                i10 = R.id.reportTv;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.reportTv);
                if (textView3 != null) {
                    return new rb((RelativeLayout) rootView, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static rb inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44281b;
    }

    @NonNull
    public static rb inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.commentdetail_report_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
