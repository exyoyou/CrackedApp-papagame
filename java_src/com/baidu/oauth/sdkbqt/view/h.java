package com.baidu.oauth.sdkbqt.view;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: loaded from: classes6.dex */
class h implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f8285a;

    h(g gVar) {
        this.f8285a = gVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
        g.a item = this.f8285a.f8281b.getItem(i10);
        item.f8284c.a(item);
    }
}
