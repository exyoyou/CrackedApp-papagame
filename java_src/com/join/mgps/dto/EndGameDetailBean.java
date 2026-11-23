package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class EndGameDetailBean implements Serializable {
    private EndGameBean endgameInfo;
    private RankingListBean myRankings;
    private List<RankingListBean> rankingList;
    private String shareUrl;

    public static class RankingListBean implements Serializable {
        private String avatar;
        private String challengeId;
        private int change;
        private int elapsedTime;
        private String endgameId;
        private String nickname;
        private boolean playback;
        private String ranking;
        private String uid;

        public String getAvatar() {
            return this.avatar;
        }

        public String getChallengeId() {
            return this.challengeId;
        }

        public int getChange() {
            return this.change;
        }

        public int getElapsedTime() {
            return this.elapsedTime;
        }

        public String getEndgameId() {
            return this.endgameId;
        }

        public String getNickname() {
            return this.nickname;
        }

        public String getRanking() {
            return this.ranking;
        }

        public String getUid() {
            return this.uid;
        }

        public boolean isPlayback() {
            return this.playback;
        }

        public void setAvatar(String avatar) {
            this.avatar = avatar;
        }

        public void setChallengeId(String challengeId) {
            this.challengeId = challengeId;
        }

        public void setChange(int change) {
            this.change = change;
        }

        public void setElapsedTime(int elapsedTime) {
            this.elapsedTime = elapsedTime;
        }

        public void setEndgameId(String endgameId) {
            this.endgameId = endgameId;
        }

        public void setNickname(String nickname) {
            this.nickname = nickname;
        }

        public void setPlayback(boolean playback) {
            this.playback = playback;
        }

        public void setRanking(String ranking) {
            this.ranking = ranking;
        }

        public void setUid(String uid) {
            this.uid = uid;
        }
    }

    public EndGameBean getEndgameInfo() {
        return this.endgameInfo;
    }

    public RankingListBean getMyRankings() {
        return this.myRankings;
    }

    public List<RankingListBean> getRankingList() {
        return this.rankingList;
    }

    public String getShareUrl() {
        return this.shareUrl;
    }

    public void setEndgameInfo(EndGameBean endgameInfo) {
        this.endgameInfo = endgameInfo;
    }

    public void setMyRankings(RankingListBean myRankings) {
        this.myRankings = myRankings;
    }

    public void setRankingList(List<RankingListBean> rankingList) {
        this.rankingList = rankingList;
    }

    public void setShareUrl(String shareUrl) {
        this.shareUrl = shareUrl;
    }
}
