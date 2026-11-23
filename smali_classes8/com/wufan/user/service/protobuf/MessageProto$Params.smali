.class public final Lcom/wufan/user/service/protobuf/MessageProto$Params;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/user/service/protobuf/MessageProto$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/MessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/MessageProto$Params$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$Params;

.field public static final FROMUID_FIELD_NUMBER:I = 0xb

.field public static final GAMEID_FIELD_NUMBER:I = 0x6

.field public static final ISINIT_FIELD_NUMBER:I = 0x5

.field public static final ISRECONNECT_FIELD_NUMBER:I = 0xc

.field public static final JOBID_FIELD_NUMBER:I = 0x9

.field public static final LASTMESSAGEADDTIME_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/MessageProto$Params;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECORDID_FIELD_NUMBER:I = 0x3

.field public static final RESOURCEID_FIELD_NUMBER:I = 0x8

.field public static final SERVERNAME_FIELD_NUMBER:I = 0x7

.field public static final SWITCHOVERGAMEID_FIELD_NUMBER:I = 0xa

.field public static final TOKEN_FIELD_NUMBER:I = 0x2

.field public static final UID_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private fromUid_:I

.field private gameId_:J

.field private isInit_:Z

.field private isReconnect_:Z

.field private volatile jobId_:Ljava/lang/Object;

.field private lastMessageAddTime_:J

.field private memoizedIsInitialized:B

.field private volatile recordId_:Ljava/lang/Object;

.field private volatile resourceId_:Ljava/lang/Object;

.field private volatile serverName_:Ljava/lang/Object;

.field private switchoverGameId_:J

.field private volatile token_:Ljava/lang/Object;

