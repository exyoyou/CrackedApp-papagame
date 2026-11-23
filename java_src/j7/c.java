package j7;

import android.view.View;
import android.view.ViewGroup;
import com.kingja.loadsir.callback.Callback;
import com.kingja.loadsir.callback.SuccessCallback;
import com.kingja.loadsir.core.LoadLayout;

/* JADX INFO: loaded from: classes3.dex */
public class c implements b {
    @Override // j7.b
    public LoadLayout a(Object obj, Callback.OnReloadListener onReloadListener) {
        View view = (View) obj;
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int i10 = 0;
        int childCount = viewGroup == null ? 0 : viewGroup.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            if (viewGroup.getChildAt(i11) == view) {
                i10 = i11;
                break;
            }
        }
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        LoadLayout loadLayout = new LoadLayout(view.getContext(), onReloadListener);
        loadLayout.setupSuccessLayout(new SuccessCallback(view, view.getContext(), onReloadListener));
        if (viewGroup != null) {
            viewGroup.addView(loadLayout, i10, layoutParams);
        }
        return loadLayout;
    }

    @Override // j7.b
    public boolean equals(Object obj) {
        return obj instanceof View;
    }
}
