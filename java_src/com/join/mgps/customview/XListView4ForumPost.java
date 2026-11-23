package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AbsListView;
import com.join.mgps.ptr.PtrFrameLayout;

/* JADX INFO: loaded from: classes3.dex */
public class XListView4ForumPost extends XListView4NewGame {
    public XListView4ForumPost(Context context) {
        super(context);
    }

    public static boolean y(View view) {
        if (!(view instanceof AbsListView)) {
            return view.getScrollY() > 0;
        }
        AbsListView absListView = (AbsListView) view;
        return absListView.getChildCount() > 0 && (absListView.getFirstVisiblePosition() > 0 || absListView.getChildAt(0).getTop() < absListView.getPaddingTop());
    }

    public static boolean z(PtrFrameLayout frame, View content, View header) {
        return !y(content);
    }

    @Override // com.join.mgps.customview.XListView2
    public boolean d(PtrFrameLayout frame, View content, View header) {
        return z(frame, content, header);
    }

    public XListView4ForumPost(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public XListView4ForumPost(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }
}
