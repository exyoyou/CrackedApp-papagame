package com.join.mgps.adapter;

import android.content.Context;
import android.view.ViewGroup;
import com.join.mgps.customview.GameTransferHistoryListItem;
import com.join.mgps.customview.GameTransferHistoryListItem_;
import com.join.mgps.dto.GameTransferBean;
import org.androidannotations.annotations.EBean;
import org.androidannotations.annotations.RootContext;

/* JADX INFO: loaded from: classes3.dex */
@EBean
public class v2 extends o6<GameTransferBean, GameTransferHistoryListItem> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f63285i = "v2";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @RootContext
    Context f63286h;

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(o6.a<GameTransferHistoryListItem> holder, int position) {
        if (holder instanceof o6.a) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onBindViewHolder: position");
            sb2.append(position);
            ((GameTransferHistoryListItem) holder.a()).b((GameTransferBean) this.f62969e.valueAt(position));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.adapter.o6
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public GameTransferHistoryListItem e(ViewGroup parent, int viewType) {
        return GameTransferHistoryListItem_.e(this.f63286h);
    }
}
