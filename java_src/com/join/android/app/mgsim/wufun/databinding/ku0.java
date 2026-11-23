package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ku0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40990b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40991c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40992d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f40993e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final EditText f40994f;

    private ku0(@NonNull RelativeLayout rootView, @NonNull TextView connectState, @NonNull TextView deviceName, @NonNull Button send, @NonNull EditText sendData) {
        this.f40990b = rootView;
        this.f40991c = connectState;
        this.f40992d = deviceName;
        this.f40993e = send;
        this.f40994f = sendData;
    }

    @NonNull
    public static ku0 bind(@NonNull View rootView) {
        int i10 = R.id.connect_state;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.connect_state);
        if (textView != null) {
            i10 = R.id.device_name;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.device_name);
            if (textView2 != null) {
                i10 = R.id.send;
                Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.send);
                if (button != null) {
                    i10 = R.id.send_data;
                    EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.send_data);
                    if (editText != null) {
                        return new ku0((RelativeLayout) rootView, textView, textView2, button, editText);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ku0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40990b;
    }

    @NonNull
    public static ku0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.send_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
