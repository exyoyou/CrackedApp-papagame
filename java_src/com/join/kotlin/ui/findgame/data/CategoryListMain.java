package com.join.kotlin.ui.findgame.data;

import com.join.mgps.dto.CollectionBeanSub;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public class CategoryListMain {
    private List<CollectionBeanSub> game_list;
    private TagData tag_list;

    public CategoryListMain(@NotNull List<CollectionBeanSub> game_list, @NotNull TagData tag_list) {
        this.game_list = game_list;
        this.tag_list = tag_list;
    }

    public List<CollectionBeanSub> getGame_list() {
        return this.game_list;
    }

    public TagData getTag_list() {
        return this.tag_list;
    }

    public void setGame_list(@NotNull List<CollectionBeanSub> var1) {
        this.game_list = var1;
    }

    public void setTag_list(@NotNull TagData var1) {
        this.tag_list = var1;
    }

    public CategoryListMain() {
    }
}
