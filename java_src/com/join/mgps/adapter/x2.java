package com.join.mgps.adapter;

import android.content.Context;
import android.view.ViewGroup;
import com.join.mgps.customview.GameTransferListItem;
import com.join.mgps.customview.GameTransferListItem_;
import com.join.mgps.dto.GameTransferBean;
import org.androidannotations.annotations.EBean;
import org.androidannotations.annotations.RootContext;

/* JADX INFO: loaded from: classes3.dex */
@EBean
public class x2 extends o6<GameTransferBean, GameTransferListItem> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f63856j = "x2";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @RootContext
    Context f63857h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f63858i = false;

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(o6.a<GameTransferListItem> holder, int position) {
        if (holder instanceof o6.a) {
            ((GameTransferListItem) holder.a()).b(position, this.f62969e, this.f63858i);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onBindViewHolder: ");
            sb2.append(position);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.adapter.o6
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public GameTransferListItem e(ViewGroup parent, int viewType) {
        return GameTransferListItem_.d(this.f63857h);
    }

    public void m(boolean sending) {
        this.f63858i = sending;
    }
}
