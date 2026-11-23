package com.wufan.user.service.protobuf;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public interface h extends MessageOrBuilder {
    String getAccount();

    ByteString getAccountBytes();

    int getAccountType();

    String getAppleId();

    ByteString getAppleIdBytes();

    String getAvatarSrc();

    ByteString getAvatarSrcBytes();

    int getExp();

    GameListPermission getGameListPermission(int index);

    int getGameListPermissionCount();

    List<GameListPermission> getGameListPermissionList();

    a getGameListPermissionOrBuilder(int index);

    List<? extends a> getGameListPermissionOrBuilderList();

    long getGameTime();

    int getGender();

    int getIsAnchor();

    int getIsBindQq();

    int getIsBindWb();

    int getIsBindWx();

    int getIsRealName();

    int getLevel();

    int getLiveTotalCharm();

    long getMemberTime();

    MemberTitleInfo getMemberTitle();

    b getMemberTitleOrBuilder();

    String getMobile();

    ByteString getMobileBytes();

    NewMemberInfo getNewMemberInfo();

    e getNewMemberInfoOrBuilder();

    String getNickname();

    ByteString getNicknameBytes();

    long getPapaMoney();

    String getPayTopTip();

    ByteString getPayTopTipBytes();

    int getPwdSetUp();

    long getRegisterTime();

    int getSVIPLevel();

    String getSecretKey();

    ByteString getSecretKeyBytes();

    int getSurplusExp();

    String getToken();

    ByteString getTokenBytes();

    int getUid();

    long getVipExpTime();

    int getVipGame();

    int getVipLevel();

    boolean hasMemberTitle();

    boolean hasNewMemberInfo();
}
