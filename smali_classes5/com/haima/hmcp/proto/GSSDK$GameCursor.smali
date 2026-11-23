.class public final Lcom/haima/hmcp/proto/GSSDK$GameCursor;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/proto/GSSDK$GameCursorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GameCursor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;,
        Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;,
        Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameDataOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;,
        Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrameOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;
    }
.end annotation


# static fields
.field public static final CURSOR_HEIGHT_FIELD_NUMBER:I = 0x9

.field public static final CURSOR_POS_FIELD_NUMBER:I = 0x2

.field public static final CURSOR_STYLE_FIELD_NUMBER:I = 0x5

.field public static final CURSOR_WIDTH_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$GameCursor;

.field public static final GAME_CURSOR_DATA_FIELD_NUMBER:I = 0x6

.field public static final GAME_CURSOR_SYNC_SEQ_NUM_FIELD_NUMBER:I = 0x4

.field public static final ICON_CURSOR_HOT_SPOT_FIELD_NUMBER:I = 0x7

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/haima/hmcp/proto/GSSDK$GameCursor;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_OR_HIDE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private cursorHeight_:I

.field private cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

.field private cursorStyle_:I

.field private cursorWidth_:I

.field private gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

.field private gameCursorSyncSeqNum_:I

.field private iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

.field private memoizedIsInitialized:B

