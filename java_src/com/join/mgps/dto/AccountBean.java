package com.join.mgps.dto;

import com.join.mgps.Util.a;
import com.join.mgps.Util.b;
import com.join.mgps.Util.t2;
import com.wufan.user.service.protobuf.NewMemberInfo;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class AccountBean implements Serializable, Cloneable {
    private int account_type;
    private double cloudCoin;
    private double cloudDiamond;
    private long gameTime;
    private int is_bind_qq;
    private int is_bind_wb;
    private int is_bind_wx;
    private int is_real_name;
    private long member_time;
    private MemberInfo member_title;
    private String pass;
    private int pwd_set_up;
    private String secretKey;
    private boolean status;
    private int uid = 0;
    private String account = "";
    private long papaMoney = 0;
    private long registerTime = 0;
    private String avatarSrc = "";
    private String exp = "";
    private int level = 0;
    private String surplusExp = "";
    private String nickname = "";
    private String mobile = "";
    private String pay_top_tip = "";
    private int gender = 0;
    private String token = "";
    private int vip_level = 0;
    private int svip_level = 0;
    private long vip_exp_time = 0;
    private int live_total_charm = 0;
    private int is_anchor = 0;

    public static class MemberInfo implements Serializable {
        private String battleTitle;
        private String battleTitleColor;
        private boolean isVip;
        private int level;
        private String monthExpireTime;
        private String seasonExpireTime;
        private String showLabelContent;
        private String totalTime;
        private String vipTime;
        private int vipType;
        private String yearExpireTime;

        public String getBattleTitle() {
            return this.battleTitle;
        }

        public String getBattleTitleColor() {
            return this.battleTitleColor;
        }

        public int getLevel() {
            return this.level;
        }

        public String getMonthExpireTime() {
            return this.monthExpireTime;
        }

        public String getSeasonExpireTime() {
            return this.seasonExpireTime;
        }

        public String getShowLabelContent() {
            return this.showLabelContent;
        }

        public String getTotalTime() {
            return this.totalTime;
        }

        public String getVipTime() {
            return this.vipTime;
        }

        public int getVipType() {
            return this.vipType;
        }

        public String getYearExpireTime() {
            return this.yearExpireTime;
        }

        public boolean isVip() {
            return this.isVip;
        }

        public void setBattleTitle(String battleTitle) {
            this.battleTitle = battleTitle;
        }

        public void setBattleTitleColor(String battleTitleColor) {
            this.battleTitleColor = battleTitleColor;
        }

        public void setLevel(int level) {
            this.level = level;
        }

        public void setMonthExpireTime(String monthExpireTime) {
            this.monthExpireTime = monthExpireTime;
        }

        public void setSeasonExpireTime(String seasonExpireTime) {
            this.seasonExpireTime = seasonExpireTime;
        }

        public void setShowLabelContent(String showLabelContent) {
            this.showLabelContent = showLabelContent;
        }

        public void setTotalTime(String totalTime) {
            this.totalTime = totalTime;
        }

        public void setVip(boolean vip) {
            this.isVip = vip;
        }

        public void setVipTime(String vipTime) {
            this.vipTime = vipTime;
        }

        public void setVipType(int vipType) {
            this.vipType = vipType;
        }

        public void setYearExpireTime(String yearExpireTime) {
            this.yearExpireTime = yearExpireTime;
        }
    }

    public static AccountBean convert(UserInfo account) {
        AccountBean accountBean = new AccountBean();
        accountBean.setUid(account.getUid());
        accountBean.setAccount(account.getAccount());
        accountBean.setPapaMoney(account.getPapaMoney());
        accountBean.setRegisterTime(account.getRegisterTime());
        accountBean.setAvatarSrc(account.getAvatarSrc());
        accountBean.setExp(account.getExp() + "");
        accountBean.setLevel(account.getLevel());
        accountBean.setSurplusExp(account.getSurplusExp() + "");
        accountBean.setNickname(account.getNickname());
        accountBean.setMobile(account.getMobile());
        accountBean.setPay_top_tip(account.getPayTopTip());
        accountBean.setGender(account.getGender());
        accountBean.setToken(account.getToken());
        accountBean.setPwd_set_up(account.getPwdSetUp());
        accountBean.setAccount_type(account.getAccountType());
        if (t2.i(account.getSecretKey())) {
            try {
                accountBean.setVip_level(Integer.parseInt(b.vl(a.b(account.getSecretKey()))));
            } catch (Exception unused) {
                accountBean.setVip_level(account.getVipLevel());
            }
        }
        accountBean.setSvip_level(account.getSVIPLevel());
        accountBean.setVip_exp_time(account.getVipExpTime());
        accountBean.setLive_total_charm(account.getLiveTotalCharm());
        accountBean.setIs_anchor(account.getIsAnchor());
        accountBean.setIs_real_name(account.getIsRealName());
        accountBean.setSecretKey(account.getSecretKey());
        accountBean.setMember_time(account.getMemberTime());
        accountBean.setGameTime(account.getGameTime());
        NewMemberInfo newMemberInfo = account.getNewMemberInfo();
        accountBean.setCloudDiamond(newMemberInfo.getCloudDiamond());
        accountBean.setCloudCoin(newMemberInfo.getCloudCoin());
        MemberInfo memberInfo = new MemberInfo();
        memberInfo.setLevel(account.getMemberTitle().getLevel());
        memberInfo.setBattleTitle(account.getMemberTitle().getBattleTitle());
        memberInfo.setBattleTitleColor(account.getMemberTitle().getBattleTitleColor());
        memberInfo.setVipType(newMemberInfo.getVipType());
        memberInfo.setMonthExpireTime(newMemberInfo.getMonthExpireTime());
        memberInfo.setSeasonExpireTime(newMemberInfo.getSeasonExpireTime());
        memberInfo.setYearExpireTime(newMemberInfo.getYearExpireTime());
        memberInfo.setShowLabelContent(newMemberInfo.getShowLabelContent());
        memberInfo.setTotalTime(newMemberInfo.getTotalTime());
        memberInfo.setVipTime(newMemberInfo.getVipTime());
        memberInfo.setVip(newMemberInfo.getIsVip());
        accountBean.setMember_title(memberInfo);
        return accountBean;
    }

    public AccountBean cloneNewAccountBean() {
        AccountBean accountBean = new AccountBean();
        accountBean.setUid(this.uid);
        accountBean.setAccount(this.account);
        accountBean.setPapaMoney(this.papaMoney);
        accountBean.setRegisterTime(this.registerTime);
        accountBean.setAvatarSrc(this.avatarSrc);
        accountBean.setExp(this.exp);
        accountBean.setLevel(this.level);
        accountBean.setSurplusExp(this.surplusExp);
        accountBean.setNickname(this.nickname);
        accountBean.setMobile(this.mobile);
        accountBean.setPay_top_tip(this.pay_top_tip);
        accountBean.setGender(this.gender);
        accountBean.setToken(this.token);
        accountBean.setStatus(this.status);
        accountBean.setPwd_set_up(this.pwd_set_up);
        accountBean.setPass(this.pass);
        accountBean.setAccount_type(this.account_type);
        accountBean.setVip_level(this.vip_level);
        accountBean.setSvip_level(this.svip_level);
        accountBean.setVip_exp_time(this.vip_exp_time);
        accountBean.setLive_total_charm(this.live_total_charm);
        accountBean.setIs_anchor(this.is_anchor);
        accountBean.setMember_title(this.member_title);
        accountBean.setIs_real_name(this.is_real_name);
        accountBean.setSecretKey(this.secretKey);
        accountBean.setMember_time(this.member_time);
        return accountBean;
    }

    public boolean equals(Object o10) {
        return super.equals(o10);
    }

    public String getAccount() {
        return this.account;
    }

    public int getAccount_type() {
        return this.account_type;
    }

    public String getAvatarSrc() {
        return this.avatarSrc;
    }

    public double getCloudCoin() {
        return this.cloudCoin;
    }

    public double getCloudDiamond() {
        return this.cloudDiamond;
    }

    public String getExp() {
        return this.exp;
    }

    public long getGameTime() {
        return this.gameTime;
    }

    public int getGender() {
        return this.gender;
    }

    public int getIs_anchor() {
        return this.is_anchor;
    }

    public int getIs_bind_qq() {
        return this.is_bind_qq;
    }

    public int getIs_bind_wb() {
        return this.is_bind_wb;
    }

    public int getIs_bind_wx() {
        return this.is_bind_wx;
    }

    public int getIs_real_name() {
        return this.is_real_name;
    }

    public int getLevel() {
        return this.level;
    }

    public int getLive_total_charm() {
        return this.live_total_charm;
    }

    public long getMember_time() {
        return this.member_time;
    }

    public MemberInfo getMember_title() {
        return this.member_title;
    }

    public String getMobile() {
        return this.mobile;
    }

    public String getNickname() {
        return this.nickname;
    }

    public long getPapaMoney() {
        return this.papaMoney;
    }

    public String getPass() {
        return this.pass;
    }

    public String getPay_top_tip() {
        return this.pay_top_tip;
    }

    public int getPwd_set_up() {
        return this.pwd_set_up;
    }

    public long getRegisterTime() {
        return this.registerTime;
    }

    public String getSecretKey() {
        return this.secretKey;
    }

    public String getSurplusExp() {
        return this.surplusExp;
    }

    public int getSvip_level() {
        return this.svip_level;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public long getVip_exp_time() {
        return this.vip_exp_time;
    }

    public int getVip_level() {
        return this.vip_level;
    }

    public boolean isStatus() {
        return this.status;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public void setAccount_type(int account_type) {
        this.account_type = account_type;
    }

    public void setAvatarSrc(String avatarSrc) {
        this.avatarSrc = avatarSrc;
    }

    public void setCloudCoin(double cloudCoin) {
        this.cloudCoin = cloudCoin;
    }

    public void setCloudDiamond(double cloudDiamond) {
        this.cloudDiamond = cloudDiamond;
    }

    public void setExp(String exp) {
        this.exp = exp;
    }

    public void setGameTime(long gameTime) {
        this.gameTime = gameTime;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public void setIs_anchor(int is_anchor) {
        this.is_anchor = is_anchor;
    }

    public void setIs_bind_qq(int is_bind_qq) {
        this.is_bind_qq = is_bind_qq;
    }

    public void setIs_bind_wb(int is_bind_wb) {
        this.is_bind_wb = is_bind_wb;
    }

    public void setIs_bind_wx(int is_bind_wx) {
        this.is_bind_wx = is_bind_wx;
    }

    public void setIs_real_name(int is_real_name) {
        this.is_real_name = is_real_name;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public void setLive_total_charm(int live_total_charm) {
        this.live_total_charm = live_total_charm;
    }

    public void setMember_time(long member_time) {
        this.member_time = member_time;
    }

    public void setMember_title(MemberInfo member_title) {
        this.member_title = member_title;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setPapaMoney(long papaMoney) {
        this.papaMoney = papaMoney;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setPay_top_tip(String pay_top_tip) {
        this.pay_top_tip = pay_top_tip;
    }

    public void setPwd_set_up(int pwd_set_up) {
        this.pwd_set_up = pwd_set_up;
    }

    public void setRegisterTime(long registerTime) {
        this.registerTime = registerTime;
    }

    public void setSecretKey(String secretKey) {
        this.secretKey = secretKey;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public void setSurplusExp(String surplusExp) {
        this.surplusExp = surplusExp;
    }

    public void setSvip_level(int svip_level) {
        this.svip_level = svip_level;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setVip_exp_time(long vip_exp_time) {
        this.vip_exp_time = vip_exp_time;
    }

    public void setVip_level(int vip_level) {
        this.vip_level = vip_level;
    }

    public String toString() {
        return "AccountBean{uid=" + this.uid + ", account='" + this.account + "', papaMoney=" + this.papaMoney + ", registerTime=" + this.registerTime + ", avatarSrc='" + this.avatarSrc + "', exp='" + this.exp + "', level=" + this.level + ", surplusExp='" + this.surplusExp + "', nickname='" + this.nickname + "', mobile='" + this.mobile + "', pay_top_tip='" + this.pay_top_tip + "', gender=" + this.gender + ", token='" + this.token + "', status=" + this.status + ", pwd_set_up=" + this.pwd_set_up + ", pass='" + this.pass + "', account_type=" + this.account_type + ", vip_level=" + this.vip_level + ", svip_level=" + this.svip_level + ", vip_exp_time=" + this.vip_exp_time + ", live_total_charm=" + this.live_total_charm + ", is_anchor=" + this.is_anchor + ", is_bind_wb=" + this.is_bind_wb + ", is_bind_wx=" + this.is_bind_wx + ", is_bind_qq=" + this.is_bind_qq + ", is_real_name=" + this.is_real_name + ", member_title=" + this.member_title + ", member_time=" + this.member_time + '}';
    }
}
