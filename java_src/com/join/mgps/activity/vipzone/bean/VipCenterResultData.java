package com.join.mgps.activity.vipzone.bean;

import com.join.mgps.dto.RecomDatabean;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class VipCenterResultData {
    private VipCenterGameListitem cp_game_list;
    private VipCenterGameListitem gf_game_list;
    private Luckbean luck_draw_info;
    private List<RecomDatabean> member_collection;
    private VipCenterGameListitem mod_game_list;
    private VipCenterGameListitem os_game_list;

    public VipCenterGameListitem getCp_game_list() {
        return this.cp_game_list;
    }

    public VipCenterGameListitem getGf_game_list() {
        return this.gf_game_list;
    }

    public Luckbean getLuck_draw_info() {
        return this.luck_draw_info;
    }

    public List<RecomDatabean> getMember_collection() {
        return this.member_collection;
    }

    public VipCenterGameListitem getMod_game_list() {
        return this.mod_game_list;
    }

    public VipCenterGameListitem getOs_game_list() {
        return this.os_game_list;
    }

    public void setCp_game_list(VipCenterGameListitem cp_game_list) {
        this.cp_game_list = cp_game_list;
    }

    public void setGf_game_list(VipCenterGameListitem gf_game_list) {
        this.gf_game_list = gf_game_list;
    }

    public void setLuck_draw_info(Luckbean luck_draw_info) {
        this.luck_draw_info = luck_draw_info;
    }

    public void setMember_collection(List<RecomDatabean> member_collection) {
        this.member_collection = member_collection;
    }

    public void setMod_game_list(VipCenterGameListitem mod_game_list) {
        this.mod_game_list = mod_game_list;
    }

    public void setOs_game_list(VipCenterGameListitem os_game_list) {
        this.os_game_list = os_game_list;
    }
}
