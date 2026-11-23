package com.join.mgps.adapter;

import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.PAPAHomeBeanV7;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class b3 extends BaseQuickAdapter<PAPAHomeBeanV7.NgSelectionDTO, com.join.mgps.base.b> {
    public b3(@Nullable List<PAPAHomeBeanV7.NgSelectionDTO> data) {
        super(R.layout.mgpapa_home_game_news_layout, data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void convert(com.join.mgps.base.b helper, PAPAHomeBeanV7.NgSelectionDTO item) {
        try {
            long j10 = Long.parseLong(item.getDate()) * 1000;
            ((TextView) helper.getView(R.id.tvDate)).setText(com.join.mgps.Util.e0.z(j10) ? "今天" : com.join.mgps.Util.e0.e(new Date(j10), "MM.dd"));
        } catch (Exception unused) {
            ((TextView) helper.getView(R.id.tvDate)).setText(item.getDate());
        }
        ((TextView) helper.getView(R.id.tvDesc)).setText(item.getTitle());
        ((TextView) helper.getView(R.id.tvGameName)).setText(item.getName());
        com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.ivGameIcon), item.getIco());
    }
}
