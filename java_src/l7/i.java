package l7;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.util.views.DialogScrollView;
import com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout;
import com.kongzue.dialogx.util.views.MaxRelativeLayout;

/* JADX INFO: loaded from: classes3.dex */
public final class i implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final DialogXBaseRelativeLayout f94005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaxRelativeLayout f94006c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f94007d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f94008e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final FrameLayout f94009f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final DialogXBaseRelativeLayout f94010g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f94011h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f94012i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f94013j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final DialogScrollView f94014k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final Space f94015l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f94016m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f94017n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final EditText f94018o;

    private i(@NonNull DialogXBaseRelativeLayout dialogXBaseRelativeLayout, @NonNull MaxRelativeLayout maxRelativeLayout, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout, @NonNull DialogXBaseRelativeLayout dialogXBaseRelativeLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull DialogScrollView dialogScrollView, @NonNull Space space, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull EditText editText) {
        this.f94005b = dialogXBaseRelativeLayout;
        this.f94006c = maxRelativeLayout;
        this.f94007d = linearLayout;
        this.f94008e = relativeLayout;
        this.f94009f = frameLayout;
        this.f94010g = dialogXBaseRelativeLayout2;
        this.f94011h = textView;
        this.f94012i = textView2;
        this.f94013j = textView3;
        this.f94014k = dialogScrollView;
        this.f94015l = space;
        this.f94016m = textView4;
        this.f94017n = textView5;
        this.f94018o = editText;
    }

    @NonNull
    public static i bind(@NonNull View view) {
        int i10 = R.id.bkg;
        MaxRelativeLayout maxRelativeLayout = (MaxRelativeLayout) ViewBindings.findChildViewById(view, i10);
        if (maxRelativeLayout != null) {
            i10 = R.id.box_button;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i10);
            if (linearLayout != null) {
                i10 = R.id.box_custom;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i10);
                if (relativeLayout != null) {
                    i10 = R.id.box_list;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i10);
                    if (frameLayout != null) {
                        DialogXBaseRelativeLayout dialogXBaseRelativeLayout = (DialogXBaseRelativeLayout) view;
                        i10 = R.id.btn_selectNegative;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i10);
                        if (textView != null) {
                            i10 = R.id.btn_selectOther;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i10);
                            if (textView2 != null) {
                                i10 = R.id.btn_selectPositive;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i10);
                                if (textView3 != null) {
                                    i10 = R.id.scrollView;
                                    DialogScrollView dialogScrollView = (DialogScrollView) ViewBindings.findChildViewById(view, i10);
                                    if (dialogScrollView != null) {
                                        i10 = R.id.space_other_button;
                                        Space space = (Space) ViewBindings.findChildViewById(view, i10);
                                        if (space != null) {
                                            i10 = R.id.txt_dialog_tip;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i10);
                                            if (textView4 != null) {
                                                i10 = R.id.txt_dialog_title;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i10);
                                                if (textView5 != null) {
                                                    i10 = R.id.txt_input;
                                                    EditText editText = (EditText) ViewBindings.findChildViewById(view, i10);
                                                    if (editText != null) {
                                                        return new i(dialogXBaseRelativeLayout, maxRelativeLayout, linearLayout, relativeLayout, frameLayout, dialogXBaseRelativeLayout, textView, textView2, textView3, dialogScrollView, space, textView4, textView5, editText);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static i inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public DialogXBaseRelativeLayout getRoot() {
        return this.f94005b;
    }

    @NonNull
    public static i inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_dialogx_material, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
