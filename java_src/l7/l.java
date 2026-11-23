package l7;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout;
import com.kongzue.dialogx.util.views.MaxRelativeLayout;
import com.kongzue.dialogx.util.views.PopMenuListView;

/* JADX INFO: loaded from: classes3.dex */
public final class l implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final DialogXBaseRelativeLayout f94038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaxRelativeLayout f94039c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f94040d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final DialogXBaseRelativeLayout f94041e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final PopMenuListView f94042f;

    private l(@NonNull DialogXBaseRelativeLayout dialogXBaseRelativeLayout, @NonNull MaxRelativeLayout maxRelativeLayout, @NonNull RelativeLayout relativeLayout, @NonNull DialogXBaseRelativeLayout dialogXBaseRelativeLayout2, @NonNull PopMenuListView popMenuListView) {
        this.f94038b = dialogXBaseRelativeLayout;
        this.f94039c = maxRelativeLayout;
        this.f94040d = relativeLayout;
        this.f94041e = dialogXBaseRelativeLayout2;
        this.f94042f = popMenuListView;
    }

    @NonNull
    public static l bind(@NonNull View view) {
        int i10 = R.id.box_body;
        MaxRelativeLayout maxRelativeLayout = (MaxRelativeLayout) ViewBindings.findChildViewById(view, i10);
        if (maxRelativeLayout != null) {
            i10 = R.id.box_custom;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i10);
            if (relativeLayout != null) {
                DialogXBaseRelativeLayout dialogXBaseRelativeLayout = (DialogXBaseRelativeLayout) view;
                i10 = R.id.listMenu;
                PopMenuListView popMenuListView = (PopMenuListView) ViewBindings.findChildViewById(view, i10);
                if (popMenuListView != null) {
                    return new l(dialogXBaseRelativeLayout, maxRelativeLayout, relativeLayout, dialogXBaseRelativeLayout, popMenuListView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static l inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public DialogXBaseRelativeLayout getRoot() {
        return this.f94038b;
    }

    @NonNull
    public static l inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_dialogx_popmenu_material_dark, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
