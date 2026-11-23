package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class bo0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f36489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36490c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f36491d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f36492e;

    private bo0(@NonNull FrameLayout rootView, @NonNull TextView changeNickNameNotice, @NonNull EditText name, @NonNull Button ok) {
        this.f36489b = rootView;
        this.f36490c = changeNickNameNotice;
        this.f36491d = name;
        this.f36492e = ok;
    }

    @NonNull
    public static bo0 bind(@NonNull View rootView) {
        int i10 = R.id.changeNickNameNotice;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.changeNickNameNotice);
        if (textView != null) {
            i10 = R.id.name;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.name);
            if (editText != null) {
                i10 = R.id.ok;
                Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.ok);
                if (button != null) {
                    return new bo0((FrameLayout) rootView, textView, editText, button);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bo0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f36489b;
    }

    @NonNull
    public static bo0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.name_check, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
