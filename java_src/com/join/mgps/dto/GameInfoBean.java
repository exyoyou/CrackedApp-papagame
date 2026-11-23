package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class GameInfoBean implements Serializable {
    private static final long serialVersionUID = -3814805766134302239L;
    private int battle_area;
    private String collection_id;
    private int elite_match_switch;
    private String game_ico;
    private String game_id;
    private String game_name;
    private String game_surface_head_image;
    private int general_match_switch;
    private String hall_game_list_img;
    private int only_show_mobile_gamers_room;
    private String pic_cover;
    private String pic_remote;
    private String pic_remote_vertical;
    private int room_count;
    private boolean the_hot;
    private boolean the_new;
    private boolean the_score;
    private String title;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

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

    public String getGame_surface_head_image() {
        return this.game_surface_head_image;
    }

    public int getGeneral_match_switch() {
        return this.general_match_switch;
    }

    public String getHall_game_list_img() {
        return this.hall_game_list_img;
    }

    public int getOnly_show_mobile_gamers_room() {
        return this.only_show_mobile_gamers_room;
    }

    public String getPic_cover() {
        return this.pic_cover;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public String getPic_remote_vertical() {
        return this.pic_remote_vertical;
    }

    public int getRoom_count() {
        return this.room_count;
    }

    public String getTitle() {
        return this.title;
    }

    public boolean isThe_hot() {
        return this.the_hot;
    }

    public boolean isThe_new() {
        return this.the_new;
    }

    public boolean isThe_score() {
        return this.the_score;
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

    public void setGame_surface_head_image(String game_surface_head_image) {
        this.game_surface_head_image = game_surface_head_image;
    }

    public void setGeneral_match_switch(int general_match_switch) {
        this.general_match_switch = general_match_switch;
    }

    public void setHall_game_list_img(String hall_game_list_img) {
        this.hall_game_list_img = hall_game_list_img;
    }

    public void setOnly_show_mobile_gamers_room(int only_show_mobile_gamers_room) {
        this.only_show_mobile_gamers_room = only_show_mobile_gamers_room;
    }

    public void setPic_cover(String pic_cover) {
        this.pic_cover = pic_cover;
    }

    public void setPic_remote(String pic_remote) {
        this.pic_remote = pic_remote;
    }

    public void setPic_remote_vertical(String pic_remote_vertical) {
        this.pic_remote_vertical = pic_remote_vertical;
    }

    public void setRoom_count(int room_count) {
        this.room_count = room_count;
    }

    public void setThe_hot(boolean the_hot) {
        this.the_hot = the_hot;
    }

    public void setThe_new(boolean the_new) {
        this.the_new = the_new;
    }

    public void setThe_score(boolean the_score) {
        this.the_score = the_score;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String toString() {
        return "GameInfoBean{game_name='" + this.game_name + "', game_id='" + this.game_id + "', game_ico='" + this.game_ico + "', room_count=" + this.room_count + ", game_surface_head_image='" + this.game_surface_head_image + "'}";
    }
}
