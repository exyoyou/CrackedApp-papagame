package com.cpoopc.scrollablelayoutlib;

import android.annotation.SuppressLint;
import android.view.View;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes9.dex */
public class ScrollableHelper {
    private ScrollableContainer mCurrentScrollableCainer;

    public interface ScrollableContainer {
        View getScrollableView();
    }

    private View getScrollableView() {
        ScrollableContainer scrollableContainer = this.mCurrentScrollableCainer;
        if (scrollableContainer == null) {
            return null;
        }
        return scrollableContainer.getScrollableView();
    }

    private static boolean isAdapterViewTop(AdapterView adapterView) {
        if (adapterView != null) {
            int firstVisiblePosition = adapterView.getFirstVisiblePosition();
            View childAt = adapterView.getChildAt(0);
            if (childAt == null) {
                return true;
            }
            if (firstVisiblePosition == 0 && childAt.getTop() == 0) {
                return true;
            }
        }
        return false;
    }

    private static boolean isRecyclerViewTop(RecyclerView recyclerView) {
        if (recyclerView != null) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof LinearLayoutManager) {
                int iFindFirstVisibleItemPosition = ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
                View childAt = recyclerView.getChildAt(0);
                if (childAt == null) {
                    return true;
                }
                if (iFindFirstVisibleItemPosition == 0 && layoutManager.getDecoratedTop(childAt) == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean isScrollViewTop(ScrollView scrollView) {
        return scrollView != null && scrollView.getScrollY() <= 0;
    }

    private static boolean isWebViewTop(WebView scrollView) {
        return scrollView != null && scrollView.getScrollY() <= 0;
    }

    public boolean isTop() {
        View scrollableView = getScrollableView();
        if (scrollableView == null) {
            return true;
        }
        if (scrollableView instanceof AdapterView) {
            return isAdapterViewTop((AdapterView) scrollableView);
        }
        if (scrollableView instanceof ScrollView) {
            return isScrollViewTop((ScrollView) scrollableView);
        }
        if (scrollableView instanceof RecyclerView) {
            return isRecyclerViewTop((RecyclerView) scrollableView);
        }
        if (scrollableView instanceof WebView) {
            return isWebViewTop((WebView) scrollableView);
        }
        throw new IllegalStateException("scrollableView must be a instance of AdapterView|ScrollView|RecyclerView");
    }

    public void setCurrentScrollableContainer(ScrollableContainer scrollableContainer) {
        this.mCurrentScrollableCainer = scrollableContainer;
    }

    @SuppressLint({"NewApi"})
    public void smoothScrollBy(int velocityY, int distance, int duration) {
        View scrollableView = getScrollableView();
        if (scrollableView instanceof AbsListView) {
            ((AbsListView) scrollableView).fling(velocityY);
            return;
        }
        if (scrollableView instanceof ScrollView) {
            ((ScrollView) scrollableView).fling(velocityY);
        } else if (scrollableView instanceof RecyclerView) {
            ((RecyclerView) scrollableView).fling(0, velocityY);
        } else if (scrollableView instanceof WebView) {
            ((WebView) scrollableView).flingScroll(0, velocityY);
        }
    }
}
