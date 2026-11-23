package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameConfig {
    private int battle_area;
    private String collection_id;
    private int elite_match_switch;
    private String game_ico;
    private String game_id;
    private String game_name;
    private int general_match_switch;
    private int only_show_mobile_gamers_room;
    private String pic_cover;
    private int room_count;
    private String title;

    public int getBattle_area() {
        return this.battle_area;
    }

    public String getCollection_id() {
        return this.collection_id;
    }

    public int getElite_match_switch() {
        return this.elite_match_switch;
    }

    public String getGame_ico() {
        return this.game_ico;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public int getGeneral_match_switch() {
        return this.general_match_switch;
    }

    public int getOnly_show_mobile_gamers_room() {
        return this.only_show_mobile_gamers_room;
    }

    public String getPic_cover() {
        return this.pic_cover;
    }

    public int getRoom_count() {
        return this.room_count;
    }

    public String getTitle() {
        return this.title;
    }

    public void setBattle_area(int battle_area) {
        this.battle_area = battle_area;
    }

    public void setCollection_id(String collection_id) {
        this.collection_id = collection_id;
    }

    public void setElite_match_switch(int elite_match_switch) {
        this.elite_match_switch = elite_match_switch;
    }

    public void setGame_ico(String game_ico) {
        this.game_ico = game_ico;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setGame_name(String game_name) {
        this.game_name = game_name;
    }

    public void setGeneral_match_switch(int general_match_switch) {
        this.general_match_switch = general_match_switch;
    }

    public void setOnly_show_mobile_gamers_room(int only_show_mobile_gamers_room) {
        this.only_show_mobile_gamers_room = only_show_mobile_gamers_room;
    }

    public void setPic_cover(String pic_cover) {
        this.pic_cover = pic_cover;
    }

    public void setRoom_count(int room_count) {
        this.room_count = room_count;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String toString() {
        return "GameConfig{title='" + this.title + "', elite_match_switch=" + this.elite_match_switch + ", general_match_switch=" + this.general_match_switch + ", battle_area=" + this.battle_area + ", game_id='" + this.game_id + "', game_ico='" + this.game_ico + "', game_name='" + this.game_name + "', collection_id='" + this.collection_id + "'}";
    }
}
