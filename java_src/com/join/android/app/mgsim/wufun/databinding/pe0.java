package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class pe0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43327c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f43328d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f43329e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43330f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final EditText f43331g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f43332h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final EditText f43333i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43334j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f43335k;

    private pe0(@NonNull LinearLayout rootView, @NonNull TextView address1, @NonNull EditText address2, @NonNull ImageView closed, @NonNull LinearLayout la2, @NonNull EditText name, @NonNull TextView ok, @NonNull EditText phoneNumber, @NonNull LinearLayout selectAddress, @NonNull TextView title) {
        this.f43326b = rootView;
        this.f43327c = address1;
        this.f43328d = address2;
        this.f43329e = closed;
        this.f43330f = la2;
        this.f43331g = name;
        this.f43332h = ok;
        this.f43333i = phoneNumber;
        this.f43334j = selectAddress;
        this.f43335k = title;
    }

    @NonNull
    public static pe0 bind(@NonNull View rootView) {
        int i10 = R.id.address1;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.address1);
        if (textView != null) {
            i10 = R.id.address2;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.address2);
            if (editText != null) {
                i10 = R.id.closed;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.closed);
                if (imageView != null) {
                    i10 = R.id.f35474la;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.f35474la);
                    if (linearLayout != null) {
                        i10 = R.id.name;
                        EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, R.id.name);
                        if (editText2 != null) {
                            i10 = R.id.ok;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.ok);
                            if (textView2 != null) {
                                i10 = R.id.phoneNumber;
                                EditText editText3 = (EditText) ViewBindings.findChildViewById(rootView, R.id.phoneNumber);
                                if (editText3 != null) {
                                    i10 = R.id.selectAddress;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.selectAddress);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.title;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                        if (textView3 != null) {
                                            return new pe0((LinearLayout) rootView, textView, editText, imageView, linearLayout, editText2, textView2, editText3, linearLayout2, textView3);
                                        }
                                    }
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
    public static pe0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43326b;
    }

    @NonNull
    public static pe0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.luck_draw_address_dialog_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
