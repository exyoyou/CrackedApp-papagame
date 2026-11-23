package com.join.mgps.activity.vipzone.bean;

import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class ScreeningConditionBean {
    List<SpecialTag> board_type;
    List<SpecialTag> game_class;
    List<SpecialTag> game_type;
    List<SpecialTag> sort_type;

    public List<SpecialTag> getBoard_type() {
        return this.board_type;
    }

    public List<SpecialTag> getGame_class() {
        return this.game_class;
    }

    public List<SpecialTag> getGame_type() {
        return this.game_type;
    }

    public List<SpecialTag> getSort_type() {
        return this.sort_type;
    }

    public void setBoard_type(List<SpecialTag> board_type) {
        this.board_type = board_type;
    }

    public void setGame_class(List<SpecialTag> game_class) {
        this.game_class = game_class;
    }

    public void setGame_type(List<SpecialTag> game_type) {
        this.game_type = game_type;
    }

    public void setSort_type(List<SpecialTag> sort_type) {
        this.sort_type = sort_type;
    }
}
