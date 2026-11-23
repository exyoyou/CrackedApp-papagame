.class public final Lcom/wufan/user/service/protobuf/UserInfo;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/user/service/protobuf/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/UserInfo$b;
    }
.end annotation


# static fields
.field public static final ACCOUNTTYPE_FIELD_NUMBER:I = 0xd

.field public static final ACCOUNT_FIELD_NUMBER:I = 0x2

.field public static final APPLEID_FIELD_NUMBER:I = 0xc

.field public static final AVATARSRC_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/UserInfo;

.field public static final EXP_FIELD_NUMBER:I = 0x9

.field public static final GAMELISTPERMISSION_FIELD_NUMBER:I = 0x1c

.field public static final GAMETIME_FIELD_NUMBER:I = 0x1f

.field public static final GENDER_FIELD_NUMBER:I = 0x7

.field public static final ISANCHOR_FIELD_NUMBER:I = 0x12

.field public static final ISBINDQQ_FIELD_NUMBER:I = 0x18

.field public static final ISBINDWB_FIELD_NUMBER:I = 0x16

.field public static final ISBINDWX_FIELD_NUMBER:I = 0x17

.field public static final ISREALNAME_FIELD_NUMBER:I = 0x14

.field public static final LEVEL_FIELD_NUMBER:I = 0x8

.field public static final LIVETOTALCHARM_FIELD_NUMBER:I = 0x11

.field public static final MEMBERTIME_FIELD_NUMBER:I = 0x1e

.field public static final MEMBERTITLE_FIELD_NUMBER:I = 0x13

.field public static final MOBILE_FIELD_NUMBER:I = 0xa

.field public static final NEWMEMBERINFO_FIELD_NUMBER:I = 0x20

.field public static final NICKNAME_FIELD_NUMBER:I = 0x1d

.field public static final PAPAMONEY_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYTOPTIP_FIELD_NUMBER:I = 0x15

.field public static final PWDSETUP_FIELD_NUMBER:I = 0x3

.field public static final REGISTERTIME_FIELD_NUMBER:I = 0x5

.field public static final SECRETKEY_FIELD_NUMBER:I = 0x1b

.field public static final SURPLUSEXP_FIELD_NUMBER:I = 0xb

.field public static final SVIPLEVEL_FIELD_NUMBER:I = 0xf

.field public static final TOKEN_FIELD_NUMBER:I = 0x1a

.field public static final UID_FIELD_NUMBER:I = 0x1

.field public static final VIPEXPTIME_FIELD_NUMBER:I = 0x10

.field public static final VIPGAME_FIELD_NUMBER:I = 0x19

.field public static final VIPLEVEL_FIELD_NUMBER:I = 0xe

.field private static final serialVersionUID:J


# instance fields
.field private accountType_:I

.field private volatile account_:Ljava/lang/Object;

.field private volatile appleId_:Ljava/lang/Object;

.field private volatile avatarSrc_:Ljava/lang/Object;

.field private bitField0_:I

.field private exp_:I

.field private gameListPermission_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/GameListPermission;",
            ">;"
        }
    .end annotation
.end field

.field private gameTime_:J

.field private gender_:I

.field private isAnchor_:I

.field private isBindQq_:I

.field private isBindWb_:I

.field private isBindWx_:I

.field private isRealName_:I

.field private level_:I

.field private liveTotalCharm_:I

.field private memberTime_:J

.field private memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

.field private memoizedIsInitialized:B

.field private volatile mobile_:Ljava/lang/Object;

.field private newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

.field private volatile nickname_:Ljava/lang/Object;

.field private papaMoney_:J

.field private volatile payTopTip_:Ljava/lang/Object;

.field private pwdSetUp_:I

.field private registerTime_:J

.field private sVIPLevel_:I

.field private volatile secretKey_:Ljava/lang/Object;

.field private surplusExp_:I

.field private volatile token_:Ljava/lang/Object;

.field private uid_:I

.field private vipExpTime_:J

.field private vipGame_:I