.field private showOrHide_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    .line 7
    .line 8
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->showOrHide_:Z

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->gameCursorSyncSeqNum_:I

    .line 9
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorStyle_:I

    .line 10
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorWidth_:I

    .line 11
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorHeight_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;-><init>()V

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_11

    .line 15
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_10

    const/16 v4, 0x8

    if-eq v2, v4, :cond_f

    const/16 v5, 0x12

    const/4 v6, 0x0

    if-eq v2, v5, :cond_c

    const/16 v5, 0x20

    if-eq v2, v5, :cond_b

    const/16 v7, 0x28

    if-eq v2, v7, :cond_9

    const/16 v4, 0x32

    if-eq v2, v4, :cond_6

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x40

    if-eq v2, v4, :cond_2

    const/16 v4, 0x48

    if-eq v2, v4, :cond_1

    .line 16
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 17
    :cond_1
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 18
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorHeight_:I

    goto :goto_0

    .line 19
    :cond_2
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorWidth_:I

    goto :goto_0

    .line 21
    :cond_3
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_4

    .line 22
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    invoke-virtual {v2}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    move-result-object v6

    .line 23
    :cond_4
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    if-eqz v6, :cond_5

    .line 24
    invoke-virtual {v6, v2}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    .line 25
    invoke-virtual {v6}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    move-result-object v2

    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 26
    :cond_5
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    goto :goto_0

    .line 27
    :cond_6
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_7

    .line 28
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    invoke-virtual {v2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData$Builder;

    move-result-object v6

    .line 29
    :cond_7
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    if-eqz v6, :cond_8

    .line 30
    invoke-virtual {v6, v2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData$Builder;

    .line 31
    invoke-virtual {v6}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    move-result-object v2

    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 32
    :cond_8
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    goto/16 :goto_0

    .line 33
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 34
    invoke-static {v2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->valueOf(I)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    move-result-object v3

    if-nez v3, :cond_a

    const/4 v3, 0x5

    .line 35
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 36
    :cond_a
    iget v3, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 37
    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorStyle_:I

    goto/16 :goto_0

    .line 38
    :cond_b
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 39
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->gameCursorSyncSeqNum_:I

    goto/16 :goto_0

    .line 40
    :cond_c
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_d

    .line 41
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    invoke-virtual {v2}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    move-result-object v6

    .line 42
    :cond_d
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    if-eqz v6, :cond_e

    .line 43
    invoke-virtual {v6, v2}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    .line 44
    invoke-virtual {v6}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    move-result-object v2

    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 45
    :cond_e
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    goto/16 :goto_0

    .line 46
    :cond_f
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 47
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->showOrHide_:Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_10
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 48
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 49
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 50
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 52
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 53
    throw p1

    .line 54
    :cond_11
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 55
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$10900()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$11102(Lcom/haima/hmcp/proto/GSSDK$GameCursor;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->showOrHide_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$11202(Lcom/haima/hmcp/proto/GSSDK$GameCursor;Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$11302(Lcom/haima/hmcp/proto/GSSDK$GameCursor;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->gameCursorSyncSeqNum_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$11402(Lcom/haima/hmcp/proto/GSSDK$GameCursor;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorStyle_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$11502(Lcom/haima/hmcp/proto/GSSDK$GameCursor;Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$11602(Lcom/haima/hmcp/proto/GSSDK$GameCursor;Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$11702(Lcom/haima/hmcp/proto/GSSDK$GameCursor;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorWidth_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$11802(Lcom/haima/hmcp/proto/GSSDK$GameCursor;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorHeight_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$11902(Lcom/haima/hmcp/proto/GSSDK$GameCursor;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$12000(Lcom/haima/hmcp/proto/GSSDK$GameCursor;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$8100()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static newBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/haima/hmcp/proto/GSSDK$GameCursor;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$GameCursor;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/haima/hmcp/proto/GSSDK$GameCursor;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

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
    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasShowOrHide()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasShowOrHide()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasShowOrHide()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getShowOrHide()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getShowOrHide()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/4 v1, 0x0

    .line 51
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorPos()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorPos()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-ne v1, v2, :cond_5

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    goto :goto_2

    .line 65
    :cond_5
    const/4 v1, 0x0

    .line 66
    :goto_2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorPos()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_7

    .line 71
    .line 72
    if-eqz v1, :cond_6

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getCursorPos()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getCursorPos()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_6

    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    goto :goto_3

    .line 90
    :cond_6
    const/4 v1, 0x0

    .line 91
    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasGameCursorSyncSeqNum()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasGameCursorSyncSeqNum()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-ne v1, v2, :cond_8

    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    goto :goto_4

    .line 105
    :cond_8
    const/4 v1, 0x0

    .line 106
    :goto_4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasGameCursorSyncSeqNum()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_a

    .line 111
    .line 112
    if-eqz v1, :cond_9

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getGameCursorSyncSeqNum()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getGameCursorSyncSeqNum()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-ne v1, v2, :cond_9

    .line 123
    .line 124
    const/4 v1, 0x1

    .line 125
    goto :goto_5

    .line 126
    :cond_9
    const/4 v1, 0x0

    .line 127
    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorStyle()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorStyle()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-ne v1, v2, :cond_b

    .line 138
    .line 139
    const/4 v1, 0x1

    .line 140
    goto :goto_6

    .line 141
    :cond_b
    const/4 v1, 0x0

    .line 142
    :goto_6
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorStyle()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_d

    .line 147
    .line 148
    if-eqz v1, :cond_c

    .line 149
    .line 150
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorStyle_:I

    .line 151
    .line 152
    iget v2, p1, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorStyle_:I

    .line 153
    .line 154
    if-ne v1, v2, :cond_c

    .line 155
    .line 156
    const/4 v1, 0x1

    .line 157
    goto :goto_7

    .line 158
    :cond_c
    const/4 v1, 0x0

    .line 159
    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasGameCursorData()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasGameCursorData()Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-ne v1, v2, :cond_e

    .line 170
    .line 171
    const/4 v1, 0x1

    .line 172
    goto :goto_8

    .line 173
    :cond_e
    const/4 v1, 0x0

    .line 174
    :goto_8
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasGameCursorData()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_10

    .line 179
    .line 180
    if-eqz v1, :cond_f

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getGameCursorData()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getGameCursorData()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_f

    .line 195
    .line 196
    const/4 v1, 0x1

    .line 197
    goto :goto_9

    .line 198
    :cond_f
    const/4 v1, 0x0

    .line 199
    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasIconCursorHotSpot()Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasIconCursorHotSpot()Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-ne v1, v2, :cond_11

    .line 210
    .line 211
    const/4 v1, 0x1

    .line 212
    goto :goto_a

    .line 213
    :cond_11
    const/4 v1, 0x0

    .line 214
    :goto_a
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasIconCursorHotSpot()Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_13

    .line 219
    .line 220
    if-eqz v1, :cond_12

    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getIconCursorHotSpot()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getIconCursorHotSpot()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_12

    .line 235
    .line 236
    const/4 v1, 0x1

    .line 237
    goto :goto_b

    .line 238
    :cond_12
    const/4 v1, 0x0

    .line 239
    :cond_13
    :goto_b
    if-eqz v1, :cond_14

    .line 240
    .line 241
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorWidth()Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorWidth()Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-ne v1, v2, :cond_14

    .line 250
    .line 251
    const/4 v1, 0x1

    .line 252
    goto :goto_c

    .line 253
    :cond_14
    const/4 v1, 0x0

    .line 254
    :goto_c
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorWidth()Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_16

    .line 259
    .line 260
    if-eqz v1, :cond_15

    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getCursorWidth()I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getCursorWidth()I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-ne v1, v2, :cond_15

    .line 271
    .line 272
    const/4 v1, 0x1

    .line 273
    goto :goto_d

    .line 274
    :cond_15
    const/4 v1, 0x0

    .line 275
    :cond_16
    :goto_d
    if-eqz v1, :cond_17

    .line 276
    .line 277
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorHeight()Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorHeight()Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-ne v1, v2, :cond_17

    .line 286
    .line 287
    const/4 v1, 0x1

    .line 288
    goto :goto_e

    .line 289
    :cond_17
    const/4 v1, 0x0

    .line 290
    :goto_e
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorHeight()Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_19

    .line 295
    .line 296
    if-eqz v1, :cond_18

    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getCursorHeight()I

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getCursorHeight()I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-ne v1, v2, :cond_18

    .line 307
    .line 308
    const/4 v1, 0x1

    .line 309
    goto :goto_f

    .line 310
    :cond_18
    const/4 v1, 0x0

    .line 311
    :cond_19
    :goto_f
    if-eqz v1, :cond_1a

    .line 312
    .line 313
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 314
    .line 315
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 316
    .line 317
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    if-eqz p1, :cond_1a

    .line 322
    .line 323
    goto :goto_10

    .line 324
    :cond_1a
    const/4 v0, 0x0

    .line 325
    :goto_10
    return v0
.end method

.method public getCursorHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorHeight_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCursorPos()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getCursorPosOrBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePosOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorPos_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getCursorStyle()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorStyle_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->valueOf(I)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_DEFAULT:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getCursorWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorWidth_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$GameCursor;
    .locals 1

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    return-object v0
.end method

.method public getGameCursorData()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getGameCursorDataOrBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameDataOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->gameCursorData_:Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getGameCursorSyncSeqNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->gameCursorSyncSeqNum_:I

    .line 2
    .line 3
    return v0
.end method

.method public getIconCursorHotSpot()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getIconCursorHotSpotOrBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePosOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->iconCursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/haima/hmcp/proto/GSSDK$GameCursor;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->showOrHide_:Z

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v2, v0

    .line 21
    :cond_1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    and-int/2addr v0, v1

    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getCursorPos()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v2, v0

    .line 36
    :cond_2
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    and-int/2addr v0, v1

    .line 40
    if-ne v0, v1, :cond_3

    .line 41
    .line 42
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->gameCursorSyncSeqNum_:I

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    add-int/2addr v2, v0

    .line 49
    :cond_3
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 50
    .line 51
    const/16 v1, 0x8

    .line 52
    .line 53
    and-int/2addr v0, v1

    .line 54
    if-ne v0, v1, :cond_4

    .line 55
    .line 56
    const/4 v0, 0x5

    .line 57
    iget v3, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorStyle_:I

    .line 58
    .line 59
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/2addr v2, v0

    .line 64
    :cond_4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 65
    .line 66
    const/16 v3, 0x10

    .line 67
    .line 68
    and-int/2addr v0, v3

    .line 69
    if-ne v0, v3, :cond_5

    .line 70
    .line 71
    const/4 v0, 0x6

    .line 72
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getGameCursorData()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    add-int/2addr v2, v0

    .line 81
    :cond_5
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 82
    .line 83
    const/16 v3, 0x20

    .line 84
    .line 85
    and-int/2addr v0, v3

    .line 86
    if-ne v0, v3, :cond_6

    .line 87
    .line 88
    const/4 v0, 0x7

    .line 89
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getIconCursorHotSpot()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    add-int/2addr v2, v0

    .line 98
    :cond_6
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 99
    .line 100
    const/16 v3, 0x40

    .line 101
    .line 102
    and-int/2addr v0, v3

    .line 103
    if-ne v0, v3, :cond_7

    .line 104
    .line 105
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorWidth_:I

    .line 106
    .line 107
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    add-int/2addr v2, v0

    .line 112
    :cond_7
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 113
    .line 114
    const/16 v1, 0x80

    .line 115
    .line 116
    and-int/2addr v0, v1

    .line 117
    if-ne v0, v1, :cond_8

    .line 118
    .line 119
    const/16 v0, 0x9

    .line 120
    .line 121
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorHeight_:I

    .line 122
    .line 123
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    add-int/2addr v2, v0

    .line 128
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    add-int/2addr v2, v0

    .line 135
    iput v2, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 136
    .line 137
    return v2
.end method

.method public getShowOrHide()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->showOrHide_:Z

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

.method public hasCursorHeight()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasCursorPos()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public hasCursorStyle()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasCursorWidth()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasGameCursorData()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasGameCursorSyncSeqNum()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public hasIconCursorHotSpot()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasShowOrHide()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    return v1
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
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasShowOrHide()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    mul-int/lit8 v1, v1, 0x25

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    mul-int/lit8 v1, v1, 0x35

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getShowOrHide()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v1, v0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorPos()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    mul-int/lit8 v1, v1, 0x25

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x2

    .line 47
    .line 48
    mul-int/lit8 v1, v1, 0x35

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getCursorPos()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/2addr v1, v0

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasGameCursorSyncSeqNum()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    mul-int/lit8 v1, v1, 0x25

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x4

    .line 68
    .line 69
    mul-int/lit8 v1, v1, 0x35

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getGameCursorSyncSeqNum()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    add-int/2addr v1, v0

    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorStyle()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    mul-int/lit8 v1, v1, 0x25

    .line 83
    .line 84
    add-int/lit8 v1, v1, 0x5

    .line 85
    .line 86
    mul-int/lit8 v1, v1, 0x35

    .line 87
    .line 88
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorStyle_:I

    .line 89
    .line 90
    add-int/2addr v1, v0

    .line 91
    :cond_4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasGameCursorData()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    mul-int/lit8 v1, v1, 0x25

    .line 98
    .line 99
    add-int/lit8 v1, v1, 0x6

    .line 100
    .line 101
    mul-int/lit8 v1, v1, 0x35

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getGameCursorData()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    add-int/2addr v1, v0

    .line 112
    :cond_5
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasIconCursorHotSpot()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_6

    .line 117
    .line 118
    mul-int/lit8 v1, v1, 0x25

    .line 119
    .line 120
    add-int/lit8 v1, v1, 0x7

    .line 121
    .line 122
    mul-int/lit8 v1, v1, 0x35

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getIconCursorHotSpot()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->hashCode()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    add-int/2addr v1, v0

    .line 133
    :cond_6
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorWidth()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    mul-int/lit8 v1, v1, 0x25

    .line 140
    .line 141
    add-int/lit8 v1, v1, 0x8

    .line 142
    .line 143
    mul-int/lit8 v1, v1, 0x35

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getCursorWidth()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    add-int/2addr v1, v0

    .line 150
    :cond_7
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->hasCursorHeight()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_8

    .line 155
    .line 156
    mul-int/lit8 v1, v1, 0x25

    .line 157
    .line 158
    add-int/lit8 v1, v1, 0x9

    .line 159
    .line 160
    mul-int/lit8 v1, v1, 0x35

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getCursorHeight()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    add-int/2addr v1, v0

    .line 167
    :cond_8
    mul-int/lit8 v1, v1, 0x1d

    .line 168
    .line 169
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    add-int/2addr v1, v0

    .line 176
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 177
    .line 178
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$8200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    .line 6
    .line 7
    const-class v2, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

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
    iget-byte v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->newBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/haima/hmcp/proto/GSSDK$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$GameCursor;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    invoke-direct {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;-><init>(Lcom/haima/hmcp/proto/GSSDK$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    invoke-direct {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;-><init>(Lcom/haima/hmcp/proto/GSSDK$1;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$GameCursor;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->showOrHide_:Z

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getCursorPos()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    and-int/2addr v0, v1

    .line 29
    if-ne v0, v1, :cond_2

    .line 30
    .line 31
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->gameCursorSyncSeqNum_:I

    .line 32
    .line 33
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 37
    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    and-int/2addr v0, v1

    .line 41
    if-ne v0, v1, :cond_3

    .line 42
    .line 43
    const/4 v0, 0x5

    .line 44
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorStyle_:I

    .line 45
    .line 46
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 50
    .line 51
    const/16 v2, 0x10

    .line 52
    .line 53
    and-int/2addr v0, v2

    .line 54
    if-ne v0, v2, :cond_4

    .line 55
    .line 56
    const/4 v0, 0x6

    .line 57
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getGameCursorData()Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameData;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 65
    .line 66
    const/16 v2, 0x20

    .line 67
    .line 68
    and-int/2addr v0, v2

    .line 69
    if-ne v0, v2, :cond_5

    .line 70
    .line 71
    const/4 v0, 0x7

    .line 72
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getIconCursorHotSpot()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 77
    .line 78
    .line 79
    :cond_5
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 80
    .line 81
    const/16 v2, 0x40

    .line 82
    .line 83
    and-int/2addr v0, v2

    .line 84
    if-ne v0, v2, :cond_6

    .line 85
    .line 86
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorWidth_:I

    .line 87
    .line 88
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 89
    .line 90
    .line 91
    :cond_6
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->bitField0_:I

    .line 92
    .line 93
    const/16 v1, 0x80

    .line 94
    .line 95
    and-int/2addr v0, v1

    .line 96
    if-ne v0, v1, :cond_7

    .line 97
    .line 98
    const/16 v0, 0x9

    .line 99
    .line 100
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->cursorHeight_:I

    .line 101
    .line 102
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 103
    .line 104
    .line 105
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
