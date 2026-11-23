package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameDetailRoomCfgInfo {
    private List<GameDetailCheckPoint> check_point;
    private List<GameDetailCloudArchive> cloud_archive;
    private int cloud_archive_count;
    private List<String> golden_finger;
    private List<GameDetailOneTouchSkill> one_touch_skill;

    public List<GameDetailCheckPoint> getCheck_point() {
        return this.check_point;
    }

    public List<GameDetailCloudArchive> getCloud_archive() {
        return this.cloud_archive;
    }

    public int getCloud_archive_count() {
        return this.cloud_archive_count;
    }

    public List<String> getGolden_finger() {
        return this.golden_finger;
    }

    public List<GameDetailOneTouchSkill> getOne_touch_skill() {
        return this.one_touch_skill;
    }

    public void setCheck_point(List<GameDetailCheckPoint> check_point) {
        this.check_point = check_point;
    }

    public void setCloud_archive(List<GameDetailCloudArchive> cloud_archive) {
        this.cloud_archive = cloud_archive;
    }

    public void setCloud_archive_count(int cloud_archive_count) {
        this.cloud_archive_count = cloud_archive_count;
    }

    public void setGolden_finger(List<String> golden_finger) {
        this.golden_finger = golden_finger;
    }

    public void setOne_touch_skill(List<GameDetailOneTouchSkill> one_touch_skill) {
        this.one_touch_skill = one_touch_skill;
    }
}
