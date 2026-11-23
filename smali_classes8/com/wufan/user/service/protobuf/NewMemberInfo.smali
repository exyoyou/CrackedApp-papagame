.class public final Lcom/wufan/user/service/protobuf/NewMemberInfo;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/user/service/protobuf/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    }
.end annotation


# static fields
.field public static final CLOUDCOIN_FIELD_NUMBER:I = 0x2

.field public static final CLOUDDIAMOND_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/NewMemberInfo;

.field public static final ISBAOYECARD_FIELD_NUMBER:I = 0xb

.field public static final ISJISUCARD_FIELD_NUMBER:I = 0xc

.field public static final ISNEWMEMBER_FIELD_NUMBER:I = 0xf

.field public static final ISSIGNED_FIELD_NUMBER:I = 0xe

.field public static final ISVIP_FIELD_NUMBER:I = 0x3

.field public static final MONTHEXPIRETIME_FIELD_NUMBER:I = 0x5

.field public static final NEWMEMBERDAYS_FIELD_NUMBER:I = 0x10

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/NewMemberInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPNUM_FIELD_NUMBER:I = 0xd

.field public static final SEASONEXPIRETIME_FIELD_NUMBER:I = 0x6

.field public static final SHOWLABELCONTENT_FIELD_NUMBER:I = 0x9

.field public static final SHOWLABELTYPE_FIELD_NUMBER:I = 0x8

.field public static final SHOWNEWGIFT_FIELD_NUMBER:I = 0x11

.field public static final TOTALTIME_FIELD_NUMBER:I = 0x12

.field public static final VIPTIME_FIELD_NUMBER:I = 0xa

.field public static final VIPTYPE_FIELD_NUMBER:I = 0x4

.field public static final YEAREXPIRETIME_FIELD_NUMBER:I = 0x7

.field private static final serialVersionUID:J


# instance fields
.field private cloudCoin_:D

.field private cloudDiamond_:D

.field private isBaoYeCard_:Z

.field private isJiSuCard_:Z

.field private isNewMember_:Z

.field private isSigned_:Z

.field private isVip_:Z

.field private memoizedIsInitialized:B

.field private volatile monthExpireTime_:Ljava/lang/Object;

.field private newMemberDays_:I

.field private propNum_:I

.field private volatile seasonExpireTime_:Ljava/lang/Object;

.field private volatile showLabelContent_:Ljava/lang/Object;

.field private showLabelType_:I

.field private showNewGift_:Z

.field private volatile totalTime_:Ljava/lang/Object;

.field private volatile vipTime_:Ljava/lang/Object;

.field private vipType_:I

