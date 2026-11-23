package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class vg implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f46251c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f46252d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46253e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46254f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f46255g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46256h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46257i;

    private vg(@NonNull RelativeLayout rootView, @NonNull Button dialogMessagBt, @NonNull Button dialogMessagCloseBt, @NonNull TextView dialogMessagCopyTx, @NonNull TextView dialogMessagOneTx, @NonNull TextView dialogMessagThreeTx, @NonNull TextView dialogMessagTwoTx, @NonNull TextView dialogMessageTitleTx) {
        this.f46250b = rootView;
        this.f46251c = dialogMessagBt;
        this.f46252d = dialogMessagCloseBt;
        this.f46253e = dialogMessagCopyTx;
        this.f46254f = dialogMessagOneTx;
        this.f46255g = dialogMessagThreeTx;
        this.f46256h = dialogMessagTwoTx;
        this.f46257i = dialogMessageTitleTx;
    }

    @NonNull
    public static vg bind(@NonNull View rootView) {
        int i10 = R.id.dialogMessagBt;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.dialogMessagBt);
        if (button != null) {
            i10 = R.id.dialogMessagCloseBt;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.dialogMessagCloseBt);
            if (button2 != null) {
                i10 = R.id.dialogMessagCopyTx;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialogMessagCopyTx);
                if (textView != null) {
                    i10 = R.id.dialogMessagOneTx;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialogMessagOneTx);
                    if (textView2 != null) {
                        i10 = R.id.dialogMessagThreeTx;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialogMessagThreeTx);
                        if (textView3 != null) {
                            i10 = R.id.dialogMessagTwoTx;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialogMessagTwoTx);
                            if (textView4 != null) {
                                i10 = R.id.dialogMessageTitleTx;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dialogMessageTitleTx);
                                if (textView5 != null) {
                                    return new vg((RelativeLayout) rootView, button, button2, textView, textView2, textView3, textView4, textView5);
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
    public static vg inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46250b;
    }

    @NonNull
    public static vg inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_message_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
