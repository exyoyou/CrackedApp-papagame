package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CommentAllListBean implements Serializable {
    private String game_comment_count;
    private GameScore game_score;
    private List<GeneralCommentBean> general_comment;
    private List<HotCommentBean> hot_comment;
    private ScoringDetailsBean scoring_details;
    private SelfCommentBean self_comment;

    public static class GeneralCommentBean extends CommentBaseBean {
    }

    public static class HotCommentBean extends CommentBaseBean {
    }

    public static class ScoringDetailsBean implements Serializable {
        private String game_id;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68033id;
        private int p_count;
        private String stars_score1;
        private String stars_score2;
        private String stars_score3;
        private String stars_score4;
        private String stars_score5;
        private String total_score;
        private double total_stars;
        private String update_times;

        public String getGame_id() {
            return this.game_id;
        }

        public String getId() {
            return this.f68033id;
        }

        public int getP_count() {
            return this.p_count;
        }

        public String getStars_score1() {
            return this.stars_score1;
        }

        public String getStars_score2() {
            return this.stars_score2;
        }

        public String getStars_score3() {
            return this.stars_score3;
        }

        public String getStars_score4() {
            return this.stars_score4;
        }

        public String getStars_score5() {
            return this.stars_score5;
        }

        public String getTotal_score() {
            return this.total_score;
        }

        public double getTotal_stars() {
            return this.total_stars;
        }

        public String getUpdate_times() {
            return this.update_times;
        }

        public void setGame_id(String game_id) {
            this.game_id = game_id;
        }

        public void setId(String id2) {
            this.f68033id = id2;
        }

        public void setP_count(int p_count) {
            this.p_count = p_count;
        }

        public void setStars_score1(String stars_score1) {
            this.stars_score1 = stars_score1;
        }

        public void setStars_score2(String stars_score2) {
            this.stars_score2 = stars_score2;
        }

        public void setStars_score3(String stars_score3) {
            this.stars_score3 = stars_score3;
        }

        public void setStars_score4(String stars_score4) {
            this.stars_score4 = stars_score4;
        }

        public void setStars_score5(String stars_score5) {
            this.stars_score5 = stars_score5;
        }

        public void setTotal_score(String total_score) {
            this.total_score = total_score;
        }

        public void setTotal_stars(double total_stars) {
            this.total_stars = total_stars;
        }

        public void setUpdate_times(String update_times) {
            this.update_times = update_times;
        }
    }

    public static class SelfCommentBean extends CommentBaseBean {
    }

    public String getGame_comment_count() {
        return this.game_comment_count;
    }

    public GameScore getGame_score() {
        return this.game_score;
    }

    public List<GeneralCommentBean> getGeneral_comment() {
        return this.general_comment;
    }

    public List<HotCommentBean> getHot_comment() {
        return this.hot_comment;
    }

    public ScoringDetailsBean getScoring_details() {
        return this.scoring_details;
    }

    public SelfCommentBean getSelf_comment() {
        return this.self_comment;
    }

    public void setGame_comment_count(String game_comment_count) {
        this.game_comment_count = game_comment_count;
    }

    public void setGame_score(GameScore game_score) {
        this.game_score = game_score;
    }

    public void setGeneral_comment(List<GeneralCommentBean> general_comment) {
        this.general_comment = general_comment;
    }

    public void setHot_comment(List<HotCommentBean> hot_comment) {
        this.hot_comment = hot_comment;
    }

    public void setScoring_details(ScoringDetailsBean scoring_details) {
        this.scoring_details = scoring_details;
    }

    public void setSelf_comment(SelfCommentBean self_comment) {
        this.self_comment = self_comment;
    }
}
