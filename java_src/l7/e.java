package l7;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout;
import com.kongzue.dialogx.util.views.MaxRelativeLayout;

/* JADX INFO: loaded from: classes3.dex */
public final class e implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final DialogXBaseRelativeLayout f93989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaxRelativeLayout f93990c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final DialogXBaseRelativeLayout f93991d;

    private e(@NonNull DialogXBaseRelativeLayout dialogXBaseRelativeLayout, @NonNull MaxRelativeLayout maxRelativeLayout, @NonNull DialogXBaseRelativeLayout dialogXBaseRelativeLayout2) {
        this.f93989b = dialogXBaseRelativeLayout;
        this.f93990c = maxRelativeLayout;
        this.f93991d = dialogXBaseRelativeLayout2;
    }

    @NonNull
    public static e bind(@NonNull View view) {
        int i10 = R.id.box_custom;
        MaxRelativeLayout maxRelativeLayout = (MaxRelativeLayout) ViewBindings.findChildViewById(view, i10);
        if (maxRelativeLayout == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
        }
        DialogXBaseRelativeLayout dialogXBaseRelativeLayout = (DialogXBaseRelativeLayout) view;
        return new e(dialogXBaseRelativeLayout, maxRelativeLayout, dialogXBaseRelativeLayout);
    }

    @NonNull
    public static e inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public DialogXBaseRelativeLayout getRoot() {
        return this.f93989b;
    }

    @NonNull
    public static e inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_dialogx_custom, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