.field private volatile yearExpireTime_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 7
    .line 8
    new-instance v0, Lcom/wufan/user/service/protobuf/NewMemberInfo$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->monthExpireTime_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->seasonExpireTime_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->yearExpireTime_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showLabelContent_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->vipTime_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->totalTime_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
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

    .line 13
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;-><init>()V

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 17
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 18
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 19
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->totalTime_:Ljava/lang/Object;

    goto :goto_0

    .line 20
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showNewGift_:Z

    goto :goto_0

    .line 21
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->newMemberDays_:I

    goto :goto_0

    .line 22
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isNewMember_:Z

    goto :goto_0

    .line 23
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isSigned_:Z

    goto :goto_0

    .line 24
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->propNum_:I

    goto :goto_0

    .line 25
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isJiSuCard_:Z

    goto :goto_0

    .line 26
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isBaoYeCard_:Z

    goto :goto_0

    .line 27
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->vipTime_:Ljava/lang/Object;

    goto :goto_0

    .line 29
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 30
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showLabelContent_:Ljava/lang/Object;

    goto :goto_0

    .line 31
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showLabelType_:I

    goto :goto_0

    .line 32
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 33
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->yearExpireTime_:Ljava/lang/Object;

    goto :goto_0

    .line 34
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 35
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->seasonExpireTime_:Ljava/lang/Object;

    goto :goto_0

    .line 36
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 37
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->monthExpireTime_:Ljava/lang/Object;

    goto :goto_0

    .line 38
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->vipType_:I

    goto :goto_0

    .line 39
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isVip_:Z

    goto :goto_0

    .line 40
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->cloudCoin_:D

    goto/16 :goto_0

    .line 41
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->cloudDiamond_:D
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_12
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 42
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 43
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 44
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 46
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 47
    throw p1

    .line 48
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 49
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_12
        0x9 -> :sswitch_11
        0x11 -> :sswitch_10
        0x18 -> :sswitch_f
        0x20 -> :sswitch_e
        0x2a -> :sswitch_d
        0x32 -> :sswitch_c
        0x3a -> :sswitch_b
        0x40 -> :sswitch_a
        0x4a -> :sswitch_9
        0x52 -> :sswitch_8
        0x58 -> :sswitch_7
        0x60 -> :sswitch_6
        0x68 -> :sswitch_5
        0x70 -> :sswitch_4
        0x78 -> :sswitch_3
        0x80 -> :sswitch_2
        0x88 -> :sswitch_1
        0x92 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/wufan/user/service/protobuf/NewMemberInfo$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/NewMemberInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/user/service/protobuf/NewMemberInfo$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->yearExpireTime_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1002(Lcom/wufan/user/service/protobuf/NewMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->yearExpireTime_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1102(Lcom/wufan/user/service/protobuf/NewMemberInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showLabelType_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1200(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showLabelContent_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1202(Lcom/wufan/user/service/protobuf/NewMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showLabelContent_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1300(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->vipTime_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1302(Lcom/wufan/user/service/protobuf/NewMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->vipTime_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1402(Lcom/wufan/user/service/protobuf/NewMemberInfo;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isBaoYeCard_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1502(Lcom/wufan/user/service/protobuf/NewMemberInfo;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isJiSuCard_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1602(Lcom/wufan/user/service/protobuf/NewMemberInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->propNum_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1702(Lcom/wufan/user/service/protobuf/NewMemberInfo;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isSigned_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1802(Lcom/wufan/user/service/protobuf/NewMemberInfo;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isNewMember_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1902(Lcom/wufan/user/service/protobuf/NewMemberInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->newMemberDays_:I

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

.method static synthetic access$2002(Lcom/wufan/user/service/protobuf/NewMemberInfo;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showNewGift_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2100(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->totalTime_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2102(Lcom/wufan/user/service/protobuf/NewMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->totalTime_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2200(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2300()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$2500(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$2600(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$2700(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$2800(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$2900(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$402(Lcom/wufan/user/service/protobuf/NewMemberInfo;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->cloudDiamond_:D

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$502(Lcom/wufan/user/service/protobuf/NewMemberInfo;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->cloudCoin_:D

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$602(Lcom/wufan/user/service/protobuf/NewMemberInfo;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isVip_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$702(Lcom/wufan/user/service/protobuf/NewMemberInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->vipType_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$800(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->monthExpireTime_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$802(Lcom/wufan/user/service/protobuf/NewMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->monthExpireTime_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$900(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->seasonExpireTime_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$902(Lcom/wufan/user/service/protobuf/NewMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->seasonExpireTime_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method public static getDefaultInstance()Lcom/wufan/user/service/protobuf/NewMemberInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/c;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->toBuilder()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->toBuilder()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->mergeFrom(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/NewMemberInfo;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/NewMemberInfo;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/NewMemberInfo;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/NewMemberInfo;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/user/service/protobuf/NewMemberInfo;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/NewMemberInfo;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/NewMemberInfo;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/NewMemberInfo;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wufan/user/service/protobuf/NewMemberInfo;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/NewMemberInfo;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wufan/user/service/protobuf/NewMemberInfo;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/NewMemberInfo;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/NewMemberInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/wufan/user/service/protobuf/NewMemberInfo;

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
    check-cast p1, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getCloudDiamond()D

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getCloudDiamond()D

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    const/4 v5, 0x0

    .line 33
    cmp-long v6, v1, v3

    .line 34
    .line 35
    if-eqz v6, :cond_2

    .line 36
    .line 37
    return v5

    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getCloudCoin()D

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getCloudCoin()D

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    cmp-long v6, v1, v3

    .line 55
    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    return v5

    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsVip()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsVip()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eq v1, v2, :cond_4

    .line 68
    .line 69
    return v5

    .line 70
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipType()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipType()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eq v1, v2, :cond_5

    .line 79
    .line 80
    return v5

    .line 81
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getMonthExpireTime()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getMonthExpireTime()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_6

    .line 94
    .line 95
    return v5

    .line 96
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getSeasonExpireTime()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getSeasonExpireTime()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_7

    .line 109
    .line 110
    return v5

    .line 111
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getYearExpireTime()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getYearExpireTime()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_8

    .line 124
    .line 125
    return v5

    .line 126
    :cond_8
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowLabelType()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowLabelType()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eq v1, v2, :cond_9

    .line 135
    .line 136
    return v5

    .line 137
    :cond_9
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowLabelContent()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowLabelContent()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_a

    .line 150
    .line 151
    return v5

    .line 152
    :cond_a
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipTime()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipTime()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_b

    .line 165
    .line 166
    return v5

    .line 167
    :cond_b
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsBaoYeCard()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsBaoYeCard()Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eq v1, v2, :cond_c

    .line 176
    .line 177
    return v5

    .line 178
    :cond_c
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsJiSuCard()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsJiSuCard()Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eq v1, v2, :cond_d

    .line 187
    .line 188
    return v5

    .line 189
    :cond_d
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getPropNum()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getPropNum()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eq v1, v2, :cond_e

    .line 198
    .line 199
    return v5

    .line 200
    :cond_e
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsSigned()Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsSigned()Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eq v1, v2, :cond_f

    .line 209
    .line 210
    return v5

    .line 211
    :cond_f
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsNewMember()Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsNewMember()Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eq v1, v2, :cond_10

    .line 220
    .line 221
    return v5

    .line 222
    :cond_10
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getNewMemberDays()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getNewMemberDays()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eq v1, v2, :cond_11

    .line 231
    .line 232
    return v5

    .line 233
    :cond_11
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowNewGift()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowNewGift()Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-eq v1, v2, :cond_12

    .line 242
    .line 243
    return v5

    .line 244
    :cond_12
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getTotalTime()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getTotalTime()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-nez v1, :cond_13

    .line 257
    .line 258
    return v5

    .line 259
    :cond_13
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 260
    .line 261
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 262
    .line 263
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    if-nez p1, :cond_14

    .line 268
    .line 269
    return v5

    .line 270
    :cond_14
    return v0
.end method

.method public getCloudCoin()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->cloudCoin_:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCloudDiamond()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->cloudDiamond_:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/NewMemberInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    return-object v0
.end method

.method public getIsBaoYeCard()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isBaoYeCard_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIsJiSuCard()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isJiSuCard_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIsNewMember()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isNewMember_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIsSigned()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isSigned_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIsVip()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    return v0
.end method

.method public getMonthExpireTime()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->monthExpireTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->monthExpireTime_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getMonthExpireTimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->monthExpireTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->monthExpireTime_:Ljava/lang/Object;

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

.method public getNewMemberDays()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->newMemberDays_:I

    .line 2
    .line 3
    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/NewMemberInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPropNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->propNum_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSeasonExpireTime()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->seasonExpireTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->seasonExpireTime_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSeasonExpireTimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->seasonExpireTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->seasonExpireTime_:Ljava/lang/Object;

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
    .locals 6

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
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->cloudDiamond_:D

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    cmpl-double v5, v0, v2

    .line 13
    .line 14
    if-eqz v5, :cond_1

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    invoke-static {v5, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/2addr v4, v0

    .line 22
    :cond_1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->cloudCoin_:D

    .line 23
    .line 24
    cmpl-double v5, v0, v2

    .line 25
    .line 26
    if-eqz v5, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-static {v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v4, v0

    .line 34
    :cond_2
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isVip_:Z

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/2addr v4, v0

    .line 44
    :cond_3
    iget v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->vipType_:I

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    add-int/2addr v4, v0

    .line 54
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getMonthExpireTimeBytes()Lcom/google/protobuf/ByteString;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_5

    .line 63
    .line 64
    const/4 v0, 0x5

    .line 65
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->monthExpireTime_:Ljava/lang/Object;

    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    add-int/2addr v4, v0

    .line 72
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getSeasonExpireTimeBytes()Lcom/google/protobuf/ByteString;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_6

    .line 81
    .line 82
    const/4 v0, 0x6

    .line 83
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->seasonExpireTime_:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    add-int/2addr v4, v0

    .line 90
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getYearExpireTimeBytes()Lcom/google/protobuf/ByteString;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_7

    .line 99
    .line 100
    const/4 v0, 0x7

    .line 101
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->yearExpireTime_:Ljava/lang/Object;

    .line 102
    .line 103
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    add-int/2addr v4, v0

    .line 108
    :cond_7
    iget v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showLabelType_:I

    .line 109
    .line 110
    if-eqz v0, :cond_8

    .line 111
    .line 112
    const/16 v1, 0x8

    .line 113
    .line 114
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    add-int/2addr v4, v0

    .line 119
    :cond_8
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowLabelContentBytes()Lcom/google/protobuf/ByteString;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_9

    .line 128
    .line 129
    const/16 v0, 0x9

    .line 130
    .line 131
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showLabelContent_:Ljava/lang/Object;

    .line 132
    .line 133
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    add-int/2addr v4, v0

    .line 138
    :cond_9
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipTimeBytes()Lcom/google/protobuf/ByteString;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_a

    .line 147
    .line 148
    const/16 v0, 0xa

    .line 149
    .line 150
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->vipTime_:Ljava/lang/Object;

    .line 151
    .line 152
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    add-int/2addr v4, v0

    .line 157
    :cond_a
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isBaoYeCard_:Z

    .line 158
    .line 159
    if-eqz v0, :cond_b

    .line 160
    .line 161
    const/16 v1, 0xb

    .line 162
    .line 163
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    add-int/2addr v4, v0

    .line 168
    :cond_b
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isJiSuCard_:Z

    .line 169
    .line 170
    if-eqz v0, :cond_c

    .line 171
    .line 172
    const/16 v1, 0xc

    .line 173
    .line 174
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    add-int/2addr v4, v0

    .line 179
    :cond_c
    iget v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->propNum_:I

    .line 180
    .line 181
    if-eqz v0, :cond_d

    .line 182
    .line 183
    const/16 v1, 0xd

    .line 184
    .line 185
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    add-int/2addr v4, v0

    .line 190
    :cond_d
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isSigned_:Z

    .line 191
    .line 192
    if-eqz v0, :cond_e

    .line 193
    .line 194
    const/16 v1, 0xe

    .line 195
    .line 196
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    add-int/2addr v4, v0

    .line 201
    :cond_e
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isNewMember_:Z

    .line 202
    .line 203
    if-eqz v0, :cond_f

    .line 204
    .line 205
    const/16 v1, 0xf

    .line 206
    .line 207
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    add-int/2addr v4, v0

    .line 212
    :cond_f
    iget v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->newMemberDays_:I

    .line 213
    .line 214
    if-eqz v0, :cond_10

    .line 215
    .line 216
    const/16 v1, 0x10

    .line 217
    .line 218
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    add-int/2addr v4, v0

    .line 223
    :cond_10
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showNewGift_:Z

    .line 224
    .line 225
    if-eqz v0, :cond_11

    .line 226
    .line 227
    const/16 v1, 0x11

    .line 228
    .line 229
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    add-int/2addr v4, v0

    .line 234
    :cond_11
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getTotalTimeBytes()Lcom/google/protobuf/ByteString;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-nez v0, :cond_12

    .line 243
    .line 244
    const/16 v0, 0x12

    .line 245
    .line 246
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->totalTime_:Ljava/lang/Object;

    .line 247
    .line 248
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    add-int/2addr v4, v0

    .line 253
    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 254
    .line 255
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    add-int/2addr v4, v0

    .line 260
    iput v4, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 261
    .line 262
    return v4
.end method

.method public getShowLabelContent()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showLabelContent_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showLabelContent_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getShowLabelContentBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showLabelContent_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showLabelContent_:Ljava/lang/Object;

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

.method public getShowLabelType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showLabelType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowNewGift()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showNewGift_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getTotalTime()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->totalTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->totalTime_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getTotalTimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->totalTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->totalTime_:Ljava/lang/Object;

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

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVipTime()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->vipTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->vipTime_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getVipTimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->vipTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->vipTime_:Ljava/lang/Object;

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

.method public getVipType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->vipType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getYearExpireTime()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->yearExpireTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->yearExpireTime_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getYearExpireTimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->yearExpireTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->yearExpireTime_:Ljava/lang/Object;

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
    invoke-static {}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getCloudDiamond()D

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v1, v0

    .line 36
    mul-int/lit8 v1, v1, 0x25

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x2

    .line 39
    .line 40
    mul-int/lit8 v1, v1, 0x35

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getCloudCoin()D

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/2addr v1, v0

    .line 55
    mul-int/lit8 v1, v1, 0x25

    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x3

    .line 58
    .line 59
    mul-int/lit8 v1, v1, 0x35

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsVip()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/2addr v1, v0

    .line 70
    mul-int/lit8 v1, v1, 0x25

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x4

    .line 73
    .line 74
    mul-int/lit8 v1, v1, 0x35

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipType()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    add-int/2addr v1, v0

    .line 81
    mul-int/lit8 v1, v1, 0x25

    .line 82
    .line 83
    add-int/lit8 v1, v1, 0x5

    .line 84
    .line 85
    mul-int/lit8 v1, v1, 0x35

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getMonthExpireTime()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    add-int/2addr v1, v0

    .line 96
    mul-int/lit8 v1, v1, 0x25

    .line 97
    .line 98
    add-int/lit8 v1, v1, 0x6

    .line 99
    .line 100
    mul-int/lit8 v1, v1, 0x35

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getSeasonExpireTime()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    add-int/2addr v1, v0

    .line 111
    mul-int/lit8 v1, v1, 0x25

    .line 112
    .line 113
    add-int/lit8 v1, v1, 0x7

    .line 114
    .line 115
    mul-int/lit8 v1, v1, 0x35

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getYearExpireTime()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    add-int/2addr v1, v0

    .line 126
    mul-int/lit8 v1, v1, 0x25

    .line 127
    .line 128
    add-int/lit8 v1, v1, 0x8

    .line 129
    .line 130
    mul-int/lit8 v1, v1, 0x35

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowLabelType()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    add-int/2addr v1, v0

    .line 137
    mul-int/lit8 v1, v1, 0x25

    .line 138
    .line 139
    add-int/lit8 v1, v1, 0x9

    .line 140
    .line 141
    mul-int/lit8 v1, v1, 0x35

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowLabelContent()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    add-int/2addr v1, v0

    .line 152
    mul-int/lit8 v1, v1, 0x25

    .line 153
    .line 154
    add-int/lit8 v1, v1, 0xa

    .line 155
    .line 156
    mul-int/lit8 v1, v1, 0x35

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipTime()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    add-int/2addr v1, v0

    .line 167
    mul-int/lit8 v1, v1, 0x25

    .line 168
    .line 169
    add-int/lit8 v1, v1, 0xb

    .line 170
    .line 171
    mul-int/lit8 v1, v1, 0x35

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsBaoYeCard()Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    add-int/2addr v1, v0

    .line 182
    mul-int/lit8 v1, v1, 0x25

    .line 183
    .line 184
    add-int/lit8 v1, v1, 0xc

    .line 185
    .line 186
    mul-int/lit8 v1, v1, 0x35

    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsJiSuCard()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    add-int/2addr v1, v0

    .line 197
    mul-int/lit8 v1, v1, 0x25

    .line 198
    .line 199
    add-int/lit8 v1, v1, 0xd

    .line 200
    .line 201
    mul-int/lit8 v1, v1, 0x35

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getPropNum()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    add-int/2addr v1, v0

    .line 208
    mul-int/lit8 v1, v1, 0x25

    .line 209
    .line 210
    add-int/lit8 v1, v1, 0xe

    .line 211
    .line 212
    mul-int/lit8 v1, v1, 0x35

    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsSigned()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    add-int/2addr v1, v0

    .line 223
    mul-int/lit8 v1, v1, 0x25

    .line 224
    .line 225
    add-int/lit8 v1, v1, 0xf

    .line 226
    .line 227
    mul-int/lit8 v1, v1, 0x35

    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsNewMember()Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    add-int/2addr v1, v0

    .line 238
    mul-int/lit8 v1, v1, 0x25

    .line 239
    .line 240
    add-int/lit8 v1, v1, 0x10

    .line 241
    .line 242
    mul-int/lit8 v1, v1, 0x35

    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getNewMemberDays()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    add-int/2addr v1, v0

    .line 249
    mul-int/lit8 v1, v1, 0x25

    .line 250
    .line 251
    add-int/lit8 v1, v1, 0x11

    .line 252
    .line 253
    mul-int/lit8 v1, v1, 0x35

    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowNewGift()Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    add-int/2addr v1, v0

    .line 264
    mul-int/lit8 v1, v1, 0x25

    .line 265
    .line 266
    add-int/lit8 v1, v1, 0x12

    .line 267
    .line 268
    mul-int/lit8 v1, v1, 0x35

    .line 269
    .line 270
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getTotalTime()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    add-int/2addr v1, v0

    .line 279
    mul-int/lit8 v1, v1, 0x1d

    .line 280
    .line 281
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 282
    .line 283
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    add-int/2addr v1, v0

    .line 288
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 289
    .line 290
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/c;->h:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 4
    .line 5
    const-class v2, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    iget-byte v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->newBuilderForType()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->newBuilderForType()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->newBuilder()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    new-instance v0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/user/service/protobuf/NewMemberInfo$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->toBuilder()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->toBuilder()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    invoke-direct {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;-><init>(Lcom/wufan/user/service/protobuf/NewMemberInfo$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    invoke-direct {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;-><init>(Lcom/wufan/user/service/protobuf/NewMemberInfo$a;)V

    invoke-virtual {v0, p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->mergeFrom(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->cloudDiamond_:D

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmpl-double v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->cloudCoin_:D

    .line 14
    .line 15
    cmpl-double v4, v0, v2

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isVip_:Z

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->vipType_:I

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 37
    .line 38
    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getMonthExpireTimeBytes()Lcom/google/protobuf/ByteString;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    const/4 v0, 0x5

    .line 50
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->monthExpireTime_:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getSeasonExpireTimeBytes()Lcom/google/protobuf/ByteString;

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
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->seasonExpireTime_:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getYearExpireTimeBytes()Lcom/google/protobuf/ByteString;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_6

    .line 80
    .line 81
    const/4 v0, 0x7

    .line 82
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->yearExpireTime_:Ljava/lang/Object;

    .line 83
    .line 84
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_6
    iget v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showLabelType_:I

    .line 88
    .line 89
    if-eqz v0, :cond_7

    .line 90
    .line 91
    const/16 v1, 0x8

    .line 92
    .line 93
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 94
    .line 95
    .line 96
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowLabelContentBytes()Lcom/google/protobuf/ByteString;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_8

    .line 105
    .line 106
    const/16 v0, 0x9

    .line 107
    .line 108
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showLabelContent_:Ljava/lang/Object;

    .line 109
    .line 110
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_8
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipTimeBytes()Lcom/google/protobuf/ByteString;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_9

    .line 122
    .line 123
    const/16 v0, 0xa

    .line 124
    .line 125
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->vipTime_:Ljava/lang/Object;

    .line 126
    .line 127
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_9
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isBaoYeCard_:Z

    .line 131
    .line 132
    if-eqz v0, :cond_a

    .line 133
    .line 134
    const/16 v1, 0xb

    .line 135
    .line 136
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 137
    .line 138
    .line 139
    :cond_a
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isJiSuCard_:Z

    .line 140
    .line 141
    if-eqz v0, :cond_b

    .line 142
    .line 143
    const/16 v1, 0xc

    .line 144
    .line 145
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 146
    .line 147
    .line 148
    :cond_b
    iget v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->propNum_:I

    .line 149
    .line 150
    if-eqz v0, :cond_c

    .line 151
    .line 152
    const/16 v1, 0xd

    .line 153
    .line 154
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 155
    .line 156
    .line 157
    :cond_c
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isSigned_:Z

    .line 158
    .line 159
    if-eqz v0, :cond_d

    .line 160
    .line 161
    const/16 v1, 0xe

    .line 162
    .line 163
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 164
    .line 165
    .line 166
    :cond_d
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isNewMember_:Z

    .line 167
    .line 168
    if-eqz v0, :cond_e

    .line 169
    .line 170
    const/16 v1, 0xf

    .line 171
    .line 172
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 173
    .line 174
    .line 175
    :cond_e
    iget v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->newMemberDays_:I

    .line 176
    .line 177
    if-eqz v0, :cond_f

    .line 178
    .line 179
    const/16 v1, 0x10

    .line 180
    .line 181
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 182
    .line 183
    .line 184
    :cond_f
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->showNewGift_:Z

    .line 185
    .line 186
    if-eqz v0, :cond_10

    .line 187
    .line 188
    const/16 v1, 0x11

    .line 189
    .line 190
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 191
    .line 192
    .line 193
    :cond_10
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getTotalTimeBytes()Lcom/google/protobuf/ByteString;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_11

    .line 202
    .line 203
    const/16 v0, 0x12

    .line 204
    .line 205
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo;->totalTime_:Ljava/lang/Object;

    .line 206
    .line 207
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_11
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 211
    .line 212
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 213
    .line 214
    .line 215
    return-void
.end method
