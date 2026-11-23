package com.join.mgps.dto;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class OnlineCouponConfigBean implements Serializable, Parcelable {
    public static final Parcelable.Creator<OnlineCouponConfigBean> CREATOR = new Parcelable.Creator<OnlineCouponConfigBean>() { // from class: com.join.mgps.dto.OnlineCouponConfigBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OnlineCouponConfigBean createFromParcel(Parcel in2) {
            return new OnlineCouponConfigBean(in2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OnlineCouponConfigBean[] newArray(int size) {
            return new OnlineCouponConfigBean[size];
        }
    };
    private boolean gameExitSwitch;
    private boolean gameStartUpSwitch;
    private boolean homePageSwitch;
    private boolean inTimePeriod;
    private int locType;
    private boolean popup;
    private boolean received;
    private String redPacketHint;
    private String redPacketJumpUrl;
    private String redPacketSubHint;
    private String tabHint;
    private String tabJumpUrl;
    private boolean tabSwitch;
    private String timePeriodMark;
    private int uid;

    public OnlineCouponConfigBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getLocType() {
        return this.locType;
    }

    public String getRedPacketHint() {
        return this.redPacketHint;
    }

    public String getRedPacketJumpUrl() {
        return this.redPacketJumpUrl;
    }

    public String getRedPacketSubHint() {
        return this.redPacketSubHint;
    }

    public String getTabHint() {
        return this.tabHint;
    }

    public String getTabJumpUrl() {
        return this.tabJumpUrl;
    }

    public String getTimePeriodMark() {
        return this.timePeriodMark;
    }

    public int getUid() {
        return this.uid;
    }

    public boolean isGameExitSwitch() {
        return this.gameExitSwitch;
    }

    public boolean isGameStartUpSwitch() {
        return this.gameStartUpSwitch;
    }

    public boolean isHomePageSwitch() {
        return this.homePageSwitch;
    }

    public boolean isInTimePeriod() {
        return this.inTimePeriod;
    }

    public boolean isPopup() {
        return this.popup;
    }

    public boolean isReceived() {
        return this.received;
    }

    public boolean isTabSwitch() {
        return this.tabSwitch;
    }

    public void setGameExitSwitch(boolean gameExitSwitch) {
        this.gameExitSwitch = gameExitSwitch;
    }

    public void setGameStartUpSwitch(boolean gameStartUpSwitch) {
        this.gameStartUpSwitch = gameStartUpSwitch;
    }

    public void setHomePageSwitch(boolean homePageSwitch) {
        this.homePageSwitch = homePageSwitch;
    }

    public void setInTimePeriod(boolean inTimePeriod) {
        this.inTimePeriod = inTimePeriod;
    }

    public void setLocType(int locType) {
        this.locType = locType;
    }

    public void setPopup(boolean popup) {
        this.popup = popup;
    }

    public void setReceived(boolean received) {
        this.received = received;
    }

    public void setRedPacketHint(String redPacketHint) {
        this.redPacketHint = redPacketHint;
    }

    public void setRedPacketJumpUrl(String redPacketJumpUrl) {
        this.redPacketJumpUrl = redPacketJumpUrl;
    }

    public void setRedPacketSubHint(String redPacketSubHint) {
        this.redPacketSubHint = redPacketSubHint;
    }

    public void setTabHint(String tabHint) {
        this.tabHint = tabHint;
    }

    public void setTabJumpUrl(String tabJumpUrl) {
        this.tabJumpUrl = tabJumpUrl;
    }

    public void setTabSwitch(boolean tabSwitch) {
        this.tabSwitch = tabSwitch;
    }

    public void setTimePeriodMark(String timePeriodMark) {
        this.timePeriodMark = timePeriodMark;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.locType);
        parcel.writeByte(this.popup ? (byte) 1 : (byte) 0);
        parcel.writeString(this.redPacketHint);
        parcel.writeString(this.redPacketSubHint);
        parcel.writeString(this.redPacketJumpUrl);
        parcel.writeString(this.tabJumpUrl);
        parcel.writeString(this.tabHint);
        parcel.writeInt(this.uid);
        parcel.writeByte(this.gameExitSwitch ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.gameStartUpSwitch ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.homePageSwitch ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.tabSwitch ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.inTimePeriod ? (byte) 1 : (byte) 0);
        parcel.writeString(this.timePeriodMark);
        parcel.writeByte(this.received ? (byte) 1 : (byte) 0);
    }

    protected OnlineCouponConfigBean(Parcel in2) {
        this.locType = in2.readInt();
        this.popup = in2.readByte() != 0;
        this.redPacketHint = in2.readString();
        this.redPacketSubHint = in2.readString();
        this.redPacketJumpUrl = in2.readString();
        this.tabJumpUrl = in2.readString();
        this.tabHint = in2.readString();
        this.uid = in2.readInt();
        this.gameExitSwitch = in2.readByte() != 0;
        this.gameStartUpSwitch = in2.readByte() != 0;
        this.homePageSwitch = in2.readByte() != 0;
        this.tabSwitch = in2.readByte() != 0;
        this.inTimePeriod = in2.readByte() != 0;
        this.timePeriodMark = in2.readString();
        this.received = in2.readByte() != 0;
    }
}
