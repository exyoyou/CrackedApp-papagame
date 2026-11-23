.class public final Lcom/papa91/battle/protocol/RoomPosition;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/battle/protocol/RoomPositionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/battle/protocol/RoomPosition$Builder;,
        Lcom/papa91/battle/protocol/RoomPosition$State;
    }
.end annotation


# static fields
.field public static final AVATAR_FIELD_NUMBER:I = 0x6

.field public static final BATTLEAREA_FIELD_NUMBER:I = 0xd

.field public static final BATTLETITLECOLOR_FIELD_NUMBER:I = 0xc

.field public static final BATTLETITLE_FIELD_NUMBER:I = 0xb

.field public static final CLOSED_FIELD_NUMBER:I = 0x1

.field public static final COPPER_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

.field public static final IGNORE_FIELD_NUMBER:I = 0xf

.field public static final KICKCOUNT_FIELD_NUMBER:I = 0xe

.field public static final NICKNAME_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERIPHERAL_FIELD_NUMBER:I = 0x9

.field public static final PHONETYPE_FIELD_NUMBER:I = 0x1f

.field public static final PINGVAL_FIELD_NUMBER:I = 0x8

.field public static final PLATFORM_FIELD_NUMBER:I = 0x10

.field public static final PROFICIENCYLEVEL_FIELD_NUMBER:I = 0x11

.field public static final STATE_FIELD_NUMBER:I = 0xa

.field public static final TITLE_FIELD_NUMBER:I = 0x4

.field public static final UID_FIELD_NUMBER:I = 0x3

.field public static final VIP_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private volatile avatar_:Ljava/lang/Object;

.field private battleArea_:I

.field private volatile battleTitleColor_:Ljava/lang/Object;

.field private volatile battleTitle_:Ljava/lang/Object;

.field private closed_:Z

.field private copper_:I

.field private volatile ignore_:Ljava/lang/Object;

.field private kickCount_:I

.field private memoizedIsInitialized:B

.field private volatile nickname_:Ljava/lang/Object;

.field private peripheral_:Z

.field private phoneType_:I

.field private pingVal_:I

.field private platform_:I

.field private proficiencyLevel_:I

.field private state_:I

.field private title_:Lcom/papa91/battle/protocol/BattleTitle;

.field private uid_:I

