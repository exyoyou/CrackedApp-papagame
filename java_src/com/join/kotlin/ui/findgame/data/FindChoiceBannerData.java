package com.join.kotlin.ui.findgame.data;

import androidx.annotation.Nullable;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.kotlin.base.impl.BaseDownloadable;
import com.join.kotlin.base.impl.GInfo;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.dto.CollectionBeanSub;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public class FindChoiceBannerData extends BaseDownloadable {
    private CollectionBeanSub game_info;
    private String pic;

    public FindChoiceBannerData() {
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.Downloadable
    @Nullable
    public DownloadTask getDownloadTask() {
        return this.game_info.getDownloadTask();
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.Downloadable
    @Nullable
    public GInfo getGInfo() {
        return this.game_info;
    }

    public CollectionBeanSub getGame_info() {
        return this.game_info;
    }

    @Override // com.join.kotlin.base.impl.IIntent, com.join.kotlin.base.impl.GInfo
    public IntentDateBean getIntentDataBean() {
        return this.game_info.getIntentDataBean();
    }

    public String getPic() {
        return this.pic;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.Downloadable
    public boolean hasGInfo() {
        return this.game_info != null;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.Downloadable
    public void setDownloadTask(@Nullable DownloadTask downloadTask) {
        this.game_info.setDownloadTask(downloadTask);
    }

    public FindChoiceBannerData(CollectionBeanSub game_info, String pic) {
        Intrinsics.checkNotNullParameter(game_info, "game_info");
        Intrinsics.checkNotNullParameter(pic, "pic");
        this.game_info = game_info;
        this.pic = pic;
    }
}
