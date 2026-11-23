package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class re implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44315b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44316c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44317d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final EditText f44318e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44319f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44320g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44321h;

    private re(@NonNull LinearLayout rootView, @NonNull TextView cancle, @NonNull TextView content, @NonNull EditText name, @NonNull TextView number, @NonNull TextView ok, @NonNull TextView tip) {
        this.f44315b = rootView;
        this.f44316c = cancle;
        this.f44317d = content;
        this.f44318e = name;
        this.f44319f = number;
        this.f44320g = ok;
        this.f44321h = tip;
    }

    @NonNull
    public static re bind(@NonNull View rootView) {
        int i10 = R.id.cancle;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.cancle);
        if (textView != null) {
            i10 = R.id.content;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.content);
            if (textView2 != null) {
                i10 = R.id.name;
                EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.name);
                if (editText != null) {
                    i10 = R.id.number;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.number);
                    if (textView3 != null) {
                        i10 = R.id.ok;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.ok);
                        if (textView4 != null) {
                            i10 = R.id.tip;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip);
                            if (textView5 != null) {
                                return new re((LinearLayout) rootView, textView, textView2, editText, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static re inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44315b;
    }

    @NonNull
    public static re inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_cloud_share, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
