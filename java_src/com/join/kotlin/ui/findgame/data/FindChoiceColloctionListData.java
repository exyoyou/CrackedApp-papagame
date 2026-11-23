package com.join.kotlin.ui.findgame.data;

import com.join.mgps.dto.CollectionBeanSub;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public class FindChoiceColloctionListData {

    @NotNull
    private String component_id;

    @NotNull
    private List<CollectionBeanSub> game_list;

    @NotNull
    private String title;
    private String tpl_type;
    private int view_type = 2;

    public FindChoiceColloctionListData(@NotNull String collection_id, @NotNull List<CollectionBeanSub> game_list, @NotNull String title) {
        this.component_id = collection_id;
        this.game_list = game_list;
        this.title = title;
    }

    @NotNull
    public String getComponent_id() {
        return this.component_id;
    }

    @NotNull
    public List<CollectionBeanSub> getGame_list() {
        return this.game_list;
    }

    @NotNull
    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public int getView_type() {
        return this.view_type;
    }

    public void setComponent_id(@NotNull String component_id) {
        this.component_id = component_id;
        Intrinsics.checkNotNullParameter(component_id, "<set-?>");
        this.component_id = component_id;
    }

    public void setGame_list(@NotNull List<CollectionBeanSub> var1) {
        this.game_list = var1;
    }

    public void setTitle(@NotNull String var1) {
        this.title = var1;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }

    public void setView_type(int view_type) {
        this.view_type = view_type;
    }

    public FindChoiceColloctionListData() {
    }
}
