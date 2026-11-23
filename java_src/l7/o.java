package l7;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout;

/* JADX INFO: loaded from: classes3.dex */
public final class o implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final DialogXBaseRelativeLayout f94059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f94060c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f94061d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final DialogXBaseRelativeLayout f94062e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f94063f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f94064g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f94065h;

    private o(@NonNull DialogXBaseRelativeLayout dialogXBaseRelativeLayout, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull DialogXBaseRelativeLayout dialogXBaseRelativeLayout2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f94059b = dialogXBaseRelativeLayout;
        this.f94060c = linearLayout;
        this.f94061d = relativeLayout;
        this.f94062e = dialogXBaseRelativeLayout2;
        this.f94063f = imageView;
        this.f94064g = textView;
        this.f94065h = textView2;
    }

    @NonNull
    public static o bind(@NonNull View view) {
        int i10 = R.id.box_body;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i10);
        if (linearLayout != null) {
            i10 = R.id.box_custom;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i10);
            if (relativeLayout != null) {
                DialogXBaseRelativeLayout dialogXBaseRelativeLayout = (DialogXBaseRelativeLayout) view;
                i10 = R.id.img_dialogx_pop_icon;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i10);
                if (imageView != null) {
                    i10 = R.id.txt_dialogx_button;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i10);
                    if (textView != null) {
                        i10 = R.id.txt_dialogx_pop_text;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i10);
                        if (textView2 != null) {
                            return new o(dialogXBaseRelativeLayout, linearLayout, relativeLayout, dialogXBaseRelativeLayout, imageView, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static o inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public DialogXBaseRelativeLayout getRoot() {
        return this.f94059b;
    }

    @NonNull
    public static o inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_dialogx_poptip_material, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
