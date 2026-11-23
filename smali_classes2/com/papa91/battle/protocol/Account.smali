.class public final Lcom/papa91/battle/protocol/Account;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/battle/protocol/AccountOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/battle/protocol/Account$Builder;
    }
.end annotation


# static fields
.field public static final AREA_FIELD_NUMBER:I = 0x9

.field public static final AVATAR_FIELD_NUMBER:I = 0x3

.field public static final BATTLETITLECOLOR_FIELD_NUMBER:I = 0x6

.field public static final BATTLETITLE_FIELD_NUMBER:I = 0x5

.field public static final COPPER_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

.field public static final IGNORE1_FIELD_NUMBER:I = 0xa

.field public static final KICKCOUNT_FIELD_NUMBER:I = 0x8

.field public static final NICKNAME_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/Account;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONETYPE_FIELD_NUMBER:I = 0xd

.field public static final PLATFORM_FIELD_NUMBER:I = 0xb

.field public static final PROFICIENCYLEVEL_FIELD_NUMBER:I = 0xc

.field public static final UID_FIELD_NUMBER:I = 0x1

.field public static final VIP_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private area_:I

.field private volatile avatar_:Ljava/lang/Object;

.field private volatile battleTitleColor_:Ljava/lang/Object;

.field private volatile battleTitle_:Ljava/lang/Object;

.field private copper_:I

.field private volatile ignore1_:Ljava/lang/Object;

.field private kickCount_:I

.field private memoizedIsInitialized:B

.field private volatile nickname_:Ljava/lang/Object;

.field private phoneType_:I

.field private platform_:I

.field private proficiencyLevel_:I

.field private uid_:I

