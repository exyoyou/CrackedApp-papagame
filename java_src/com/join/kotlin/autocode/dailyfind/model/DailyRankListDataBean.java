package com.join.kotlin.autocode.dailyfind.model;

import java.util.ArrayList;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R.\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListDataBean;", "", "<init>", "()V", "list", "Ljava/util/ArrayList;", "Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;", "Lkotlin/collections/ArrayList;", "getList", "()Ljava/util/ArrayList;", "setList", "(Ljava/util/ArrayList;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DailyRankListDataBean {

    @Nullable
    private ArrayList<DailyRankListItemBean> list;

    @Nullable
    public final ArrayList<DailyRankListItemBean> getList() {
        return this.list;
    }

    public final void setList(@Nullable ArrayList<DailyRankListItemBean> arrayList) {
        this.list = arrayList;
    }
}
