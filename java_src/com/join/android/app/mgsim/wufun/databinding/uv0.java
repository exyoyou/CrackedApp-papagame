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
public final class uv0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45935c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45936d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45937e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45938f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45939g;

    private uv0(@NonNull LinearLayout rootView, @NonNull LinearLayout llEliteRoom, @NonNull LinearLayout llStandardRoom, @NonNull LinearLayout llTab, @NonNull TextView tvEliteRoomName, @NonNull TextView tvStandardRoomName) {
        this.f45934b = rootView;
        this.f45935c = llEliteRoom;
        this.f45936d = llStandardRoom;
        this.f45937e = llTab;
        this.f45938f = tvEliteRoomName;
        this.f45939g = tvStandardRoomName;
    }

    @NonNull
    public static uv0 bind(@NonNull View rootView) {
        int i10 = R.id.ll_elite_room;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_elite_room);
        if (linearLayout != null) {
            i10 = R.id.ll_standard_room;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_standard_room);
            if (linearLayout2 != null) {
                i10 = R.id.ll_tab;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_tab);
                if (linearLayout3 != null) {
                    i10 = R.id.tv_elite_room_name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_elite_room_name);
                    if (textView != null) {
                        i10 = R.id.tv_standard_room_name;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_standard_room_name);
                        if (textView2 != null) {
                            return new uv0((LinearLayout) rootView, linearLayout, linearLayout2, linearLayout3, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static uv0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45934b;
    }

    @NonNull
    public static uv0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.switch_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
