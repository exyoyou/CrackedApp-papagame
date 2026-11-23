package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DiscoveryMainDataBean {
    private List<BattleGameBean> battle_game;
    private int battle_game_count;
    private List<ForumListBean> forum_list;

    public static class BattleGameBean {
        private int battle_area;
        private String battle_index_img;
        private int cat_id;
        private String game_ico;
        private String game_id;
        private String game_name;
        private String game_surface_head_image;
        private String hall_game_list_img;
        private boolean is_local_battle;
        private int rom_type;
        private int room_count;

        public int getBattle_area() {
            return this.battle_area;
        }

        public String getBattle_index_img() {
            return this.battle_index_img;
        }

        public int getCat_id() {
            return this.cat_id;
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

        public String getHall_game_list_img() {
            return this.hall_game_list_img;
        }

        public int getRom_type() {
            return this.rom_type;
        }

        public int getRoom_count() {
            return this.room_count;
        }

        public boolean isIs_local_battle() {
            return this.is_local_battle;
        }

        public void setBattle_area(int battle_area) {
            this.battle_area = battle_area;
        }

        public void setBattle_index_img(String battle_index_img) {
            this.battle_index_img = battle_index_img;
        }

        public void setCat_id(int cat_id) {
            this.cat_id = cat_id;
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

        public void setHall_game_list_img(String hall_game_list_img) {
            this.hall_game_list_img = hall_game_list_img;
        }

        public void setIs_local_battle(boolean is_local_battle) {
            this.is_local_battle = is_local_battle;
        }

        public void setRom_type(int rom_type) {
            this.rom_type = rom_type;
        }

        public void setRoom_count(int room_count) {
            this.room_count = room_count;
        }
    }

    public static class ForumListBean {
        private int fid;
        private String icon_src;
        private boolean is_follow;
        private String name;
        private int today_posts;

        public int getFid() {
            return this.fid;
        }

        public String getIcon_src() {
            return this.icon_src;
        }

        public String getName() {
            return this.name;
        }

        public int getToday_posts() {
            return this.today_posts;
        }

        public boolean isIs_follow() {
            return this.is_follow;
        }

        public void setFid(int fid) {
            this.fid = fid;
        }

        public void setIcon_src(String icon_src) {
            this.icon_src = icon_src;
        }

        public void setIs_follow(boolean is_follow) {
            this.is_follow = is_follow;
        }

        public void setName(String name) {
            this.name = name;
        }

        public void setToday_posts(int today_posts) {
            this.today_posts = today_posts;
        }
    }

    public List<BattleGameBean> getBattle_game() {
        return this.battle_game;
    }

    public int getBattle_game_count() {
        return this.battle_game_count;
    }

    public List<ForumListBean> getForum_list() {
        return this.forum_list;
    }

    public void setBattle_game(List<BattleGameBean> battle_game) {
        this.battle_game = battle_game;
    }

    public void setBattle_game_count(int battle_game_count) {
        this.battle_game_count = battle_game_count;
    }

    public void setForum_list(List<ForumListBean> forum_list) {
        this.forum_list = forum_list;
    }
}
