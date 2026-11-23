.class public final Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrameOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK$GameCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CursorFrame"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;
    }
.end annotation


# static fields
.field public static final CURSOR_HOT_SPOT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

.field public static final FRAME_DATA_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STEP_FRAME_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private cursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

.field private frameData_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private stepFrame_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    .line 7
    .line 8
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->stepFrame_:I

    .line 8
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->frameData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;-><init>()V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0x8

    if-eq v2, v4, :cond_5

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 14
    :cond_1
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->bitField0_:I

    .line 15
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->frameData_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 16
    :cond_2
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    .line 17
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->cursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    invoke-virtual {v2}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 18
    :goto_1
    sget-object v4, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    iput-object v4, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->cursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    if-eqz v2, :cond_4

    .line 19
    invoke-virtual {v2, v4}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;

    .line 20
    invoke-virtual {v2}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    move-result-object v2

    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->cursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 21
    :cond_4
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->bitField0_:I

    goto :goto_0

    .line 22
    :cond_5
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->bitField0_:I

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->stepFrame_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 24
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 25
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 26
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 29
    throw p1

    .line 30
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 31
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
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$8700()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$8902(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->stepFrame_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$9002(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;)Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->cursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$9102(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->frameData_:Lcom/google/protobuf/ByteString;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$9202(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->bitField0_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$9300(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$8300()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static newBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

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
    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->hasStepFrame()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->hasStepFrame()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->hasStepFrame()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->getStepFrame()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->getStepFrame()I

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->hasCursorHotSpot()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->hasCursorHotSpot()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->hasCursorHotSpot()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->getCursorHotSpot()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->getCursorHotSpot()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->hasFrameData()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->hasFrameData()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->hasFrameData()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->getFrameData()Lcom/google/protobuf/ByteString;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->getFrameData()Lcom/google/protobuf/ByteString;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_9

    .line 127
    .line 128
    const/4 v1, 0x1

    .line 129
    goto :goto_5

    .line 130
    :cond_9
    const/4 v1, 0x0

    .line 131
    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 132
    .line 133
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 136
    .line 137
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_b

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_b
    const/4 v0, 0x0

    .line 145
    :goto_6
    return v0
.end method

.method public getCursorHotSpot()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->cursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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

.method public getCursorHotSpotOrBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePosOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->cursorHotSpot_:Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;
    .locals 1

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    return-object v0
.end method

.method public getFrameData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->frameData_:Lcom/google/protobuf/ByteString;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->stepFrame_:I

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v2, v0

    .line 21
    :cond_1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->bitField0_:I

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    and-int/2addr v0, v1

    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->getCursorHotSpot()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->bitField0_:I

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    and-int/2addr v0, v1

    .line 40
    if-ne v0, v1, :cond_3

    .line 41
    .line 42
    const/4 v0, 0x3

    .line 43
    iget-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->frameData_:Lcom/google/protobuf/ByteString;

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/2addr v2, v0

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/2addr v2, v0

    .line 57
    iput v2, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 58
    .line 59
    return v2
.end method

.method public getStepFrame()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->stepFrame_:I

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

.method public hasCursorHotSpot()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->bitField0_:I

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

.method public hasFrameData()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->bitField0_:I

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

.method public hasStepFrame()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->bitField0_:I

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
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->hasStepFrame()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->getStepFrame()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v1, v0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->hasCursorHotSpot()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    mul-int/lit8 v1, v1, 0x25

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x2

    .line 43
    .line 44
    mul-int/lit8 v1, v1, 0x35

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->getCursorHotSpot()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/2addr v1, v0

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->hasFrameData()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    mul-int/lit8 v1, v1, 0x25

    .line 62
    .line 63
    add-int/lit8 v1, v1, 0x3

    .line 64
    .line 65
    mul-int/lit8 v1, v1, 0x35

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->getFrameData()Lcom/google/protobuf/ByteString;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    add-int/2addr v1, v0

    .line 76
    :cond_3
    mul-int/lit8 v1, v1, 0x1d

    .line 77
    .line 78
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    add-int/2addr v1, v0

    .line 85
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 86
    .line 87
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$8400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    .line 6
    .line 7
    const-class v2, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;

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
    iget-byte v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->newBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/haima/hmcp/proto/GSSDK$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;

    invoke-direct {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;-><init>(Lcom/haima/hmcp/proto/GSSDK$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;

    invoke-direct {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;-><init>(Lcom/haima/hmcp/proto/GSSDK$1;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame$Builder;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->stepFrame_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->getCursorHotSpot()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->bitField0_:I

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    and-int/2addr v0, v1

    .line 29
    if-ne v0, v1, :cond_2

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    iget-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;->frameData_:Lcom/google/protobuf/ByteString;

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
