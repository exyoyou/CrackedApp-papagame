package com.papa91.arc.widget.listview;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public interface ILoadMoreView {
    View getFooterView();

    void showFail();

    void showLoading();

    void showNoMore();

    void showNormal();
}
