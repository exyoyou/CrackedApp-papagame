package l7;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.kongzue.dialogx.R;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f93947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f93948c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f93949d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Space f93950e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f93951f;

    private a(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull Space space, @NonNull TextView textView) {
        this.f93947b = linearLayout;
        this.f93948c = imageView;
        this.f93949d = imageView2;
        this.f93950e = space;
        this.f93951f = textView;
    }

    @NonNull
    public static a bind(@NonNull View view) {
        int i10 = R.id.img_dialogx_menu_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i10);
        if (imageView != null) {
            i10 = R.id.img_dialogx_menu_selection;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i10);
            if (imageView2 != null) {
                i10 = R.id.space_dialogx_right_padding;
                Space space = (Space) ViewBindings.findChildViewById(view, i10);
                if (space != null) {
                    i10 = R.id.txt_dialogx_menu_text;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i10);
                    if (textView != null) {
                        return new a((LinearLayout) view, imageView, imageView2, space, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static a inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f93947b;
    }

    @NonNull
    public static a inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R.layout.item_dialogx_material_bottom_menu_normal_text, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
