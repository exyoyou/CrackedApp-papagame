package com.wufan.user.service.protobuf;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface e extends MessageOrBuilder {
    double getCloudCoin();

    double getCloudDiamond();

    boolean getIsBaoYeCard();

    boolean getIsJiSuCard();

    boolean getIsNewMember();

    boolean getIsSigned();

    boolean getIsVip();

    String getMonthExpireTime();

    ByteString getMonthExpireTimeBytes();

    int getNewMemberDays();

    int getPropNum();

    String getSeasonExpireTime();

    ByteString getSeasonExpireTimeBytes();

    String getShowLabelContent();

    ByteString getShowLabelContentBytes();

    int getShowLabelType();

    boolean getShowNewGift();

    String getTotalTime();

    ByteString getTotalTimeBytes();

    String getVipTime();

    ByteString getVipTimeBytes();

    int getVipType();

    String getYearExpireTime();

    ByteString getYearExpireTimeBytes();
}