.field private vip_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa91/battle/protocol/RoomPosition;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    .line 7
    .line 8
    new-instance v0, Lcom/papa91/battle/protocol/RoomPosition$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/papa91/battle/protocol/RoomPosition$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    .line 10
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/Object;

    .line 12
    iput v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    .line 13
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/Object;

    .line 14
    iput v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    .line 15
    iput v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition;-><init>()V

    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 19
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 20
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_3

    .line 21
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 22
    iput v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    goto :goto_0

    .line 23
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->proficiencyLevel_:I

    goto :goto_0

    .line 24
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 25
    iput v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    goto :goto_0

    .line 26
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/Object;

    goto :goto_0

    .line 28
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->kickCount_:I

    goto :goto_0

    .line 29
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 30
    iput v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    goto :goto_0

    .line 31
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32
    iput-object v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/Object;

    goto :goto_0

    .line 33
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 34
    iput-object v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/Object;

    goto :goto_0

    .line 35
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 36
    iput v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    goto :goto_0

    .line 37
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->peripheral_:Z

    goto :goto_0

    .line 38
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->pingVal_:I

    goto :goto_0

    .line 39
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->copper_:I

    goto :goto_0

    .line 40
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 41
    iput-object v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/Object;

    goto :goto_0

    .line 42
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 43
    iput-object v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/Object;

    goto :goto_0

    .line 44
    :sswitch_e
    iget-object v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/BattleTitle;->toBuilder()Lcom/papa91/battle/protocol/BattleTitle$Builder;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 46
    :goto_1
    invoke-static {}, Lcom/papa91/battle/protocol/BattleTitle;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/BattleTitle;

    iput-object v3, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v2, v3}, Lcom/papa91/battle/protocol/BattleTitle$Builder;->mergeFrom(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/BattleTitle$Builder;

    .line 48
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/BattleTitle$Builder;->buildPartial()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object v2

    iput-object v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    goto/16 :goto_0

    .line 49
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->uid_:I

    goto/16 :goto_0

    .line 50
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->vip_:Z

    goto/16 :goto_0

    .line 51
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->closed_:Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_12
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_3
    if-nez v2, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 52
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 53
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 54
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :goto_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 56
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 59
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_12
        0x8 -> :sswitch_11
        0x10 -> :sswitch_10
        0x18 -> :sswitch_f
        0x22 -> :sswitch_e
        0x2a -> :sswitch_d
        0x32 -> :sswitch_c
        0x38 -> :sswitch_b
        0x40 -> :sswitch_a
        0x48 -> :sswitch_9
        0x50 -> :sswitch_8
        0x5a -> :sswitch_7
        0x62 -> :sswitch_6
        0x68 -> :sswitch_5
        0x70 -> :sswitch_4
        0x7a -> :sswitch_3
        0x80 -> :sswitch_2
        0x88 -> :sswitch_1
        0xf8 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/papa91/battle/protocol/RoomPosition$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/RoomPosition;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
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
    iput-byte p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/papa91/battle/protocol/RoomPosition$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/papa91/battle/protocol/RoomPosition;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->copper_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1102(Lcom/papa91/battle/protocol/RoomPosition;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->pingVal_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1202(Lcom/papa91/battle/protocol/RoomPosition;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->peripheral_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1300(Lcom/papa91/battle/protocol/RoomPosition;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1302(Lcom/papa91/battle/protocol/RoomPosition;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1400(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1402(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1500(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1502(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1600(Lcom/papa91/battle/protocol/RoomPosition;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1602(Lcom/papa91/battle/protocol/RoomPosition;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1702(Lcom/papa91/battle/protocol/RoomPosition;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->kickCount_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1800(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1802(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1900(Lcom/papa91/battle/protocol/RoomPosition;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1902(Lcom/papa91/battle/protocol/RoomPosition;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

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

.method static synthetic access$2002(Lcom/papa91/battle/protocol/RoomPosition;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->proficiencyLevel_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2100(Lcom/papa91/battle/protocol/RoomPosition;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2102(Lcom/papa91/battle/protocol/RoomPosition;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2200(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/google/protobuf/UnknownFieldSet;
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
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

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

.method static synthetic access$402(Lcom/papa91/battle/protocol/RoomPosition;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->closed_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$502(Lcom/papa91/battle/protocol/RoomPosition;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->vip_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$602(Lcom/papa91/battle/protocol/RoomPosition;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->uid_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$702(Lcom/papa91/battle/protocol/RoomPosition;Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/BattleTitle;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$800(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$802(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$900(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$902(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method public static getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_RoomPosition_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->toBuilder()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->toBuilder()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/papa91/battle/protocol/RoomPosition;

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
    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eq v1, v2, :cond_3

    .line 37
    .line 38
    return v3

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eq v1, v2, :cond_4

    .line 48
    .line 49
    return v3

    .line 50
    :cond_4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->hasTitle()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->hasTitle()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eq v1, v2, :cond_5

    .line 59
    .line 60
    return v3

    .line 61
    :cond_5
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->hasTitle()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/BattleTitle;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_6

    .line 80
    .line 81
    return v3

    .line 82
    :cond_6
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_7

    .line 95
    .line 96
    return v3

    .line 97
    :cond_7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatar()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatar()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_8

    .line 110
    .line 111
    return v3

    .line 112
    :cond_8
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getCopper()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getCopper()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eq v1, v2, :cond_9

    .line 121
    .line 122
    return v3

    .line 123
    :cond_9
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getPingVal()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getPingVal()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eq v1, v2, :cond_a

    .line 132
    .line 133
    return v3

    .line 134
    :cond_a
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getPeripheral()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getPeripheral()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eq v1, v2, :cond_b

    .line 143
    .line 144
    return v3

    .line 145
    :cond_b
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    .line 146
    .line 147
    iget v2, p1, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    .line 148
    .line 149
    if-eq v1, v2, :cond_c

    .line 150
    .line 151
    return v3

    .line 152
    :cond_c
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitle()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitle()Ljava/lang/String;

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
    if-nez v1, :cond_d

    .line 165
    .line 166
    return v3

    .line 167
    :cond_d
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleColor()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleColor()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_e

    .line 180
    .line 181
    return v3

    .line 182
    :cond_e
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    .line 183
    .line 184
    iget v2, p1, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    .line 185
    .line 186
    if-eq v1, v2, :cond_f

    .line 187
    .line 188
    return v3

    .line 189
    :cond_f
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getKickCount()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getKickCount()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eq v1, v2, :cond_10

    .line 198
    .line 199
    return v3

    .line 200
    :cond_10
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getIgnore()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getIgnore()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-nez v1, :cond_11

    .line 213
    .line 214
    return v3

    .line 215
    :cond_11
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    .line 216
    .line 217
    iget v2, p1, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    .line 218
    .line 219
    if-eq v1, v2, :cond_12

    .line 220
    .line 221
    return v3

    .line 222
    :cond_12
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getProficiencyLevel()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getProficiencyLevel()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eq v1, v2, :cond_13

    .line 231
    .line 232
    return v3

    .line 233
    :cond_13
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    .line 234
    .line 235
    iget v2, p1, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    .line 236
    .line 237
    if-eq v1, v2, :cond_14

    .line 238
    .line 239
    return v3

    .line 240
    :cond_14
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 241
    .line 242
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 243
    .line 244
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-nez p1, :cond_15

    .line 249
    .line 250
    return v3

    .line 251
    :cond_15
    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAvatarBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/Object;

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

.method public getBattleArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/BattleArea;->valueOf(I)Lcom/papa91/battle/protocol/BattleArea;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->UNRECOGNIZED:Lcom/papa91/battle/protocol/BattleArea;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getBattleAreaValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    .line 2
    .line 3
    return v0
.end method

.method public getBattleTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBattleTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/Object;

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

.method public getBattleTitleColor()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/Object;

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

.method public getClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->closed_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getCopper()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->copper_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    return-object v0
.end method

.method public getIgnore()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getIgnoreBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/Object;

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

.method public getKickCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->kickCount_:I

    .line 2
    .line 3
    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/Object;

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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPeripheral()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->peripheral_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getPhoneType()Lcom/papa91/battle/protocol/PhoneType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/PhoneType;->valueOf(I)Lcom/papa91/battle/protocol/PhoneType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/PhoneType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/PhoneType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getPhoneTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPingVal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->pingVal_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlatform()Lcom/papa91/battle/protocol/Platform;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/Platform;->valueOf(I)Lcom/papa91/battle/protocol/Platform;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/Platform;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Platform;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getPlatformValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    .line 2
    .line 3
    return v0
.end method

.method public getProficiencyLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->proficiencyLevel_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSerializedSize()I
    .locals 3

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
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->closed_:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr v1, v0

    .line 18
    :cond_1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->vip_:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/2addr v1, v0

    .line 28
    :cond_2
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->uid_:I

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v1, v0

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    const/4 v0, 0x4

    .line 43
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    add-int/2addr v1, v0

    .line 52
    :cond_4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_5

    .line 61
    .line 62
    const/4 v0, 0x5

    .line 63
    iget-object v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/Object;

    .line 64
    .line 65
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/2addr v1, v0

    .line 70
    :cond_5
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatarBytes()Lcom/google/protobuf/ByteString;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_6

    .line 79
    .line 80
    const/4 v0, 0x6

    .line 81
    iget-object v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/2addr v1, v0

    .line 88
    :cond_6
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->copper_:I

    .line 89
    .line 90
    if-eqz v0, :cond_7

    .line 91
    .line 92
    const/4 v2, 0x7

    .line 93
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    add-int/2addr v1, v0

    .line 98
    :cond_7
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->pingVal_:I

    .line 99
    .line 100
    if-eqz v0, :cond_8

    .line 101
    .line 102
    const/16 v2, 0x8

    .line 103
    .line 104
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    add-int/2addr v1, v0

    .line 109
    :cond_8
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->peripheral_:Z

    .line 110
    .line 111
    if-eqz v0, :cond_9

    .line 112
    .line 113
    const/16 v2, 0x9

    .line 114
    .line 115
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    add-int/2addr v1, v0

    .line 120
    :cond_9
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    .line 121
    .line 122
    sget-object v2, Lcom/papa91/battle/protocol/RoomPosition$State;->EMPTY:Lcom/papa91/battle/protocol/RoomPosition$State;

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition$State;->getNumber()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eq v0, v2, :cond_a

    .line 129
    .line 130
    const/16 v0, 0xa

    .line 131
    .line 132
    iget v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    .line 133
    .line 134
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    add-int/2addr v1, v0

    .line 139
    :cond_a
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleBytes()Lcom/google/protobuf/ByteString;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_b

    .line 148
    .line 149
    const/16 v0, 0xb

    .line 150
    .line 151
    iget-object v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/Object;

    .line 152
    .line 153
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    add-int/2addr v1, v0

    .line 158
    :cond_b
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_c

    .line 167
    .line 168
    const/16 v0, 0xc

    .line 169
    .line 170
    iget-object v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/Object;

    .line 171
    .line 172
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    add-int/2addr v1, v0

    .line 177
    :cond_c
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    .line 178
    .line 179
    sget-object v2, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eq v0, v2, :cond_d

    .line 186
    .line 187
    const/16 v0, 0xd

    .line 188
    .line 189
    iget v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    .line 190
    .line 191
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    add-int/2addr v1, v0

    .line 196
    :cond_d
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->kickCount_:I

    .line 197
    .line 198
    if-eqz v0, :cond_e

    .line 199
    .line 200
    const/16 v2, 0xe

    .line 201
    .line 202
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    add-int/2addr v1, v0

    .line 207
    :cond_e
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getIgnoreBytes()Lcom/google/protobuf/ByteString;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-nez v0, :cond_f

    .line 216
    .line 217
    const/16 v0, 0xf

    .line 218
    .line 219
    iget-object v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/Object;

    .line 220
    .line 221
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    add-int/2addr v1, v0

    .line 226
    :cond_f
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    .line 227
    .line 228
    sget-object v2, Lcom/papa91/battle/protocol/Platform;->MOBILE:Lcom/papa91/battle/protocol/Platform;

    .line 229
    .line 230
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/Platform;->getNumber()I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-eq v0, v2, :cond_10

    .line 235
    .line 236
    const/16 v0, 0x10

    .line 237
    .line 238
    iget v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    .line 239
    .line 240
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    add-int/2addr v1, v0

    .line 245
    :cond_10
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->proficiencyLevel_:I

    .line 246
    .line 247
    if-eqz v0, :cond_11

    .line 248
    .line 249
    const/16 v2, 0x11

    .line 250
    .line 251
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    add-int/2addr v1, v0

    .line 256
    :cond_11
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    .line 257
    .line 258
    sget-object v2, Lcom/papa91/battle/protocol/PhoneType;->UNKNOWN:Lcom/papa91/battle/protocol/PhoneType;

    .line 259
    .line 260
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/PhoneType;->getNumber()I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-eq v0, v2, :cond_12

    .line 265
    .line 266
    const/16 v0, 0x1f

    .line 267
    .line 268
    iget v2, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    .line 269
    .line 270
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    add-int/2addr v1, v0

    .line 275
    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 276
    .line 277
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    add-int/2addr v1, v0

    .line 282
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 283
    .line 284
    return v1
.end method

.method public getState()Lcom/papa91/battle/protocol/RoomPosition$State;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition$State;->valueOf(I)Lcom/papa91/battle/protocol/RoomPosition$State;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition$State;->UNRECOGNIZED:Lcom/papa91/battle/protocol/RoomPosition$State;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    .line 2
    .line 3
    return v0
.end method

.method public getTitle()Lcom/papa91/battle/protocol/BattleTitle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/BattleTitle;->getDefaultInstance()Lcom/papa91/battle/protocol/BattleTitle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getTitleOrBuilder()Lcom/papa91/battle/protocol/BattleTitleOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->uid_:I

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

.method public getVip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->vip_:Z

    .line 2
    .line 3
    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

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
    .locals 2

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
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x25

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x2

    .line 35
    .line 36
    mul-int/lit8 v1, v1, 0x35

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    add-int/2addr v1, v0

    .line 47
    mul-int/lit8 v1, v1, 0x25

    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x3

    .line 50
    .line 51
    mul-int/lit8 v1, v1, 0x35

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/2addr v1, v0

    .line 58
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->hasTitle()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    mul-int/lit8 v1, v1, 0x25

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x4

    .line 67
    .line 68
    mul-int/lit8 v1, v1, 0x35

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleTitle;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    add-int/2addr v1, v0

    .line 79
    :cond_1
    mul-int/lit8 v1, v1, 0x25

    .line 80
    .line 81
    add-int/lit8 v1, v1, 0x5

    .line 82
    .line 83
    mul-int/lit8 v1, v1, 0x35

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    add-int/2addr v1, v0

    .line 94
    mul-int/lit8 v1, v1, 0x25

    .line 95
    .line 96
    add-int/lit8 v1, v1, 0x6

    .line 97
    .line 98
    mul-int/lit8 v1, v1, 0x35

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatar()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    add-int/2addr v1, v0

    .line 109
    mul-int/lit8 v1, v1, 0x25

    .line 110
    .line 111
    add-int/lit8 v1, v1, 0x7

    .line 112
    .line 113
    mul-int/lit8 v1, v1, 0x35

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getCopper()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    add-int/2addr v1, v0

    .line 120
    mul-int/lit8 v1, v1, 0x25

    .line 121
    .line 122
    add-int/lit8 v1, v1, 0x8

    .line 123
    .line 124
    mul-int/lit8 v1, v1, 0x35

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getPingVal()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    add-int/2addr v1, v0

    .line 131
    mul-int/lit8 v1, v1, 0x25

    .line 132
    .line 133
    add-int/lit8 v1, v1, 0x9

    .line 134
    .line 135
    mul-int/lit8 v1, v1, 0x35

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getPeripheral()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    add-int/2addr v1, v0

    .line 146
    mul-int/lit8 v1, v1, 0x25

    .line 147
    .line 148
    add-int/lit8 v1, v1, 0xa

    .line 149
    .line 150
    mul-int/lit8 v1, v1, 0x35

    .line 151
    .line 152
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    .line 153
    .line 154
    add-int/2addr v1, v0

    .line 155
    mul-int/lit8 v1, v1, 0x25

    .line 156
    .line 157
    add-int/lit8 v1, v1, 0xb

    .line 158
    .line 159
    mul-int/lit8 v1, v1, 0x35

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitle()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    add-int/2addr v1, v0

    .line 170
    mul-int/lit8 v1, v1, 0x25

    .line 171
    .line 172
    add-int/lit8 v1, v1, 0xc

    .line 173
    .line 174
    mul-int/lit8 v1, v1, 0x35

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleColor()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    add-int/2addr v1, v0

    .line 185
    mul-int/lit8 v1, v1, 0x25

    .line 186
    .line 187
    add-int/lit8 v1, v1, 0xd

    .line 188
    .line 189
    mul-int/lit8 v1, v1, 0x35

    .line 190
    .line 191
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    .line 192
    .line 193
    add-int/2addr v1, v0

    .line 194
    mul-int/lit8 v1, v1, 0x25

    .line 195
    .line 196
    add-int/lit8 v1, v1, 0xe

    .line 197
    .line 198
    mul-int/lit8 v1, v1, 0x35

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getKickCount()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    add-int/2addr v1, v0

    .line 205
    mul-int/lit8 v1, v1, 0x25

    .line 206
    .line 207
    add-int/lit8 v1, v1, 0xf

    .line 208
    .line 209
    mul-int/lit8 v1, v1, 0x35

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getIgnore()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    add-int/2addr v1, v0

    .line 220
    mul-int/lit8 v1, v1, 0x25

    .line 221
    .line 222
    add-int/lit8 v1, v1, 0x10

    .line 223
    .line 224
    mul-int/lit8 v1, v1, 0x35

    .line 225
    .line 226
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    .line 227
    .line 228
    add-int/2addr v1, v0

    .line 229
    mul-int/lit8 v1, v1, 0x25

    .line 230
    .line 231
    add-int/lit8 v1, v1, 0x11

    .line 232
    .line 233
    mul-int/lit8 v1, v1, 0x35

    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getProficiencyLevel()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    add-int/2addr v1, v0

    .line 240
    mul-int/lit8 v1, v1, 0x25

    .line 241
    .line 242
    add-int/lit8 v1, v1, 0x1f

    .line 243
    .line 244
    mul-int/lit8 v1, v1, 0x35

    .line 245
    .line 246
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    .line 247
    .line 248
    add-int/2addr v1, v0

    .line 249
    mul-int/lit8 v1, v1, 0x1d

    .line 250
    .line 251
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    add-int/2addr v1, v0

    .line 258
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 259
    .line 260
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_RoomPosition_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/papa91/battle/protocol/RoomPosition;

    .line 4
    .line 5
    const-class v2, Lcom/papa91/battle/protocol/RoomPosition$Builder;

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
    iget-byte v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->newBuilderForType()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->newBuilderForType()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->newBuilder()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/papa91/battle/protocol/RoomPosition$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/papa91/battle/protocol/RoomPosition;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->toBuilder()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->toBuilder()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/RoomPosition;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    invoke-direct {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;-><init>(Lcom/papa91/battle/protocol/RoomPosition$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    invoke-direct {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;-><init>(Lcom/papa91/battle/protocol/RoomPosition$1;)V

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->closed_:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->vip_:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->uid_:I

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 35
    .line 36
    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    const/4 v0, 0x5

    .line 48
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->nickname_:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatarBytes()Lcom/google/protobuf/ByteString;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    const/4 v0, 0x6

    .line 64
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->avatar_:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_5
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->copper_:I

    .line 70
    .line 71
    if-eqz v0, :cond_6

    .line 72
    .line 73
    const/4 v1, 0x7

    .line 74
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 75
    .line 76
    .line 77
    :cond_6
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->pingVal_:I

    .line 78
    .line 79
    if-eqz v0, :cond_7

    .line 80
    .line 81
    const/16 v1, 0x8

    .line 82
    .line 83
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 84
    .line 85
    .line 86
    :cond_7
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->peripheral_:Z

    .line 87
    .line 88
    if-eqz v0, :cond_8

    .line 89
    .line 90
    const/16 v1, 0x9

    .line 91
    .line 92
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 93
    .line 94
    .line 95
    :cond_8
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    .line 96
    .line 97
    sget-object v1, Lcom/papa91/battle/protocol/RoomPosition$State;->EMPTY:Lcom/papa91/battle/protocol/RoomPosition$State;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/RoomPosition$State;->getNumber()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eq v0, v1, :cond_9

    .line 104
    .line 105
    const/16 v0, 0xa

    .line 106
    .line 107
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->state_:I

    .line 108
    .line 109
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 110
    .line 111
    .line 112
    :cond_9
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleBytes()Lcom/google/protobuf/ByteString;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_a

    .line 121
    .line 122
    const/16 v0, 0xb

    .line 123
    .line 124
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitle_:Ljava/lang/Object;

    .line 125
    .line 126
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_a
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_b

    .line 138
    .line 139
    const/16 v0, 0xc

    .line 140
    .line 141
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleTitleColor_:Ljava/lang/Object;

    .line 142
    .line 143
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_b
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    .line 147
    .line 148
    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eq v0, v1, :cond_c

    .line 155
    .line 156
    const/16 v0, 0xd

    .line 157
    .line 158
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->battleArea_:I

    .line 159
    .line 160
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 161
    .line 162
    .line 163
    :cond_c
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->kickCount_:I

    .line 164
    .line 165
    if-eqz v0, :cond_d

    .line 166
    .line 167
    const/16 v1, 0xe

    .line 168
    .line 169
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 170
    .line 171
    .line 172
    :cond_d
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getIgnoreBytes()Lcom/google/protobuf/ByteString;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_e

    .line 181
    .line 182
    const/16 v0, 0xf

    .line 183
    .line 184
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->ignore_:Ljava/lang/Object;

    .line 185
    .line 186
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :cond_e
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    .line 190
    .line 191
    sget-object v1, Lcom/papa91/battle/protocol/Platform;->MOBILE:Lcom/papa91/battle/protocol/Platform;

    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Platform;->getNumber()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eq v0, v1, :cond_f

    .line 198
    .line 199
    const/16 v0, 0x10

    .line 200
    .line 201
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->platform_:I

    .line 202
    .line 203
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 204
    .line 205
    .line 206
    :cond_f
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->proficiencyLevel_:I

    .line 207
    .line 208
    if-eqz v0, :cond_10

    .line 209
    .line 210
    const/16 v1, 0x11

    .line 211
    .line 212
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 213
    .line 214
    .line 215
    :cond_10
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    .line 216
    .line 217
    sget-object v1, Lcom/papa91/battle/protocol/PhoneType;->UNKNOWN:Lcom/papa91/battle/protocol/PhoneType;

    .line 218
    .line 219
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/PhoneType;->getNumber()I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eq v0, v1, :cond_11

    .line 224
    .line 225
    const/16 v0, 0x1f

    .line 226
    .line 227
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition;->phoneType_:I

    .line 228
    .line 229
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 230
    .line 231
    .line 232
    :cond_11
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 233
    .line 234
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 235
    .line 236
    .line 237
    return-void
.end method
