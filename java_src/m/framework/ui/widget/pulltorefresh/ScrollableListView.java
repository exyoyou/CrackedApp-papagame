package m.framework.ui.widget.pulltorefresh;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.widget.ListView;

/* JADX INFO: loaded from: classes.dex */
public class ScrollableListView extends ListView implements Scrollable {
    private OnScrollListener osListener;
    private boolean pullEnable;

    public ScrollableListView(Context context) {
        super(context);
        init(context);
    }

    private void init(Context context) {
        setCacheColorHint(0);
        setSelector(new ColorDrawable());
        this.osListener = new OnScrollListener() { // from class: m.framework.ui.widget.pulltorefresh.ScrollableListView.1
            @Override // m.framework.ui.widget.pulltorefresh.OnScrollListener
            public void onScrollChanged(Scrollable scrollable, int i10, int i11, int i12, int i13) {
                ScrollableListView.this.pullEnable = i11 <= 0 && i13 <= 0;
            }
        };
    }

    @Override // android.widget.AbsListView, android.view.View
    protected int computeVerticalScrollOffset() {
        int iComputeVerticalScrollOffset = super.computeVerticalScrollOffset();
        OnScrollListener onScrollListener = this.osListener;
        if (onScrollListener != null) {
            onScrollListener.onScrollChanged(this, 0, iComputeVerticalScrollOffset, 0, 0);
        }
        return iComputeVerticalScrollOffset;
    }

    public boolean isReadyToPull() {
        return this.pullEnable;
    }

    public ScrollableListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public ScrollableListView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        init(context);
    }
}
