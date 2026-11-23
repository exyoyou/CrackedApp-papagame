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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class eg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37955c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37956d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37957e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37958f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f37959g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f37960h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f37961i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final View f37962j;

    private eg0(@NonNull LinearLayout rootView, @NonNull LinearLayout container, @NonNull TextView delete, @NonNull TextView reply, @NonNull TextView report, @NonNull TextView resolve, @NonNull View vDelete, @NonNull View vReport, @NonNull View vResolve) {
        this.f37954b = rootView;
        this.f37955c = container;
        this.f37956d = delete;
        this.f37957e = reply;
        this.f37958f = report;
        this.f37959g = resolve;
        this.f37960h = vDelete;
        this.f37961i = vReport;
        this.f37962j = vResolve;
    }

    @NonNull
    public static eg0 bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        int i10 = R.id.delete;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.delete);
        if (textView != null) {
            i10 = R.id.reply;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.reply);
            if (textView2 != null) {
                i10 = R.id.report;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.report);
                if (textView3 != null) {
                    i10 = R.id.resolve;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.resolve);
                    if (textView4 != null) {
                        i10 = R.id.v_delete;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_delete);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.v_report;
                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.v_report);
                            if (viewFindChildViewById2 != null) {
                                i10 = R.id.v_resolve;
                                View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.v_resolve);
                                if (viewFindChildViewById3 != null) {
                                    return new eg0(linearLayout, linearLayout, textView, textView2, textView3, textView4, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3);
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
    public static eg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37954b;
    }

    @NonNull
    public static eg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_forum_post_a_comment_reply_popwindow, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
