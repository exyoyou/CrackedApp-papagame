package b3;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import com.dingmouren.layoutmanagergroup.skidright.SkidRightLayoutManager;

/* JADX INFO: loaded from: classes9.dex */
public class a extends SnapHelper {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f368i;

    @Override // androidx.recyclerview.widget.SnapHelper
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        if (!(layoutManager instanceof SkidRightLayoutManager)) {
            return null;
        }
        int[] iArr = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            iArr[0] = ((SkidRightLayoutManager) layoutManager).a(layoutManager.getPosition(view));
            iArr[1] = 0;
        } else {
            iArr[0] = 0;
            iArr[1] = ((SkidRightLayoutManager) layoutManager).a(layoutManager.getPosition(view));
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        if (!(layoutManager instanceof SkidRightLayoutManager)) {
            return null;
        }
        SkidRightLayoutManager skidRightLayoutManager = (SkidRightLayoutManager) layoutManager;
        int i10 = this.f368i;
        int iH = skidRightLayoutManager.h(i10, i10 != 0 ? 0.8f : 0.5f);
        this.f368i = 0;
        if (iH != -1) {
            return layoutManager.findViewByPosition(iH);
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i10, int i11) {
        if (layoutManager.canScrollHorizontally()) {
            this.f368i = i10;
            return -1;
        }
        this.f368i = i11;
        return -1;
    }
}