.field private vipLevel_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/UserInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 7
    .line 8
    new-instance v0, Lcom/wufan/user/service/protobuf/UserInfo$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/UserInfo$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->account_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->nickname_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->avatarSrc_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->mobile_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->appleId_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->payTopTip_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->token_:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->secretKey_:Ljava/lang/Object;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo;-><init>()V

    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/high16 v3, 0x10000000

    if-nez v1, :cond_5

    .line 19
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_0

    .line 20
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 21
    :sswitch_0
    iget-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    if-eqz v4, :cond_1

    .line 22
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->toBuilder()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object v5

    .line 23
    :cond_1
    invoke-static {}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    iput-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    if-eqz v5, :cond_0

    .line 24
    invoke-virtual {v5, v4}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->mergeFrom(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 25
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->buildPartial()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    goto :goto_0

    .line 26
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameTime_:J

    goto :goto_0

    .line 27
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->memberTime_:J

    goto :goto_0

    .line 28
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 29
    iput-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->nickname_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    and-int v4, v2, v3

    if-nez v4, :cond_2

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    or-int/2addr v2, v3

    .line 31
    :cond_2
    iget-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    .line 32
    invoke-static {}, Lcom/wufan/user/service/protobuf/GameListPermission;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/wufan/user/service/protobuf/GameListPermission;

    .line 33
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 35
    iput-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->secretKey_:Ljava/lang/Object;

    goto :goto_0

    .line 36
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 37
    iput-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->token_:Ljava/lang/Object;

    goto :goto_0

    .line 38
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->vipGame_:I

    goto :goto_0

    .line 39
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isBindQq_:I

    goto :goto_0

    .line 40
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isBindWx_:I

    goto/16 :goto_0

    .line 41
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isBindWb_:I

    goto/16 :goto_0

    .line 42
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 43
    iput-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->payTopTip_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 44
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isRealName_:I

    goto/16 :goto_0

    .line 45
    :sswitch_d
    iget-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    if-eqz v4, :cond_3

    .line 46
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->toBuilder()Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;

    move-result-object v5

    .line 47
    :cond_3
    invoke-static {}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    iput-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    if-eqz v5, :cond_0

    .line 48
    invoke-virtual {v5, v4}, Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MemberTitleInfo;)Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;

    .line 49
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;->buildPartial()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    goto/16 :goto_0

    .line 50
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isAnchor_:I

    goto/16 :goto_0

    .line 51
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->liveTotalCharm_:I

    goto/16 :goto_0

    .line 52
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->vipExpTime_:J

    goto/16 :goto_0

    .line 53
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->sVIPLevel_:I

    goto/16 :goto_0

    .line 54
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->vipLevel_:I

    goto/16 :goto_0

    .line 55
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->accountType_:I

    goto/16 :goto_0

    .line 56
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 57
    iput-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->appleId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 58
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->surplusExp_:I

    goto/16 :goto_0

    .line 59
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 60
    iput-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->mobile_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 61
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->exp_:I

    goto/16 :goto_0

    .line 62
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->level_:I

    goto/16 :goto_0

    .line 63
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gender_:I

    goto/16 :goto_0

    .line 64
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 65
    iput-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->avatarSrc_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 66
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->registerTime_:J

    goto/16 :goto_0

    .line 67
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->papaMoney_:J

    goto/16 :goto_0

    .line 68
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->pwdSetUp_:I

    goto/16 :goto_0

    .line 69
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 70
    iput-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->account_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 71
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/wufan/user/service/protobuf/UserInfo;->uid_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_20
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 72
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 73
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 74
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int p2, v2, v3

    if-eqz p2, :cond_4

    .line 75
    iget-object p2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    .line 76
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 77
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 78
    throw p1

    :cond_5
    and-int p1, v2, v3

    if-eqz p1, :cond_6

    .line 79
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    .line 80
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 81
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_20
        0x8 -> :sswitch_1f
        0x12 -> :sswitch_1e
        0x18 -> :sswitch_1d
        0x20 -> :sswitch_1c
        0x28 -> :sswitch_1b
        0x32 -> :sswitch_1a
        0x38 -> :sswitch_19
        0x40 -> :sswitch_18
        0x48 -> :sswitch_17
        0x52 -> :sswitch_16
        0x58 -> :sswitch_15
        0x62 -> :sswitch_14
        0x68 -> :sswitch_13
        0x70 -> :sswitch_12
        0x78 -> :sswitch_11
        0x80 -> :sswitch_10
        0x88 -> :sswitch_f
        0x90 -> :sswitch_e
        0x9a -> :sswitch_d
        0xa0 -> :sswitch_c
        0xaa -> :sswitch_b
        0xb0 -> :sswitch_a
        0xb8 -> :sswitch_9
        0xc0 -> :sswitch_8
        0xc8 -> :sswitch_7
        0xd2 -> :sswitch_6
        0xda -> :sswitch_5
        0xe2 -> :sswitch_4
        0xea -> :sswitch_3
        0xf0 -> :sswitch_2
        0xf8 -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/wufan/user/service/protobuf/UserInfo$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/UserInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/user/service/protobuf/UserInfo$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->avatarSrc_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1002(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->avatarSrc_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1102(Lcom/wufan/user/service/protobuf/UserInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gender_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1202(Lcom/wufan/user/service/protobuf/UserInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->level_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1302(Lcom/wufan/user/service/protobuf/UserInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->exp_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1400(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->mobile_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1402(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->mobile_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1502(Lcom/wufan/user/service/protobuf/UserInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->surplusExp_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1600(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->appleId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1602(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->appleId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1702(Lcom/wufan/user/service/protobuf/UserInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->accountType_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1802(Lcom/wufan/user/service/protobuf/UserInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->vipLevel_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1902(Lcom/wufan/user/service/protobuf/UserInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->sVIPLevel_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$2002(Lcom/wufan/user/service/protobuf/UserInfo;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->vipExpTime_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$2102(Lcom/wufan/user/service/protobuf/UserInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->liveTotalCharm_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2202(Lcom/wufan/user/service/protobuf/UserInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isAnchor_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2302(Lcom/wufan/user/service/protobuf/UserInfo;Lcom/wufan/user/service/protobuf/MemberTitleInfo;)Lcom/wufan/user/service/protobuf/MemberTitleInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2402(Lcom/wufan/user/service/protobuf/UserInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isRealName_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2500(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->payTopTip_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2502(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->payTopTip_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2602(Lcom/wufan/user/service/protobuf/UserInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isBindWb_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2702(Lcom/wufan/user/service/protobuf/UserInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isBindWx_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2802(Lcom/wufan/user/service/protobuf/UserInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isBindQq_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2902(Lcom/wufan/user/service/protobuf/UserInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->vipGame_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3000(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->token_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3002(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->token_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3100(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->secretKey_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3102(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->secretKey_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3200(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3202(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3302(Lcom/wufan/user/service/protobuf/UserInfo;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->memberTime_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$3402(Lcom/wufan/user/service/protobuf/UserInfo;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameTime_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$3502(Lcom/wufan/user/service/protobuf/UserInfo;Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/wufan/user/service/protobuf/NewMemberInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3602(Lcom/wufan/user/service/protobuf/UserInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->bitField0_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3700()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$3800(Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3900()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$4000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$402(Lcom/wufan/user/service/protobuf/UserInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->uid_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$4100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->account_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->account_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$600(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->nickname_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->nickname_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$702(Lcom/wufan/user/service/protobuf/UserInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->pwdSetUp_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$802(Lcom/wufan/user/service/protobuf/UserInfo;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->papaMoney_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$902(Lcom/wufan/user/service/protobuf/UserInfo;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->registerTime_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/c;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/UserInfo;

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/UserInfo;

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->mergeFrom(Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/UserInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/UserInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/UserInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/UserInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/UserInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/UserInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/UserInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/UserInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/UserInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/UserInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/UserInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/UserInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/UserInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    check-cast p1, Lcom/wufan/user/service/protobuf/UserInfo;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    return v3

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    return v3

    .line 43
    :cond_3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_4

    .line 56
    .line 57
    return v3

    .line 58
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getPwdSetUp()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getPwdSetUp()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eq v1, v2, :cond_5

    .line 67
    .line 68
    return v3

    .line 69
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    .line 74
    .line 75
    .line 76
    move-result-wide v4

    .line 77
    cmp-long v6, v1, v4

    .line 78
    .line 79
    if-eqz v6, :cond_6

    .line 80
    .line 81
    return v3

    .line 82
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getRegisterTime()J

    .line 83
    .line 84
    .line 85
    move-result-wide v1

    .line 86
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getRegisterTime()J

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    cmp-long v6, v1, v4

    .line 91
    .line 92
    if-eqz v6, :cond_7

    .line 93
    .line 94
    return v3

    .line 95
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_8

    .line 108
    .line 109
    return v3

    .line 110
    :cond_8
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getGender()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getGender()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eq v1, v2, :cond_9

    .line 119
    .line 120
    return v3

    .line 121
    :cond_9
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getLevel()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getLevel()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eq v1, v2, :cond_a

    .line 130
    .line 131
    return v3

    .line 132
    :cond_a
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getExp()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getExp()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eq v1, v2, :cond_b

    .line 141
    .line 142
    return v3

    .line 143
    :cond_b
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_c

    .line 156
    .line 157
    return v3

    .line 158
    :cond_c
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSurplusExp()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getSurplusExp()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eq v1, v2, :cond_d

    .line 167
    .line 168
    return v3

    .line 169
    :cond_d
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAppleId()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAppleId()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_e

    .line 182
    .line 183
    return v3

    .line 184
    :cond_e
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eq v1, v2, :cond_f

    .line 193
    .line 194
    return v3

    .line 195
    :cond_f
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipLevel()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipLevel()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eq v1, v2, :cond_10

    .line 204
    .line 205
    return v3

    .line 206
    :cond_10
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSVIPLevel()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getSVIPLevel()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-eq v1, v2, :cond_11

    .line 215
    .line 216
    return v3

    .line 217
    :cond_11
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipExpTime()J

    .line 218
    .line 219
    .line 220
    move-result-wide v1

    .line 221
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipExpTime()J

    .line 222
    .line 223
    .line 224
    move-result-wide v4

    .line 225
    cmp-long v6, v1, v4

    .line 226
    .line 227
    if-eqz v6, :cond_12

    .line 228
    .line 229
    return v3

    .line 230
    :cond_12
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getLiveTotalCharm()I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getLiveTotalCharm()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eq v1, v2, :cond_13

    .line 239
    .line 240
    return v3

    .line 241
    :cond_13
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsAnchor()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsAnchor()I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-eq v1, v2, :cond_14

    .line 250
    .line 251
    return v3

    .line 252
    :cond_14
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->hasMemberTitle()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->hasMemberTitle()Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eq v1, v2, :cond_15

    .line 261
    .line 262
    return v3

    .line 263
    :cond_15
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->hasMemberTitle()Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_16

    .line 268
    .line 269
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-nez v1, :cond_16

    .line 282
    .line 283
    return v3

    .line 284
    :cond_16
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsRealName()I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsRealName()I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eq v1, v2, :cond_17

    .line 293
    .line 294
    return v3

    .line 295
    :cond_17
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getPayTopTip()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getPayTopTip()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-nez v1, :cond_18

    .line 308
    .line 309
    return v3

    .line 310
    :cond_18
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindWb()I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindWb()I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-eq v1, v2, :cond_19

    .line 319
    .line 320
    return v3

    .line 321
    :cond_19
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindWx()I

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindWx()I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-eq v1, v2, :cond_1a

    .line 330
    .line 331
    return v3

    .line 332
    :cond_1a
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindQq()I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindQq()I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-eq v1, v2, :cond_1b

    .line 341
    .line 342
    return v3

    .line 343
    :cond_1b
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipGame()I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipGame()I

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    if-eq v1, v2, :cond_1c

    .line 352
    .line 353
    return v3

    .line 354
    :cond_1c
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-nez v1, :cond_1d

    .line 367
    .line 368
    return v3

    .line 369
    :cond_1d
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-nez v1, :cond_1e

    .line 382
    .line 383
    return v3

    .line 384
    :cond_1e
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getGameListPermissionList()Ljava/util/List;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getGameListPermissionList()Ljava/util/List;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    if-nez v1, :cond_1f

    .line 397
    .line 398
    return v3

    .line 399
    :cond_1f
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTime()J

    .line 400
    .line 401
    .line 402
    move-result-wide v1

    .line 403
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTime()J

    .line 404
    .line 405
    .line 406
    move-result-wide v4

    .line 407
    cmp-long v6, v1, v4

    .line 408
    .line 409
    if-eqz v6, :cond_20

    .line 410
    .line 411
    return v3

    .line 412
    :cond_20
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getGameTime()J

    .line 413
    .line 414
    .line 415
    move-result-wide v1

    .line 416
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getGameTime()J

    .line 417
    .line 418
    .line 419
    move-result-wide v4

    .line 420
    cmp-long v6, v1, v4

    .line 421
    .line 422
    if-eqz v6, :cond_21

    .line 423
    .line 424
    return v3

    .line 425
    :cond_21
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->hasNewMemberInfo()Z

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->hasNewMemberInfo()Z

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    if-eq v1, v2, :cond_22

    .line 434
    .line 435
    return v3

    .line 436
    :cond_22
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->hasNewMemberInfo()Z

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    if-eqz v1, :cond_23

    .line 441
    .line 442
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    if-nez v1, :cond_23

    .line 455
    .line 456
    return v3

    .line 457
    :cond_23
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 458
    .line 459
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 460
    .line 461
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result p1

    .line 465
    if-nez p1, :cond_24

    .line 466
    .line 467
    return v3

    .line 468
    :cond_24
    return v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->account_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->account_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->account_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->account_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAccountType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->accountType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAppleId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->appleId_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->appleId_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAppleIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->appleId_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->appleId_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAvatarSrc()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->avatarSrc_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->avatarSrc_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAvatarSrcBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->avatarSrc_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->avatarSrc_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/UserInfo;

    return-object v0
.end method

.method public getExp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->exp_:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameListPermission(I)Lcom/wufan/user/service/protobuf/GameListPermission;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/wufan/user/service/protobuf/GameListPermission;

    .line 8
    .line 9
    return-object p1
.end method

.method public getGameListPermissionCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getGameListPermissionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/GameListPermission;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameListPermissionOrBuilder(I)Lcom/wufan/user/service/protobuf/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/wufan/user/service/protobuf/a;

    .line 8
    .line 9
    return-object p1
.end method

.method public getGameListPermissionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/user/service/protobuf/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameTime_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGender()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gender_:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsAnchor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isAnchor_:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsBindQq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isBindQq_:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsBindWb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isBindWb_:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsBindWx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isBindWx_:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsRealName()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->level_:I

    .line 2
    .line 3
    return v0
.end method

.method public getLiveTotalCharm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->liveTotalCharm_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMemberTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->memberTime_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getMemberTitleOrBuilder()Lcom/wufan/user/service/protobuf/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->mobile_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->mobile_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getMobileBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->mobile_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->mobile_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getNewMemberInfoOrBuilder()Lcom/wufan/user/service/protobuf/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->nickname_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->nickname_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->nickname_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->nickname_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getPapaMoney()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->papaMoney_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/UserInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayTopTip()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->payTopTip_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->payTopTip_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getPayTopTipBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->payTopTip_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->payTopTip_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getPwdSetUp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->pwdSetUp_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRegisterTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->registerTime_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSVIPLevel()I
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    return v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->secretKey_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->secretKey_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSecretKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->secretKey_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->secretKey_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->uid_:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountBytes()Lcom/google/protobuf/ByteString;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    iget-object v3, p0, Lcom/wufan/user/service/protobuf/UserInfo;->account_:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    add-int/2addr v0, v2

    .line 38
    :cond_2
    iget v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->pwdSetUp_:I

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    const/4 v3, 0x3

    .line 43
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    add-int/2addr v0, v2

    .line 48
    :cond_3
    iget-wide v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->papaMoney_:J

    .line 49
    .line 50
    const-wide/16 v4, 0x0

    .line 51
    .line 52
    cmp-long v6, v2, v4

    .line 53
    .line 54
    if-eqz v6, :cond_4

    .line 55
    .line 56
    const/4 v6, 0x4

    .line 57
    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    add-int/2addr v0, v2

    .line 62
    :cond_4
    iget-wide v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->registerTime_:J

    .line 63
    .line 64
    cmp-long v6, v2, v4

    .line 65
    .line 66
    if-eqz v6, :cond_5

    .line 67
    .line 68
    const/4 v6, 0x5

    .line 69
    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    add-int/2addr v0, v2

    .line 74
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrcBytes()Lcom/google/protobuf/ByteString;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_6

    .line 83
    .line 84
    const/4 v2, 0x6

    .line 85
    iget-object v3, p0, Lcom/wufan/user/service/protobuf/UserInfo;->avatarSrc_:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    add-int/2addr v0, v2

    .line 92
    :cond_6
    iget v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gender_:I

    .line 93
    .line 94
    if-eqz v2, :cond_7

    .line 95
    .line 96
    const/4 v3, 0x7

    .line 97
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    add-int/2addr v0, v2

    .line 102
    :cond_7
    iget v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->level_:I

    .line 103
    .line 104
    if-eqz v2, :cond_8

    .line 105
    .line 106
    const/16 v3, 0x8

    .line 107
    .line 108
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    add-int/2addr v0, v2

    .line 113
    :cond_8
    iget v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->exp_:I

    .line 114
    .line 115
    if-eqz v2, :cond_9

    .line 116
    .line 117
    const/16 v3, 0x9

    .line 118
    .line 119
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    add-int/2addr v0, v2

    .line 124
    :cond_9
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobileBytes()Lcom/google/protobuf/ByteString;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_a

    .line 133
    .line 134
    const/16 v2, 0xa

    .line 135
    .line 136
    iget-object v3, p0, Lcom/wufan/user/service/protobuf/UserInfo;->mobile_:Ljava/lang/Object;

    .line 137
    .line 138
    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    add-int/2addr v0, v2

    .line 143
    :cond_a
    iget v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->surplusExp_:I

    .line 144
    .line 145
    if-eqz v2, :cond_b

    .line 146
    .line 147
    const/16 v3, 0xb

    .line 148
    .line 149
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    add-int/2addr v0, v2

    .line 154
    :cond_b
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAppleIdBytes()Lcom/google/protobuf/ByteString;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-nez v2, :cond_c

    .line 163
    .line 164
    const/16 v2, 0xc

    .line 165
    .line 166
    iget-object v3, p0, Lcom/wufan/user/service/protobuf/UserInfo;->appleId_:Ljava/lang/Object;

    .line 167
    .line 168
    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    add-int/2addr v0, v2

    .line 173
    :cond_c
    iget v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->accountType_:I

    .line 174
    .line 175
    if-eqz v2, :cond_d

    .line 176
    .line 177
    const/16 v3, 0xd

    .line 178
    .line 179
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    add-int/2addr v0, v2

    .line 184
    :cond_d
    iget v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->vipLevel_:I

    .line 185
    .line 186
    if-eqz v2, :cond_e

    .line 187
    .line 188
    const/16 v3, 0xe

    .line 189
    .line 190
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    add-int/2addr v0, v2

    .line 195
    :cond_e
    iget v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->sVIPLevel_:I

    .line 196
    .line 197
    if-eqz v2, :cond_f

    .line 198
    .line 199
    const/16 v3, 0xf

    .line 200
    .line 201
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    add-int/2addr v0, v2

    .line 206
    :cond_f
    iget-wide v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->vipExpTime_:J

    .line 207
    .line 208
    cmp-long v6, v2, v4

    .line 209
    .line 210
    if-eqz v6, :cond_10

    .line 211
    .line 212
    const/16 v6, 0x10

    .line 213
    .line 214
    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    add-int/2addr v0, v2

    .line 219
    :cond_10
    iget v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->liveTotalCharm_:I

    .line 220
    .line 221
    if-eqz v2, :cond_11

    .line 222
    .line 223
    const/16 v3, 0x11

    .line 224
    .line 225
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    add-int/2addr v0, v2

    .line 230
    :cond_11
    iget v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isAnchor_:I

    .line 231
    .line 232
    if-eqz v2, :cond_12

    .line 233
    .line 234
    const/16 v3, 0x12

    .line 235
    .line 236
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    add-int/2addr v0, v2

    .line 241
    :cond_12
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 242
    .line 243
    if-eqz v2, :cond_13

    .line 244
    .line 245
    const/16 v2, 0x13

    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    add-int/2addr v0, v2

    .line 256
    :cond_13
    iget v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isRealName_:I

    .line 257
    .line 258
    if-eqz v2, :cond_14

    .line 259
    .line 260
    const/16 v3, 0x14

    .line 261
    .line 262
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    add-int/2addr v0, v2

    .line 267
    :cond_14
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getPayTopTipBytes()Lcom/google/protobuf/ByteString;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-nez v2, :cond_15

    .line 276
    .line 277
    const/16 v2, 0x15

    .line 278
    .line 279
    iget-object v3, p0, Lcom/wufan/user/service/protobuf/UserInfo;->payTopTip_:Ljava/lang/Object;

    .line 280
    .line 281
    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    add-int/2addr v0, v2

    .line 286
    :cond_15
    iget v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isBindWb_:I

    .line 287
    .line 288
    if-eqz v2, :cond_16

    .line 289
    .line 290
    const/16 v3, 0x16

    .line 291
    .line 292
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    add-int/2addr v0, v2

    .line 297
    :cond_16
    iget v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isBindWx_:I

    .line 298
    .line 299
    if-eqz v2, :cond_17

    .line 300
    .line 301
    const/16 v3, 0x17

    .line 302
    .line 303
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    add-int/2addr v0, v2

    .line 308
    :cond_17
    iget v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isBindQq_:I

    .line 309
    .line 310
    if-eqz v2, :cond_18

    .line 311
    .line 312
    const/16 v3, 0x18

    .line 313
    .line 314
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    add-int/2addr v0, v2

    .line 319
    :cond_18
    iget v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->vipGame_:I

    .line 320
    .line 321
    if-eqz v2, :cond_19

    .line 322
    .line 323
    const/16 v3, 0x19

    .line 324
    .line 325
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    add-int/2addr v0, v2

    .line 330
    :cond_19
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getTokenBytes()Lcom/google/protobuf/ByteString;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-nez v2, :cond_1a

    .line 339
    .line 340
    const/16 v2, 0x1a

    .line 341
    .line 342
    iget-object v3, p0, Lcom/wufan/user/service/protobuf/UserInfo;->token_:Ljava/lang/Object;

    .line 343
    .line 344
    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    add-int/2addr v0, v2

    .line 349
    :cond_1a
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKeyBytes()Lcom/google/protobuf/ByteString;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-nez v2, :cond_1b

    .line 358
    .line 359
    const/16 v2, 0x1b

    .line 360
    .line 361
    iget-object v3, p0, Lcom/wufan/user/service/protobuf/UserInfo;->secretKey_:Ljava/lang/Object;

    .line 362
    .line 363
    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    add-int/2addr v0, v2

    .line 368
    :cond_1b
    :goto_1
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    .line 369
    .line 370
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-ge v1, v2, :cond_1c

    .line 375
    .line 376
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    .line 377
    .line 378
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 383
    .line 384
    const/16 v3, 0x1c

    .line 385
    .line 386
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    add-int/2addr v0, v2

    .line 391
    add-int/lit8 v1, v1, 0x1

    .line 392
    .line 393
    goto :goto_1

    .line 394
    :cond_1c
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-nez v1, :cond_1d

    .line 403
    .line 404
    const/16 v1, 0x1d

    .line 405
    .line 406
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/UserInfo;->nickname_:Ljava/lang/Object;

    .line 407
    .line 408
    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    add-int/2addr v0, v1

    .line 413
    :cond_1d
    iget-wide v1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->memberTime_:J

    .line 414
    .line 415
    cmp-long v3, v1, v4

    .line 416
    .line 417
    if-eqz v3, :cond_1e

    .line 418
    .line 419
    const/16 v3, 0x1e

    .line 420
    .line 421
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    add-int/2addr v0, v1

    .line 426
    :cond_1e
    iget-wide v1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameTime_:J

    .line 427
    .line 428
    cmp-long v3, v1, v4

    .line 429
    .line 430
    if-eqz v3, :cond_1f

    .line 431
    .line 432
    const/16 v3, 0x1f

    .line 433
    .line 434
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    add-int/2addr v0, v1

    .line 439
    :cond_1f
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 440
    .line 441
    if-eqz v1, :cond_20

    .line 442
    .line 443
    const/16 v1, 0x20

    .line 444
    .line 445
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    add-int/2addr v0, v1

    .line 454
    :cond_20
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 455
    .line 456
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    add-int/2addr v0, v1

    .line 461
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 462
    .line 463
    return v0
.end method

.method public getSurplusExp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->surplusExp_:I

    .line 2
    .line 3
    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->token_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->token_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->token_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->token_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->uid_:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVipExpTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->vipExpTime_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVipGame()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->vipGame_:I

    .line 2
    .line 3
    return v0
.end method

.method public getVipLevel()I
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    return v0
.end method

.method public hasMemberTitle()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasNewMemberInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x30b

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    mul-int/lit8 v1, v1, 0x25

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    mul-int/lit8 v1, v1, 0x35

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/2addr v1, v0

    .line 28
    mul-int/lit8 v1, v1, 0x25

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x2

    .line 31
    .line 32
    mul-int/lit8 v1, v1, 0x35

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v1, v0

    .line 43
    mul-int/lit8 v1, v1, 0x25

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1d

    .line 46
    .line 47
    mul-int/lit8 v1, v1, 0x35

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/2addr v1, v0

    .line 58
    mul-int/lit8 v1, v1, 0x25

    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x3

    .line 61
    .line 62
    mul-int/lit8 v1, v1, 0x35

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getPwdSetUp()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int/2addr v1, v0

    .line 69
    mul-int/lit8 v1, v1, 0x25

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x4

    .line 72
    .line 73
    mul-int/lit8 v1, v1, 0x35

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    add-int/2addr v1, v0

    .line 84
    mul-int/lit8 v1, v1, 0x25

    .line 85
    .line 86
    add-int/lit8 v1, v1, 0x5

    .line 87
    .line 88
    mul-int/lit8 v1, v1, 0x35

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getRegisterTime()J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    add-int/2addr v1, v0

    .line 99
    mul-int/lit8 v1, v1, 0x25

    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x6

    .line 102
    .line 103
    mul-int/lit8 v1, v1, 0x35

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    add-int/2addr v1, v0

    .line 114
    mul-int/lit8 v1, v1, 0x25

    .line 115
    .line 116
    add-int/lit8 v1, v1, 0x7

    .line 117
    .line 118
    mul-int/lit8 v1, v1, 0x35

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getGender()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    add-int/2addr v1, v0

    .line 125
    mul-int/lit8 v1, v1, 0x25

    .line 126
    .line 127
    add-int/lit8 v1, v1, 0x8

    .line 128
    .line 129
    mul-int/lit8 v1, v1, 0x35

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getLevel()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    add-int/2addr v1, v0

    .line 136
    mul-int/lit8 v1, v1, 0x25

    .line 137
    .line 138
    add-int/lit8 v1, v1, 0x9

    .line 139
    .line 140
    mul-int/lit8 v1, v1, 0x35

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getExp()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    add-int/2addr v1, v0

    .line 147
    mul-int/lit8 v1, v1, 0x25

    .line 148
    .line 149
    add-int/lit8 v1, v1, 0xa

    .line 150
    .line 151
    mul-int/lit8 v1, v1, 0x35

    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    add-int/2addr v1, v0

    .line 162
    mul-int/lit8 v1, v1, 0x25

    .line 163
    .line 164
    add-int/lit8 v1, v1, 0xb

    .line 165
    .line 166
    mul-int/lit8 v1, v1, 0x35

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSurplusExp()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    add-int/2addr v1, v0

    .line 173
    mul-int/lit8 v1, v1, 0x25

    .line 174
    .line 175
    add-int/lit8 v1, v1, 0xc

    .line 176
    .line 177
    mul-int/lit8 v1, v1, 0x35

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAppleId()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    add-int/2addr v1, v0

    .line 188
    mul-int/lit8 v1, v1, 0x25

    .line 189
    .line 190
    add-int/lit8 v1, v1, 0xd

    .line 191
    .line 192
    mul-int/lit8 v1, v1, 0x35

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    add-int/2addr v1, v0

    .line 199
    mul-int/lit8 v1, v1, 0x25

    .line 200
    .line 201
    add-int/lit8 v1, v1, 0xe

    .line 202
    .line 203
    mul-int/lit8 v1, v1, 0x35

    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipLevel()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    add-int/2addr v1, v0

    .line 210
    mul-int/lit8 v1, v1, 0x25

    .line 211
    .line 212
    add-int/lit8 v1, v1, 0xf

    .line 213
    .line 214
    mul-int/lit8 v1, v1, 0x35

    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSVIPLevel()I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    add-int/2addr v1, v0

    .line 221
    mul-int/lit8 v1, v1, 0x25

    .line 222
    .line 223
    add-int/lit8 v1, v1, 0x10

    .line 224
    .line 225
    mul-int/lit8 v1, v1, 0x35

    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipExpTime()J

    .line 228
    .line 229
    .line 230
    move-result-wide v2

    .line 231
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    add-int/2addr v1, v0

    .line 236
    mul-int/lit8 v1, v1, 0x25

    .line 237
    .line 238
    add-int/lit8 v1, v1, 0x11

    .line 239
    .line 240
    mul-int/lit8 v1, v1, 0x35

    .line 241
    .line 242
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getLiveTotalCharm()I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    add-int/2addr v1, v0

    .line 247
    mul-int/lit8 v1, v1, 0x25

    .line 248
    .line 249
    add-int/lit8 v1, v1, 0x12

    .line 250
    .line 251
    mul-int/lit8 v1, v1, 0x35

    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsAnchor()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    add-int/2addr v1, v0

    .line 258
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->hasMemberTitle()Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-eqz v0, :cond_1

    .line 263
    .line 264
    mul-int/lit8 v1, v1, 0x25

    .line 265
    .line 266
    add-int/lit8 v1, v1, 0x13

    .line 267
    .line 268
    mul-int/lit8 v1, v1, 0x35

    .line 269
    .line 270
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->hashCode()I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    add-int/2addr v1, v0

    .line 279
    :cond_1
    mul-int/lit8 v1, v1, 0x25

    .line 280
    .line 281
    add-int/lit8 v1, v1, 0x14

    .line 282
    .line 283
    mul-int/lit8 v1, v1, 0x35

    .line 284
    .line 285
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsRealName()I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    add-int/2addr v1, v0

    .line 290
    mul-int/lit8 v1, v1, 0x25

    .line 291
    .line 292
    add-int/lit8 v1, v1, 0x15

    .line 293
    .line 294
    mul-int/lit8 v1, v1, 0x35

    .line 295
    .line 296
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getPayTopTip()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    add-int/2addr v1, v0

    .line 305
    mul-int/lit8 v1, v1, 0x25

    .line 306
    .line 307
    add-int/lit8 v1, v1, 0x16

    .line 308
    .line 309
    mul-int/lit8 v1, v1, 0x35

    .line 310
    .line 311
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindWb()I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    add-int/2addr v1, v0

    .line 316
    mul-int/lit8 v1, v1, 0x25

    .line 317
    .line 318
    add-int/lit8 v1, v1, 0x17

    .line 319
    .line 320
    mul-int/lit8 v1, v1, 0x35

    .line 321
    .line 322
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindWx()I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    add-int/2addr v1, v0

    .line 327
    mul-int/lit8 v1, v1, 0x25

    .line 328
    .line 329
    add-int/lit8 v1, v1, 0x18

    .line 330
    .line 331
    mul-int/lit8 v1, v1, 0x35

    .line 332
    .line 333
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindQq()I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    add-int/2addr v1, v0

    .line 338
    mul-int/lit8 v1, v1, 0x25

    .line 339
    .line 340
    add-int/lit8 v1, v1, 0x19

    .line 341
    .line 342
    mul-int/lit8 v1, v1, 0x35

    .line 343
    .line 344
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipGame()I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    add-int/2addr v1, v0

    .line 349
    mul-int/lit8 v1, v1, 0x25

    .line 350
    .line 351
    add-int/lit8 v1, v1, 0x1a

    .line 352
    .line 353
    mul-int/lit8 v1, v1, 0x35

    .line 354
    .line 355
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    add-int/2addr v1, v0

    .line 364
    mul-int/lit8 v1, v1, 0x25

    .line 365
    .line 366
    add-int/lit8 v1, v1, 0x1b

    .line 367
    .line 368
    mul-int/lit8 v1, v1, 0x35

    .line 369
    .line 370
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    add-int/2addr v1, v0

    .line 379
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getGameListPermissionCount()I

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    if-lez v0, :cond_2

    .line 384
    .line 385
    mul-int/lit8 v1, v1, 0x25

    .line 386
    .line 387
    add-int/lit8 v1, v1, 0x1c

    .line 388
    .line 389
    mul-int/lit8 v1, v1, 0x35

    .line 390
    .line 391
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getGameListPermissionList()Ljava/util/List;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    add-int/2addr v1, v0

    .line 400
    :cond_2
    mul-int/lit8 v1, v1, 0x25

    .line 401
    .line 402
    add-int/lit8 v1, v1, 0x1e

    .line 403
    .line 404
    mul-int/lit8 v1, v1, 0x35

    .line 405
    .line 406
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTime()J

    .line 407
    .line 408
    .line 409
    move-result-wide v2

    .line 410
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    add-int/2addr v1, v0

    .line 415
    mul-int/lit8 v1, v1, 0x25

    .line 416
    .line 417
    add-int/lit8 v1, v1, 0x1f

    .line 418
    .line 419
    mul-int/lit8 v1, v1, 0x35

    .line 420
    .line 421
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getGameTime()J

    .line 422
    .line 423
    .line 424
    move-result-wide v2

    .line 425
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    add-int/2addr v1, v0

    .line 430
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->hasNewMemberInfo()Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-eqz v0, :cond_3

    .line 435
    .line 436
    mul-int/lit8 v1, v1, 0x25

    .line 437
    .line 438
    add-int/lit8 v1, v1, 0x20

    .line 439
    .line 440
    mul-int/lit8 v1, v1, 0x35

    .line 441
    .line 442
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->hashCode()I

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    add-int/2addr v1, v0

    .line 451
    :cond_3
    mul-int/lit8 v1, v1, 0x1d

    .line 452
    .line 453
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 454
    .line 455
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    add-int/2addr v1, v0

    .line 460
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 461
    .line 462
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/c;->f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/wufan/user/service/protobuf/UserInfo;

    .line 4
    .line 5
    const-class v2, Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->memoizedIsInitialized:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_1
    iput-byte v1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->newBuilderForType()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "parent"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->newBuilderForType()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->newBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/wufan/user/service/protobuf/UserInfo$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/user/service/protobuf/UserInfo$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/UserInfo;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/UserInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wufan/user/service/protobuf/UserInfo$b;

    invoke-direct {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;-><init>(Lcom/wufan/user/service/protobuf/UserInfo$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wufan/user/service/protobuf/UserInfo$b;

    invoke-direct {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;-><init>(Lcom/wufan/user/service/protobuf/UserInfo$a;)V

    invoke-virtual {v0, p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->mergeFrom(Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->uid_:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountBytes()Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->account_:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->pwdSetUp_:I

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->papaMoney_:J

    .line 34
    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    cmp-long v4, v0, v2

    .line 38
    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    const/4 v4, 0x4

    .line 42
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 43
    .line 44
    .line 45
    :cond_3
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->registerTime_:J

    .line 46
    .line 47
    cmp-long v4, v0, v2

    .line 48
    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    const/4 v4, 0x5

    .line 52
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 53
    .line 54
    .line 55
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrcBytes()Lcom/google/protobuf/ByteString;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_5

    .line 64
    .line 65
    const/4 v0, 0x6

    .line 66
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->avatarSrc_:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gender_:I

    .line 72
    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    const/4 v1, 0x7

    .line 76
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 77
    .line 78
    .line 79
    :cond_6
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->level_:I

    .line 80
    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    const/16 v1, 0x8

    .line 84
    .line 85
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 86
    .line 87
    .line 88
    :cond_7
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->exp_:I

    .line 89
    .line 90
    if-eqz v0, :cond_8

    .line 91
    .line 92
    const/16 v1, 0x9

    .line 93
    .line 94
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 95
    .line 96
    .line 97
    :cond_8
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobileBytes()Lcom/google/protobuf/ByteString;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_9

    .line 106
    .line 107
    const/16 v0, 0xa

    .line 108
    .line 109
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->mobile_:Ljava/lang/Object;

    .line 110
    .line 111
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_9
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->surplusExp_:I

    .line 115
    .line 116
    if-eqz v0, :cond_a

    .line 117
    .line 118
    const/16 v1, 0xb

    .line 119
    .line 120
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 121
    .line 122
    .line 123
    :cond_a
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAppleIdBytes()Lcom/google/protobuf/ByteString;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_b

    .line 132
    .line 133
    const/16 v0, 0xc

    .line 134
    .line 135
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->appleId_:Ljava/lang/Object;

    .line 136
    .line 137
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_b
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->accountType_:I

    .line 141
    .line 142
    if-eqz v0, :cond_c

    .line 143
    .line 144
    const/16 v1, 0xd

    .line 145
    .line 146
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 147
    .line 148
    .line 149
    :cond_c
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->vipLevel_:I

    .line 150
    .line 151
    if-eqz v0, :cond_d

    .line 152
    .line 153
    const/16 v1, 0xe

    .line 154
    .line 155
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 156
    .line 157
    .line 158
    :cond_d
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->sVIPLevel_:I

    .line 159
    .line 160
    if-eqz v0, :cond_e

    .line 161
    .line 162
    const/16 v1, 0xf

    .line 163
    .line 164
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 165
    .line 166
    .line 167
    :cond_e
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->vipExpTime_:J

    .line 168
    .line 169
    cmp-long v4, v0, v2

    .line 170
    .line 171
    if-eqz v4, :cond_f

    .line 172
    .line 173
    const/16 v4, 0x10

    .line 174
    .line 175
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 176
    .line 177
    .line 178
    :cond_f
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->liveTotalCharm_:I

    .line 179
    .line 180
    if-eqz v0, :cond_10

    .line 181
    .line 182
    const/16 v1, 0x11

    .line 183
    .line 184
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 185
    .line 186
    .line 187
    :cond_10
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isAnchor_:I

    .line 188
    .line 189
    if-eqz v0, :cond_11

    .line 190
    .line 191
    const/16 v1, 0x12

    .line 192
    .line 193
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 194
    .line 195
    .line 196
    :cond_11
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 197
    .line 198
    if-eqz v0, :cond_12

    .line 199
    .line 200
    const/16 v0, 0x13

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 207
    .line 208
    .line 209
    :cond_12
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isRealName_:I

    .line 210
    .line 211
    if-eqz v0, :cond_13

    .line 212
    .line 213
    const/16 v1, 0x14

    .line 214
    .line 215
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 216
    .line 217
    .line 218
    :cond_13
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getPayTopTipBytes()Lcom/google/protobuf/ByteString;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-nez v0, :cond_14

    .line 227
    .line 228
    const/16 v0, 0x15

    .line 229
    .line 230
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->payTopTip_:Ljava/lang/Object;

    .line 231
    .line 232
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    :cond_14
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isBindWb_:I

    .line 236
    .line 237
    if-eqz v0, :cond_15

    .line 238
    .line 239
    const/16 v1, 0x16

    .line 240
    .line 241
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 242
    .line 243
    .line 244
    :cond_15
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isBindWx_:I

    .line 245
    .line 246
    if-eqz v0, :cond_16

    .line 247
    .line 248
    const/16 v1, 0x17

    .line 249
    .line 250
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 251
    .line 252
    .line 253
    :cond_16
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->isBindQq_:I

    .line 254
    .line 255
    if-eqz v0, :cond_17

    .line 256
    .line 257
    const/16 v1, 0x18

    .line 258
    .line 259
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 260
    .line 261
    .line 262
    :cond_17
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->vipGame_:I

    .line 263
    .line 264
    if-eqz v0, :cond_18

    .line 265
    .line 266
    const/16 v1, 0x19

    .line 267
    .line 268
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 269
    .line 270
    .line 271
    :cond_18
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getTokenBytes()Lcom/google/protobuf/ByteString;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-nez v0, :cond_19

    .line 280
    .line 281
    const/16 v0, 0x1a

    .line 282
    .line 283
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->token_:Ljava/lang/Object;

    .line 284
    .line 285
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    :cond_19
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKeyBytes()Lcom/google/protobuf/ByteString;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-nez v0, :cond_1a

    .line 297
    .line 298
    const/16 v0, 0x1b

    .line 299
    .line 300
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->secretKey_:Ljava/lang/Object;

    .line 301
    .line 302
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    :cond_1a
    const/4 v0, 0x0

    .line 306
    :goto_0
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    .line 307
    .line 308
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    if-ge v0, v1, :cond_1b

    .line 313
    .line 314
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameListPermission_:Ljava/util/List;

    .line 315
    .line 316
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 321
    .line 322
    const/16 v4, 0x1c

    .line 323
    .line 324
    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 325
    .line 326
    .line 327
    add-int/lit8 v0, v0, 0x1

    .line 328
    .line 329
    goto :goto_0

    .line 330
    :cond_1b
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-nez v0, :cond_1c

    .line 339
    .line 340
    const/16 v0, 0x1d

    .line 341
    .line 342
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo;->nickname_:Ljava/lang/Object;

    .line 343
    .line 344
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    :cond_1c
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->memberTime_:J

    .line 348
    .line 349
    cmp-long v4, v0, v2

    .line 350
    .line 351
    if-eqz v4, :cond_1d

    .line 352
    .line 353
    const/16 v4, 0x1e

    .line 354
    .line 355
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 356
    .line 357
    .line 358
    :cond_1d
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->gameTime_:J

    .line 359
    .line 360
    cmp-long v4, v0, v2

    .line 361
    .line 362
    if-eqz v4, :cond_1e

    .line 363
    .line 364
    const/16 v2, 0x1f

    .line 365
    .line 366
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 367
    .line 368
    .line 369
    :cond_1e
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 370
    .line 371
    if-eqz v0, :cond_1f

    .line 372
    .line 373
    const/16 v0, 0x20

    .line 374
    .line 375
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 380
    .line 381
    .line 382
    :cond_1f
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 383
    .line 384
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 385
    .line 386
    .line 387
    return-void
.end method