.field private uid_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 7
    .line 8
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$Params$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Params$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->token_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->recordId_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->serverName_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->resourceId_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->jobId_:Ljava/lang/Object;

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

    .line 12
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;-><init>()V

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 15
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 16
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto :goto_2

    .line 17
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->isReconnect_:Z

    goto :goto_0

    .line 18
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->fromUid_:I

    goto :goto_0

    .line 19
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->switchoverGameId_:J

    goto :goto_0

    .line 20
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 21
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->jobId_:Ljava/lang/Object;

    goto :goto_0

    .line 22
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->resourceId_:Ljava/lang/Object;

    goto :goto_0

    .line 24
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 25
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->serverName_:Ljava/lang/Object;

    goto :goto_0

    .line 26
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->gameId_:J

    goto :goto_0

    .line 27
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->isInit_:Z

    goto :goto_0

    .line 28
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->lastMessageAddTime_:J

    goto :goto_0

    .line 29
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 30
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->recordId_:Ljava/lang/Object;

    goto :goto_0

    .line 31
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->token_:Ljava/lang/Object;

    goto :goto_0

    .line 33
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->uid_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :sswitch_c
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

    .line 34
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 35
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 36
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 38
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 39
    throw p1

    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x8 -> :sswitch_b
        0x12 -> :sswitch_a
        0x1a -> :sswitch_9
        0x20 -> :sswitch_8
        0x28 -> :sswitch_7
        0x30 -> :sswitch_6
        0x3a -> :sswitch_5
        0x42 -> :sswitch_4
        0x4a -> :sswitch_3
        0x50 -> :sswitch_2
        0x58 -> :sswitch_1
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/wufan/user/service/protobuf/MessageProto$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$Params;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/user/service/protobuf/MessageProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$4200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$4402(Lcom/wufan/user/service/protobuf/MessageProto$Params;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->uid_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$4500(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->token_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4502(Lcom/wufan/user/service/protobuf/MessageProto$Params;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->token_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$4600(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->recordId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4602(Lcom/wufan/user/service/protobuf/MessageProto$Params;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->recordId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$4702(Lcom/wufan/user/service/protobuf/MessageProto$Params;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->lastMessageAddTime_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$4802(Lcom/wufan/user/service/protobuf/MessageProto$Params;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->isInit_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$4902(Lcom/wufan/user/service/protobuf/MessageProto$Params;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->gameId_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$5000(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->serverName_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$5002(Lcom/wufan/user/service/protobuf/MessageProto$Params;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->serverName_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$5100(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->resourceId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$5102(Lcom/wufan/user/service/protobuf/MessageProto$Params;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->resourceId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$5200(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->jobId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$5202(Lcom/wufan/user/service/protobuf/MessageProto$Params;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->jobId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$5302(Lcom/wufan/user/service/protobuf/MessageProto$Params;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->switchoverGameId_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$5402(Lcom/wufan/user/service/protobuf/MessageProto$Params;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->fromUid_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$5502(Lcom/wufan/user/service/protobuf/MessageProto$Params;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->isReconnect_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$5600(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$5700()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$5800(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$5900(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$6000(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$6100(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$6200(Lcom/google/protobuf/ByteString;)V
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

.method public static getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageProto$Params;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto;->l()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$Params;

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$Params;

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/MessageProto$Params;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$Params;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/MessageProto$Params;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$Params;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/user/service/protobuf/MessageProto$Params;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$Params;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/MessageProto$Params;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$Params;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wufan/user/service/protobuf/MessageProto$Params;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$Params;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wufan/user/service/protobuf/MessageProto$Params;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$Params;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/MessageProto$Params;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/wufan/user/service/protobuf/MessageProto$Params;

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
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getUid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getUid()I

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getToken()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getToken()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getRecordId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getRecordId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getLastMessageAddTime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getLastMessageAddTime()J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    cmp-long v6, v1, v4

    .line 67
    .line 68
    if-eqz v6, :cond_5

    .line 69
    .line 70
    return v3

    .line 71
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getIsInit()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getIsInit()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eq v1, v2, :cond_6

    .line 80
    .line 81
    return v3

    .line 82
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getGameId()J

    .line 83
    .line 84
    .line 85
    move-result-wide v1

    .line 86
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getGameId()J

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getServerName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getServerName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getResourceId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getResourceId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_9

    .line 123
    .line 124
    return v3

    .line 125
    :cond_9
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getJobId()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getJobId()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_a

    .line 138
    .line 139
    return v3

    .line 140
    :cond_a
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getSwitchoverGameId()J

    .line 141
    .line 142
    .line 143
    move-result-wide v1

    .line 144
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getSwitchoverGameId()J

    .line 145
    .line 146
    .line 147
    move-result-wide v4

    .line 148
    cmp-long v6, v1, v4

    .line 149
    .line 150
    if-eqz v6, :cond_b

    .line 151
    .line 152
    return v3

    .line 153
    :cond_b
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getFromUid()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getFromUid()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eq v1, v2, :cond_c

    .line 162
    .line 163
    return v3

    .line 164
    :cond_c
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getIsReconnect()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getIsReconnect()Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eq v1, v2, :cond_d

    .line 173
    .line 174
    return v3

    .line 175
    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 176
    .line 177
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 178
    .line 179
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-nez p1, :cond_e

    .line 184
    .line 185
    return v3

    .line 186
    :cond_e
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageProto$Params;
    .locals 1

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$Params;

    return-object v0
.end method

.method public getFromUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->fromUid_:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->gameId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getIsInit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->isInit_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIsReconnect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->isReconnect_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getJobId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->jobId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->jobId_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getJobIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->jobId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->jobId_:Ljava/lang/Object;

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

.method public getLastMessageAddTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->lastMessageAddTime_:J

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
            "Lcom/wufan/user/service/protobuf/MessageProto$Params;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecordId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->recordId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->recordId_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getRecordIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->recordId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->recordId_:Ljava/lang/Object;

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

.method public getResourceId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->resourceId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->resourceId_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getResourceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->resourceId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->resourceId_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->uid_:I

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getTokenBytes()Lcom/google/protobuf/ByteString;

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
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->token_:Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getRecordIdBytes()Lcom/google/protobuf/ByteString;

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
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->recordId_:Ljava/lang/Object;

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
    iget-wide v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->lastMessageAddTime_:J

    .line 55
    .line 56
    const-wide/16 v4, 0x0

    .line 57
    .line 58
    cmp-long v0, v2, v4

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    const/4 v0, 0x4

    .line 63
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    add-int/2addr v1, v0

    .line 68
    :cond_4
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->isInit_:Z

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    const/4 v2, 0x5

    .line 73
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    add-int/2addr v1, v0

    .line 78
    :cond_5
    iget-wide v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->gameId_:J

    .line 79
    .line 80
    cmp-long v0, v2, v4

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    const/4 v0, 0x6

    .line 85
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    add-int/2addr v1, v0

    .line 90
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getServerNameBytes()Lcom/google/protobuf/ByteString;

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
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->serverName_:Ljava/lang/Object;

    .line 102
    .line 103
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    add-int/2addr v1, v0

    .line 108
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getResourceIdBytes()Lcom/google/protobuf/ByteString;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_8

    .line 117
    .line 118
    const/16 v0, 0x8

    .line 119
    .line 120
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->resourceId_:Ljava/lang/Object;

    .line 121
    .line 122
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    add-int/2addr v1, v0

    .line 127
    :cond_8
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getJobIdBytes()Lcom/google/protobuf/ByteString;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_9

    .line 136
    .line 137
    const/16 v0, 0x9

    .line 138
    .line 139
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->jobId_:Ljava/lang/Object;

    .line 140
    .line 141
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    add-int/2addr v1, v0

    .line 146
    :cond_9
    iget-wide v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->switchoverGameId_:J

    .line 147
    .line 148
    cmp-long v0, v2, v4

    .line 149
    .line 150
    if-eqz v0, :cond_a

    .line 151
    .line 152
    const/16 v0, 0xa

    .line 153
    .line 154
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    add-int/2addr v1, v0

    .line 159
    :cond_a
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->fromUid_:I

    .line 160
    .line 161
    if-eqz v0, :cond_b

    .line 162
    .line 163
    const/16 v2, 0xb

    .line 164
    .line 165
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    add-int/2addr v1, v0

    .line 170
    :cond_b
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->isReconnect_:Z

    .line 171
    .line 172
    if-eqz v0, :cond_c

    .line 173
    .line 174
    const/16 v2, 0xc

    .line 175
    .line 176
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    add-int/2addr v1, v0

    .line 181
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    add-int/2addr v1, v0

    .line 188
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 189
    .line 190
    return v1
.end method

.method public getServerName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->serverName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->serverName_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getServerNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->serverName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->serverName_:Ljava/lang/Object;

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

.method public getSwitchoverGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->switchoverGameId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->token_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->token_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->token_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->token_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->uid_:I

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
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getUid()I

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getToken()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getRecordId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getLastMessageAddTime()J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getIsInit()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getGameId()J

    .line 95
    .line 96
    .line 97
    move-result-wide v2

    .line 98
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getServerName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    add-int/2addr v1, v0

    .line 118
    mul-int/lit8 v1, v1, 0x25

    .line 119
    .line 120
    add-int/lit8 v1, v1, 0x8

    .line 121
    .line 122
    mul-int/lit8 v1, v1, 0x35

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getResourceId()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    add-int/2addr v1, v0

    .line 133
    mul-int/lit8 v1, v1, 0x25

    .line 134
    .line 135
    add-int/lit8 v1, v1, 0x9

    .line 136
    .line 137
    mul-int/lit8 v1, v1, 0x35

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getJobId()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    add-int/2addr v1, v0

    .line 148
    mul-int/lit8 v1, v1, 0x25

    .line 149
    .line 150
    add-int/lit8 v1, v1, 0xa

    .line 151
    .line 152
    mul-int/lit8 v1, v1, 0x35

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getSwitchoverGameId()J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    add-int/2addr v1, v0

    .line 163
    mul-int/lit8 v1, v1, 0x25

    .line 164
    .line 165
    add-int/lit8 v1, v1, 0xb

    .line 166
    .line 167
    mul-int/lit8 v1, v1, 0x35

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getFromUid()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    add-int/2addr v1, v0

    .line 174
    mul-int/lit8 v1, v1, 0x25

    .line 175
    .line 176
    add-int/lit8 v1, v1, 0xc

    .line 177
    .line 178
    mul-int/lit8 v1, v1, 0x35

    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getIsReconnect()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    add-int/2addr v1, v0

    .line 189
    mul-int/lit8 v1, v1, 0x1d

    .line 190
    .line 191
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    add-int/2addr v1, v0

    .line 198
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 199
    .line 200
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto;->m()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 6
    .line 7
    const-class v2, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->newBuilderForType()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->newBuilderForType()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;
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
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/user/service/protobuf/MessageProto$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$Params;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    invoke-direct {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;-><init>(Lcom/wufan/user/service/protobuf/MessageProto$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    invoke-direct {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;-><init>(Lcom/wufan/user/service/protobuf/MessageProto$a;)V

    invoke-virtual {v0, p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

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
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->uid_:I

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getTokenBytes()Lcom/google/protobuf/ByteString;

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
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->token_:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getRecordIdBytes()Lcom/google/protobuf/ByteString;

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
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->recordId_:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->lastMessageAddTime_:J

    .line 42
    .line 43
    const-wide/16 v2, 0x0

    .line 44
    .line 45
    cmp-long v4, v0, v2

    .line 46
    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    const/4 v4, 0x4

    .line 50
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->isInit_:Z

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    const/4 v1, 0x5

    .line 58
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 59
    .line 60
    .line 61
    :cond_4
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->gameId_:J

    .line 62
    .line 63
    cmp-long v4, v0, v2

    .line 64
    .line 65
    if-eqz v4, :cond_5

    .line 66
    .line 67
    const/4 v4, 0x6

    .line 68
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 69
    .line 70
    .line 71
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getServerNameBytes()Lcom/google/protobuf/ByteString;

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
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->serverName_:Ljava/lang/Object;

    .line 83
    .line 84
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getResourceIdBytes()Lcom/google/protobuf/ByteString;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_7

    .line 96
    .line 97
    const/16 v0, 0x8

    .line 98
    .line 99
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->resourceId_:Ljava/lang/Object;

    .line 100
    .line 101
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getJobIdBytes()Lcom/google/protobuf/ByteString;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_8

    .line 113
    .line 114
    const/16 v0, 0x9

    .line 115
    .line 116
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->jobId_:Ljava/lang/Object;

    .line 117
    .line 118
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_8
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->switchoverGameId_:J

    .line 122
    .line 123
    cmp-long v4, v0, v2

    .line 124
    .line 125
    if-eqz v4, :cond_9

    .line 126
    .line 127
    const/16 v2, 0xa

    .line 128
    .line 129
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 130
    .line 131
    .line 132
    :cond_9
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->fromUid_:I

    .line 133
    .line 134
    if-eqz v0, :cond_a

    .line 135
    .line 136
    const/16 v1, 0xb

    .line 137
    .line 138
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 139
    .line 140
    .line 141
    :cond_a
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Params;->isReconnect_:Z

    .line 142
    .line 143
    if-eqz v0, :cond_b

    .line 144
    .line 145
    const/16 v1, 0xc

    .line 146
    .line 147
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 148
    .line 149
    .line 150
    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 151
    .line 152
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method
