.class public final Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotifyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IMEStatusNotify"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

.field public static final GAMEPAD_STATE_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_TYPE_FIELD_NUMBER:I = 0x2

.field public static final TERMINAL_TYPE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private gamepadState_:Lcom/haima/hmcp/proto/GSSDK$GamepadState;

.field private memoizedIsInitialized:B

.field private statusType_:I

.field private terminalType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    .line 7
    .line 8
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->terminalType_:I

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->statusType_:I

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
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;-><init>()V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    const/16 v4, 0x8

    if-eq v2, v4, :cond_6

    const/16 v4, 0x10

    if-eq v2, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 14
    :cond_1
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    .line 15
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->gamepadState_:Lcom/haima/hmcp/proto/GSSDK$GamepadState;

    invoke-virtual {v2}, Lcom/haima/hmcp/proto/GSSDK$GamepadState;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$GamepadState$Builder;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 16
    :goto_1
    sget-object v4, Lcom/haima/hmcp/proto/GSSDK$GamepadState;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/haima/hmcp/proto/GSSDK$GamepadState;

    iput-object v4, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->gamepadState_:Lcom/haima/hmcp/proto/GSSDK$GamepadState;

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v2, v4}, Lcom/haima/hmcp/proto/GSSDK$GamepadState$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$GamepadState;)Lcom/haima/hmcp/proto/GSSDK$GamepadState$Builder;

    .line 18
    invoke-virtual {v2}, Lcom/haima/hmcp/proto/GSSDK$GamepadState$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$GamepadState;

    move-result-object v2

    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->gamepadState_:Lcom/haima/hmcp/proto/GSSDK$GamepadState;

    .line 19
    :cond_3
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->bitField0_:I

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 21
    invoke-static {v2}, Lcom/haima/hmcp/proto/GSSDK$StatusType;->valueOf(I)Lcom/haima/hmcp/proto/GSSDK$StatusType;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_5

    .line 22
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 23
    :cond_5
    iget v3, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->bitField0_:I

    .line 24
    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->statusType_:I

    goto :goto_0

    .line 25
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 26
    invoke-static {v2}, Lcom/haima/hmcp/proto/GSSDK$ClientType;->valueOf(I)Lcom/haima/hmcp/proto/GSSDK$ClientType;

    move-result-object v4

    if-nez v4, :cond_7

    .line 27
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 28
    :cond_7
    iget v4, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->bitField0_:I

    .line 29
    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->terminalType_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_8
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 30
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 31
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 32
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 34
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 35
    throw p1

    .line 36
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 37
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
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$6300()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$6502(Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->terminalType_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6602(Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->statusType_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6702(Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;Lcom/haima/hmcp/proto/GSSDK$GamepadState;)Lcom/haima/hmcp/proto/GSSDK$GamepadState;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->gamepadState_:Lcom/haima/hmcp/proto/GSSDK$GamepadState;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$6802(Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->bitField0_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6900(Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$5900()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static newBuilder()Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;)Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;)Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

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
    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->hasTerminalType()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->hasTerminalType()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->hasTerminalType()Z

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
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->terminalType_:I

    .line 39
    .line 40
    iget v2, p1, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->terminalType_:I

    .line 41
    .line 42
    if-ne v1, v2, :cond_3

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    const/4 v1, 0x0

    .line 47
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->hasStatusType()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->hasStatusType()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-ne v1, v2, :cond_5

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    goto :goto_2

    .line 61
    :cond_5
    const/4 v1, 0x0

    .line 62
    :goto_2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->hasStatusType()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_7

    .line 67
    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->statusType_:I

    .line 71
    .line 72
    iget v2, p1, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->statusType_:I

    .line 73
    .line 74
    if-ne v1, v2, :cond_6

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    goto :goto_3

    .line 78
    :cond_6
    const/4 v1, 0x0

    .line 79
    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->hasGamepadState()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->hasGamepadState()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-ne v1, v2, :cond_8

    .line 90
    .line 91
    const/4 v1, 0x1

    .line 92
    goto :goto_4

    .line 93
    :cond_8
    const/4 v1, 0x0

    .line 94
    :goto_4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->hasGamepadState()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_a

    .line 99
    .line 100
    if-eqz v1, :cond_9

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->getGamepadState()Lcom/haima/hmcp/proto/GSSDK$GamepadState;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->getGamepadState()Lcom/haima/hmcp/proto/GSSDK$GamepadState;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/proto/GSSDK$GamepadState;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_9

    .line 115
    .line 116
    const/4 v1, 0x1

    .line 117
    goto :goto_5

    .line 118
    :cond_9
    const/4 v1, 0x0

    .line 119
    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 120
    .line 121
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 122
    .line 123
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 124
    .line 125
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_b

    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_b
    const/4 v0, 0x0

    .line 133
    :goto_6
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;
    .locals 1

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    return-object v0
.end method

.method public getGamepadState()Lcom/haima/hmcp/proto/GSSDK$GamepadState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->gamepadState_:Lcom/haima/hmcp/proto/GSSDK$GamepadState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GamepadState;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$GamepadState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getGamepadStateOrBuilder()Lcom/haima/hmcp/proto/GSSDK$GamepadStateOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->gamepadState_:Lcom/haima/hmcp/proto/GSSDK$GamepadState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GamepadState;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$GamepadState;

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
            "Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->PARSER:Lcom/google/protobuf/Parser;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->terminalType_:I

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v2, v0

    .line 21
    :cond_1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->bitField0_:I

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    and-int/2addr v0, v1

    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->statusType_:I

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v2, v0

    .line 34
    :cond_2
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->bitField0_:I

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    and-int/2addr v0, v1

    .line 38
    if-ne v0, v1, :cond_3

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->getGamepadState()Lcom/haima/hmcp/proto/GSSDK$GamepadState;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

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

.method public getStatusType()Lcom/haima/hmcp/proto/GSSDK$StatusType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->statusType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/proto/GSSDK$StatusType;->valueOf(I)Lcom/haima/hmcp/proto/GSSDK$StatusType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$StatusType;->STATUS_HIDE:Lcom/haima/hmcp/proto/GSSDK$StatusType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getTerminalType()Lcom/haima/hmcp/proto/GSSDK$ClientType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->terminalType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/proto/GSSDK$ClientType;->valueOf(I)Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->NONE:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 10
    .line 11
    :cond_0
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

.method public hasGamepadState()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->bitField0_:I

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

.method public hasStatusType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->bitField0_:I

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

.method public hasTerminalType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->bitField0_:I

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
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->hasTerminalType()Z

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->terminalType_:I

    .line 30
    .line 31
    add-int/2addr v1, v0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->hasStatusType()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    mul-int/lit8 v1, v1, 0x25

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x2

    .line 41
    .line 42
    mul-int/lit8 v1, v1, 0x35

    .line 43
    .line 44
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->statusType_:I

    .line 45
    .line 46
    add-int/2addr v1, v0

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->hasGamepadState()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    mul-int/lit8 v1, v1, 0x25

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x3

    .line 56
    .line 57
    mul-int/lit8 v1, v1, 0x35

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->getGamepadState()Lcom/haima/hmcp/proto/GSSDK$GamepadState;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$GamepadState;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    add-int/2addr v1, v0

    .line 68
    :cond_3
    mul-int/lit8 v1, v1, 0x1d

    .line 69
    .line 70
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/2addr v1, v0

    .line 77
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 78
    .line 79
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$6000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    .line 6
    .line 7
    const-class v2, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;

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
    iget-byte v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->newBuilder()Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/haima/hmcp/proto/GSSDK$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;

    invoke-direct {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;-><init>(Lcom/haima/hmcp/proto/GSSDK$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;

    invoke-direct {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;-><init>(Lcom/haima/hmcp/proto/GSSDK$1;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;)Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify$Builder;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->terminalType_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->statusType_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->bitField0_:I

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    and-int/2addr v0, v1

    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;->getGamepadState()Lcom/haima/hmcp/proto/GSSDK$GamepadState;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

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
