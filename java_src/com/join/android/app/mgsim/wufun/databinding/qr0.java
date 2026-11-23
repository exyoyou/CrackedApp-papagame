package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qr0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43978b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43979c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43980d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43981e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f43982f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f43983g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f43984h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f43985i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final View f43986j;

    private qr0(@NonNull ConstraintLayout rootView, @NonNull ImageView imageView71, @NonNull ImageView imageView72, @NonNull TextView iv1, @NonNull View notDisturb, @NonNull View online, @NonNull TextView textView95, @NonNull TextView textView96, @NonNull View view9) {
        this.f43978b = rootView;
        this.f43979c = imageView71;
        this.f43980d = imageView72;
        this.f43981e = iv1;
        this.f43982f = notDisturb;
        this.f43983g = online;
        this.f43984h = textView95;
        this.f43985i = textView96;
        this.f43986j = view9;
    }

    @NonNull
    public static qr0 bind(@NonNull View rootView) {
        int i10 = R.id.imageView71;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView71);
        if (imageView != null) {
            i10 = R.id.imageView72;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView72);
            if (imageView2 != null) {
                i10 = R.id.iv1;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.iv1);
                if (textView != null) {
                    i10 = R.id.notDisturb;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.notDisturb);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.online;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.online);
                        if (viewFindChildViewById2 != null) {
                            i10 = R.id.textView95;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView95);
                            if (textView2 != null) {
                                i10 = R.id.textView96;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView96);
                                if (textView3 != null) {
                                    i10 = R.id.view9;
                                    View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.view9);
                                    if (viewFindChildViewById3 != null) {
                                        return new qr0((ConstraintLayout) rootView, imageView, imageView2, textView, viewFindChildViewById, viewFindChildViewById2, textView2, textView3, viewFindChildViewById3);
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
    public static qr0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43978b;
    }

    @NonNull
    public static qr0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.pop_friend_alive_simulator, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
