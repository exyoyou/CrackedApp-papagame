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
public final class lb implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41250c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41251d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41252e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41253f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f41254g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f41255h;

    private lb(@NonNull LinearLayout rootView, @NonNull LinearLayout commentAllRootLl, @NonNull TextView content, @NonNull TextView deleteTx, @NonNull LinearLayout editLl, @NonNull TextView editTx, @NonNull TextView more) {
        this.f41249b = rootView;
        this.f41250c = commentAllRootLl;
        this.f41251d = content;
        this.f41252e = deleteTx;
        this.f41253f = editLl;
        this.f41254g = editTx;
        this.f41255h = more;
    }

    @NonNull
    public static lb bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.content);
        if (textView != null) {
            i10 = R.id.deleteTx;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.deleteTx);
            if (textView2 != null) {
                i10 = R.id.editLl;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.editLl);
                if (linearLayout2 != null) {
                    i10 = R.id.editTx;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.editTx);
                    if (textView3 != null) {
                        i10 = R.id.more;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.more);
                        if (textView4 != null) {
                            return new lb(linearLayout, linearLayout, textView, textView2, linearLayout2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static lb inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41249b;
    }

    @NonNull
    public static lb inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.comment_list_item_content, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
