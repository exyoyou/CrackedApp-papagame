package com.join.kotlin.ui.notice;

import com.join.mgps.dto.BTActivityBean;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&¨\u0006\u0007"}, d2 = {"Lcom/join/kotlin/ui/notice/ClickProxy;", "", "onClickItem", "", "data", "Lcom/join/mgps/dto/BTActivityBean;", "onClickBack", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface ClickProxy {
    void onClickBack();

    void onClickItem(@NotNull BTActivityBean data);
}
