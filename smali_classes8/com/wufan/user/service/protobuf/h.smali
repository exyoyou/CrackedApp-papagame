.class public interface abstract Lcom/wufan/user/service/protobuf/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getAccount()Ljava/lang/String;
.end method

.method public abstract getAccountBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAccountType()I
.end method

.method public abstract getAppleId()Ljava/lang/String;
.end method

.method public abstract getAppleIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAvatarSrc()Ljava/lang/String;
.end method

.method public abstract getAvatarSrcBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getExp()I
.end method

.method public abstract getGameListPermission(I)Lcom/wufan/user/service/protobuf/GameListPermission;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getGameListPermissionCount()I
.end method

.method public abstract getGameListPermissionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/GameListPermission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGameListPermissionOrBuilder(I)Lcom/wufan/user/service/protobuf/a;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getGameListPermissionOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/user/service/protobuf/a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGameTime()J
.end method

.method public abstract getGender()I
.end method

.method public abstract getIsAnchor()I
.end method

.method public abstract getIsBindQq()I
.end method

.method public abstract getIsBindWb()I
.end method

.method public abstract getIsBindWx()I
.end method

.method public abstract getIsRealName()I
.end method

.method public abstract getLevel()I
.end method

.method public abstract getLiveTotalCharm()I
.end method

.method public abstract getMemberTime()J
.end method

.method public abstract getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;
.end method

.method public abstract getMemberTitleOrBuilder()Lcom/wufan/user/service/protobuf/b;
.end method

.method public abstract getMobile()Ljava/lang/String;
.end method

.method public abstract getMobileBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;
.end method

.method public abstract getNewMemberInfoOrBuilder()Lcom/wufan/user/service/protobuf/e;
.end method

.method public abstract getNickname()Ljava/lang/String;
.end method

.method public abstract getNicknameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPapaMoney()J
.end method

.method public abstract getPayTopTip()Ljava/lang/String;
.end method

.method public abstract getPayTopTipBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPwdSetUp()I
.end method

.method public abstract getRegisterTime()J
.end method

.method public abstract getSVIPLevel()I
.end method

.method public abstract getSecretKey()Ljava/lang/String;
.end method

.method public abstract getSecretKeyBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSurplusExp()I
.end method

.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract getTokenBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUid()I
.end method

.method public abstract getVipExpTime()J
.end method

.method public abstract getVipGame()I
.end method

.method public abstract getVipLevel()I
.end method

.method public abstract hasMemberTitle()Z
.end method

.method public abstract hasNewMemberInfo()Z
.end method