.field private vip_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/Account;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa91/battle/protocol/Account;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    .line 7
    .line 8
    new-instance v0, Lcom/papa91/battle/protocol/Account$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/papa91/battle/protocol/Account$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/papa91/battle/protocol/Account;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    .line 12
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/Object;

    .line 13
    iput v1, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    .line 14
    iput v1, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account;-><init>()V

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 19
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto :goto_2

    .line 20
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 21
    iput v2, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    goto :goto_0

    .line 22
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/Account;->proficiencyLevel_:I

    goto :goto_0

    .line 23
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 24
    iput v2, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    goto :goto_0

    .line 25
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 26
    iput-object v2, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/Object;

    goto :goto_0

    .line 27
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 28
    iput v2, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    goto :goto_0

    .line 29
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/Account;->kickCount_:I

    goto :goto_0

    .line 30
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/Account;->copper_:I

    goto :goto_0

    .line 31
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32
    iput-object v2, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/Object;

    goto :goto_0

    .line 33
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 34
    iput-object v2, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/Object;

    goto :goto_0

    .line 35
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/Account;->vip_:Z

    goto :goto_0

    .line 36
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 37
    iput-object v2, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/Object;

    goto :goto_0

    .line 38
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 39
    iput-object v2, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/Object;

    goto :goto_0

    .line 40
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/Account;->uid_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :sswitch_d
    const/4 v1, 0x1

    goto :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 41
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 42
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 43
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 45
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 46
    throw p1

    .line 47
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 48
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x12 -> :sswitch_b
        0x1a -> :sswitch_a
        0x20 -> :sswitch_9
        0x2a -> :sswitch_8
        0x32 -> :sswitch_7
        0x38 -> :sswitch_6
        0x40 -> :sswitch_5
        0x48 -> :sswitch_4
        0x52 -> :sswitch_3
        0x58 -> :sswitch_2
        0x60 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/papa91/battle/protocol/Account$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/Account;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/papa91/battle/protocol/Account;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/papa91/battle/protocol/Account$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/papa91/battle/protocol/Account;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account;->copper_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1102(Lcom/papa91/battle/protocol/Account;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account;->kickCount_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1200(Lcom/papa91/battle/protocol/Account;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1202(Lcom/papa91/battle/protocol/Account;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1300(Lcom/papa91/battle/protocol/Account;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1302(Lcom/papa91/battle/protocol/Account;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1400(Lcom/papa91/battle/protocol/Account;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1402(Lcom/papa91/battle/protocol/Account;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1502(Lcom/papa91/battle/protocol/Account;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account;->proficiencyLevel_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1600(Lcom/papa91/battle/protocol/Account;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1602(Lcom/papa91/battle/protocol/Account;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1700(Lcom/papa91/battle/protocol/Account;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1800()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$2000(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$2100(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$2200(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$2300(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$402(Lcom/papa91/battle/protocol/Account;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account;->uid_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$500(Lcom/papa91/battle/protocol/Account;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lcom/papa91/battle/protocol/Account;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$600(Lcom/papa91/battle/protocol/Account;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lcom/papa91/battle/protocol/Account;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$702(Lcom/papa91/battle/protocol/Account;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Account;->vip_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$800(Lcom/papa91/battle/protocol/Account;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$802(Lcom/papa91/battle/protocol/Account;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$900(Lcom/papa91/battle/protocol/Account;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$902(Lcom/papa91/battle/protocol/Account;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method public static getDefaultInstance()Lcom/papa91/battle/protocol/Account;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Account_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->toBuilder()Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/papa91/battle/protocol/Account;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->toBuilder()Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Account$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Account;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Account;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/Account;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/papa91/battle/protocol/Account;

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
    check-cast p1, Lcom/papa91/battle/protocol/Account;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getUid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getUid()I

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getNickname()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getNickname()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getAvatar()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getAvatar()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getVip()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getVip()Z

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getBattleTitle()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getBattleTitle()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_6

    .line 82
    .line 83
    return v3

    .line 84
    :cond_6
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getBattleTitleColor()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getBattleTitleColor()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_7

    .line 97
    .line 98
    return v3

    .line 99
    :cond_7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getCopper()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getCopper()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eq v1, v2, :cond_8

    .line 108
    .line 109
    return v3

    .line 110
    :cond_8
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getKickCount()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getKickCount()I

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
    iget v1, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    .line 122
    .line 123
    iget v2, p1, Lcom/papa91/battle/protocol/Account;->area_:I

    .line 124
    .line 125
    if-eq v1, v2, :cond_a

    .line 126
    .line 127
    return v3

    .line 128
    :cond_a
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getIgnore1()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getIgnore1()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_b

    .line 141
    .line 142
    return v3

    .line 143
    :cond_b
    iget v1, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    .line 144
    .line 145
    iget v2, p1, Lcom/papa91/battle/protocol/Account;->platform_:I

    .line 146
    .line 147
    if-eq v1, v2, :cond_c

    .line 148
    .line 149
    return v3

    .line 150
    :cond_c
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getProficiencyLevel()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getProficiencyLevel()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eq v1, v2, :cond_d

    .line 159
    .line 160
    return v3

    .line 161
    :cond_d
    iget v1, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    .line 162
    .line 163
    iget v2, p1, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    .line 164
    .line 165
    if-eq v1, v2, :cond_e

    .line 166
    .line 167
    return v3

    .line 168
    :cond_e
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 169
    .line 170
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 171
    .line 172
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-nez p1, :cond_f

    .line 177
    .line 178
    return v3

    .line 179
    :cond_f
    return v0
.end method

.method public getArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->area_:I

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

.method public getAreaValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAvatarBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/Object;

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

.method public getBattleTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBattleTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/Object;

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

.method public getCopper()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->copper_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/papa91/battle/protocol/Account;
    .locals 1

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    return-object v0
.end method

.method public getIgnore1()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getIgnore1Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->kickCount_:I

    .line 2
    .line 3
    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/Object;

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
            "Lcom/papa91/battle/protocol/Account;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Account;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPhoneType()Lcom/papa91/battle/protocol/PhoneType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlatform()Lcom/papa91/battle/protocol/Platform;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    .line 2
    .line 3
    return v0
.end method

.method public getProficiencyLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->proficiencyLevel_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->uid_:I

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
    add-int/2addr v1, v0

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    iget-object v2, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v1, v0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getAvatarBytes()Lcom/google/protobuf/ByteString;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    const/4 v0, 0x3

    .line 47
    iget-object v2, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    add-int/2addr v1, v0

    .line 54
    :cond_3
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Account;->vip_:Z

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    const/4 v2, 0x4

    .line 59
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/2addr v1, v0

    .line 64
    :cond_4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getBattleTitleBytes()Lcom/google/protobuf/ByteString;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_5

    .line 73
    .line 74
    const/4 v0, 0x5

    .line 75
    iget-object v2, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/Object;

    .line 76
    .line 77
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    add-int/2addr v1, v0

    .line 82
    :cond_5
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_6

    .line 91
    .line 92
    const/4 v0, 0x6

    .line 93
    iget-object v2, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/Object;

    .line 94
    .line 95
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    add-int/2addr v1, v0

    .line 100
    :cond_6
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->copper_:I

    .line 101
    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    const/4 v2, 0x7

    .line 105
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    add-int/2addr v1, v0

    .line 110
    :cond_7
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->kickCount_:I

    .line 111
    .line 112
    if-eqz v0, :cond_8

    .line 113
    .line 114
    const/16 v2, 0x8

    .line 115
    .line 116
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    add-int/2addr v1, v0

    .line 121
    :cond_8
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    .line 122
    .line 123
    sget-object v2, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eq v0, v2, :cond_9

    .line 130
    .line 131
    const/16 v0, 0x9

    .line 132
    .line 133
    iget v2, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    .line 134
    .line 135
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    add-int/2addr v1, v0

    .line 140
    :cond_9
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getIgnore1Bytes()Lcom/google/protobuf/ByteString;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_a

    .line 149
    .line 150
    const/16 v0, 0xa

    .line 151
    .line 152
    iget-object v2, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/Object;

    .line 153
    .line 154
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    add-int/2addr v1, v0

    .line 159
    :cond_a
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    .line 160
    .line 161
    sget-object v2, Lcom/papa91/battle/protocol/Platform;->MOBILE:Lcom/papa91/battle/protocol/Platform;

    .line 162
    .line 163
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/Platform;->getNumber()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eq v0, v2, :cond_b

    .line 168
    .line 169
    const/16 v0, 0xb

    .line 170
    .line 171
    iget v2, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    .line 172
    .line 173
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    add-int/2addr v1, v0

    .line 178
    :cond_b
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->proficiencyLevel_:I

    .line 179
    .line 180
    if-eqz v0, :cond_c

    .line 181
    .line 182
    const/16 v2, 0xc

    .line 183
    .line 184
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    add-int/2addr v1, v0

    .line 189
    :cond_c
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    .line 190
    .line 191
    sget-object v2, Lcom/papa91/battle/protocol/PhoneType;->UNKNOWN:Lcom/papa91/battle/protocol/PhoneType;

    .line 192
    .line 193
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/PhoneType;->getNumber()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eq v0, v2, :cond_d

    .line 198
    .line 199
    const/16 v0, 0xd

    .line 200
    .line 201
    iget v2, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    .line 202
    .line 203
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    add-int/2addr v1, v0

    .line 208
    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    add-int/2addr v1, v0

    .line 215
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 216
    .line 217
    return v1
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->uid_:I

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
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Account;->vip_:Z

    .line 2
    .line 3
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
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getUid()I

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getNickname()Ljava/lang/String;

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
    add-int/lit8 v1, v1, 0x3

    .line 46
    .line 47
    mul-int/lit8 v1, v1, 0x35

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getAvatar()Ljava/lang/String;

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
    add-int/lit8 v1, v1, 0x4

    .line 61
    .line 62
    mul-int/lit8 v1, v1, 0x35

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getVip()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    add-int/2addr v1, v0

    .line 73
    mul-int/lit8 v1, v1, 0x25

    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x5

    .line 76
    .line 77
    mul-int/lit8 v1, v1, 0x35

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getBattleTitle()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/2addr v1, v0

    .line 88
    mul-int/lit8 v1, v1, 0x25

    .line 89
    .line 90
    add-int/lit8 v1, v1, 0x6

    .line 91
    .line 92
    mul-int/lit8 v1, v1, 0x35

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getBattleTitleColor()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    add-int/2addr v1, v0

    .line 103
    mul-int/lit8 v1, v1, 0x25

    .line 104
    .line 105
    add-int/lit8 v1, v1, 0x7

    .line 106
    .line 107
    mul-int/lit8 v1, v1, 0x35

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getCopper()I

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
    add-int/lit8 v1, v1, 0x8

    .line 117
    .line 118
    mul-int/lit8 v1, v1, 0x35

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getKickCount()I

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
    add-int/lit8 v1, v1, 0x9

    .line 128
    .line 129
    mul-int/lit8 v1, v1, 0x35

    .line 130
    .line 131
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    .line 132
    .line 133
    add-int/2addr v1, v0

    .line 134
    mul-int/lit8 v1, v1, 0x25

    .line 135
    .line 136
    add-int/lit8 v1, v1, 0xa

    .line 137
    .line 138
    mul-int/lit8 v1, v1, 0x35

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getIgnore1()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    add-int/2addr v1, v0

    .line 149
    mul-int/lit8 v1, v1, 0x25

    .line 150
    .line 151
    add-int/lit8 v1, v1, 0xb

    .line 152
    .line 153
    mul-int/lit8 v1, v1, 0x35

    .line 154
    .line 155
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    .line 156
    .line 157
    add-int/2addr v1, v0

    .line 158
    mul-int/lit8 v1, v1, 0x25

    .line 159
    .line 160
    add-int/lit8 v1, v1, 0xc

    .line 161
    .line 162
    mul-int/lit8 v1, v1, 0x35

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getProficiencyLevel()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    add-int/2addr v1, v0

    .line 169
    mul-int/lit8 v1, v1, 0x25

    .line 170
    .line 171
    add-int/lit8 v1, v1, 0xd

    .line 172
    .line 173
    mul-int/lit8 v1, v1, 0x35

    .line 174
    .line 175
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    .line 176
    .line 177
    add-int/2addr v1, v0

    .line 178
    mul-int/lit8 v1, v1, 0x1d

    .line 179
    .line 180
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    add-int/2addr v1, v0

    .line 187
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 188
    .line 189
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Account_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/papa91/battle/protocol/Account;

    .line 4
    .line 5
    const-class v2, Lcom/papa91/battle/protocol/Account$Builder;

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
    iget-byte v0, p0, Lcom/papa91/battle/protocol/Account;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/papa91/battle/protocol/Account;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->newBuilderForType()Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Account;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->newBuilderForType()Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->newBuilder()Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/papa91/battle/protocol/Account$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/papa91/battle/protocol/Account$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/papa91/battle/protocol/Account$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/papa91/battle/protocol/Account;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/papa91/battle/protocol/Account;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->toBuilder()Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->toBuilder()Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/Account;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Account;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/papa91/battle/protocol/Account$Builder;

    invoke-direct {v0, v1}, Lcom/papa91/battle/protocol/Account$Builder;-><init>(Lcom/papa91/battle/protocol/Account$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/papa91/battle/protocol/Account$Builder;

    invoke-direct {v0, v1}, Lcom/papa91/battle/protocol/Account$Builder;-><init>(Lcom/papa91/battle/protocol/Account$1;)V

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Account$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Account;)Lcom/papa91/battle/protocol/Account$Builder;

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
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->uid_:I

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getNicknameBytes()Lcom/google/protobuf/ByteString;

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
    iget-object v1, p0, Lcom/papa91/battle/protocol/Account;->nickname_:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getAvatarBytes()Lcom/google/protobuf/ByteString;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    iget-object v1, p0, Lcom/papa91/battle/protocol/Account;->avatar_:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Account;->vip_:Z

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    const/4 v1, 0x4

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getBattleTitleBytes()Lcom/google/protobuf/ByteString;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    const/4 v0, 0x5

    .line 60
    iget-object v1, p0, Lcom/papa91/battle/protocol/Account;->battleTitle_:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_5

    .line 74
    .line 75
    const/4 v0, 0x6

    .line 76
    iget-object v1, p0, Lcom/papa91/battle/protocol/Account;->battleTitleColor_:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->copper_:I

    .line 82
    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    const/4 v1, 0x7

    .line 86
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 87
    .line 88
    .line 89
    :cond_6
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->kickCount_:I

    .line 90
    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    const/16 v1, 0x8

    .line 94
    .line 95
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 96
    .line 97
    .line 98
    :cond_7
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    .line 99
    .line 100
    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eq v0, v1, :cond_8

    .line 107
    .line 108
    const/16 v0, 0x9

    .line 109
    .line 110
    iget v1, p0, Lcom/papa91/battle/protocol/Account;->area_:I

    .line 111
    .line 112
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 113
    .line 114
    .line 115
    :cond_8
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account;->getIgnore1Bytes()Lcom/google/protobuf/ByteString;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_9

    .line 124
    .line 125
    const/16 v0, 0xa

    .line 126
    .line 127
    iget-object v1, p0, Lcom/papa91/battle/protocol/Account;->ignore1_:Ljava/lang/Object;

    .line 128
    .line 129
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_9
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    .line 133
    .line 134
    sget-object v1, Lcom/papa91/battle/protocol/Platform;->MOBILE:Lcom/papa91/battle/protocol/Platform;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Platform;->getNumber()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eq v0, v1, :cond_a

    .line 141
    .line 142
    const/16 v0, 0xb

    .line 143
    .line 144
    iget v1, p0, Lcom/papa91/battle/protocol/Account;->platform_:I

    .line 145
    .line 146
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 147
    .line 148
    .line 149
    :cond_a
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->proficiencyLevel_:I

    .line 150
    .line 151
    if-eqz v0, :cond_b

    .line 152
    .line 153
    const/16 v1, 0xc

    .line 154
    .line 155
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 156
    .line 157
    .line 158
    :cond_b
    iget v0, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    .line 159
    .line 160
    sget-object v1, Lcom/papa91/battle/protocol/PhoneType;->UNKNOWN:Lcom/papa91/battle/protocol/PhoneType;

    .line 161
    .line 162
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/PhoneType;->getNumber()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eq v0, v1, :cond_c

    .line 167
    .line 168
    const/16 v0, 0xd

    .line 169
    .line 170
    iget v1, p0, Lcom/papa91/battle/protocol/Account;->phoneType_:I

    .line 171
    .line 172
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 173
    .line 174
    .line 175
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 176
    .line 177
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method
