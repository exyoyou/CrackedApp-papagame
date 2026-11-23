package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameOLFirstBean extends CollectionBeanSub {
    private String game_open_time;
    private String papa_privilege;
    private String update_times;

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getGame_open_time() {
        return this.game_open_time;
    }

    public String getPapa_privilege() {
        return this.papa_privilege;
    }

    public String getUpdate_times() {
        return this.update_times;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setGame_open_time(String game_open_time) {
        this.game_open_time = game_open_time;
    }

    public void setPapa_privilege(String papa_privilege) {
        this.papa_privilege = papa_privilege;
    }

    public void setUpdate_times(String update_times) {
        this.update_times = update_times;
    }
}
