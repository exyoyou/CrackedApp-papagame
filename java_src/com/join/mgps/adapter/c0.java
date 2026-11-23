package com.join.mgps.adapter;

import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.PAPAHomeBeanV7;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class c0 extends BaseQuickAdapter<PAPAHomeBeanV7.HomeBeanDTO, com.join.mgps.base.b> {
    public c0(@Nullable List<PAPAHomeBeanV7.HomeBeanDTO> data) {
        super(R.layout.papamain_fastitem_layout_v2, data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void convert(com.join.mgps.base.b helper, PAPAHomeBeanV7.HomeBeanDTO item) {
        com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.icon), item.getBig_pic());
        ((TextView) helper.getView(R.id.name)).setText(item.getTitle());
    }
}
