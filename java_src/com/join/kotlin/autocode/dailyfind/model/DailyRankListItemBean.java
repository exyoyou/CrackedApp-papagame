package com.join.kotlin.autocode.dailyfind.model;

import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import java.util.ArrayList;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR.\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\f\u0018\u0001`\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;", "", "<init>", "()V", "title", "", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "game_list", "Ljava/util/ArrayList;", "Lcom/join/mgps/dto/CollectionBeanSub;", "Lkotlin/collections/ArrayList;", "getGame_list", "()Ljava/util/ArrayList;", "setGame_list", "(Ljava/util/ArrayList;)V", "extBean", "Lcom/join/mgps/dto/ExtBean;", "getExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DailyRankListItemBean {

    @Nullable
    private ExtBean extBean;

    @Nullable
    private ArrayList<CollectionBeanSub> game_list;

    @Nullable
    private String title;

    @Nullable
    public final ExtBean getExtBean() {
        return this.extBean;
    }

    @Nullable
    public final ArrayList<CollectionBeanSub> getGame_list() {
        return this.game_list;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final void setExtBean(@Nullable ExtBean extBean) {
        this.extBean = extBean;
    }

    public final void setGame_list(@Nullable ArrayList<CollectionBeanSub> arrayList) {
        this.game_list = arrayList;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }
}
