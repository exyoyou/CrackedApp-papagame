.class public final Lcom/wufan/friend/chat/protocol/Response;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/p0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/Response$b;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/Response;

.field public static final INS_FIELD_NUMBER:I = 0x6

.field public static final MESSAGE_FIELD_NUMBER:I = 0x8

.field public static final NOTIFICATIONTYPE_FIELD_NUMBER:I = 0x9

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/Response;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x5

.field public static final REQUESTID_FIELD_NUMBER:I = 0x1

.field public static final RESPONSETYPE_FIELD_NUMBER:I = 0x3

.field public static final SERVICE_FIELD_NUMBER:I = 0x4

.field public static final STATUS_FIELD_NUMBER:I = 0x7

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private data_:Lcom/wufan/friend/chat/protocol/ResponseData;

.field private volatile ins_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile message_:Ljava/lang/Object;

.field private notificationType_:I

.field private path_:I

.field private requestId_:J

.field private responseType_:I

.field private service_:I

.field private status_:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/Response;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/Response;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wufan/friend/chat/protocol/Response;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/Response;

    .line 7
    .line 8
    new-instance v0, Lcom/wufan/friend/chat/protocol/Response$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/Response$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/wufan/friend/chat/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/wufan/friend/chat/protocol/Response;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response;->responseType_:I

    .line 8
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response;->service_:I

    .line 9
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response;->path_:I

    const-string v1, ""

    .line 10
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/Response;->ins_:Ljava/lang/Object;

    .line 11
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response;->status_:I

    .line 12
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/Response;->message_:Ljava/lang/Object;

    .line 13
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response;->notificationType_:I

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

    .line 14
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/Response;-><init>()V

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 18
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_3

    .line 19
    :sswitch_0
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/Response;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/ResponseData;->toBuilder()Lcom/wufan/friend/chat/protocol/ResponseData$b;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 21
    :goto_1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ResponseData;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/ResponseData;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/Response;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v2, v3}, Lcom/wufan/friend/chat/protocol/ResponseData$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/ResponseData;)Lcom/wufan/friend/chat/protocol/ResponseData$b;

    .line 23
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/ResponseData$b;->buildPartial()Lcom/wufan/friend/chat/protocol/ResponseData;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/Response;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    goto :goto_0

    .line 24
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 25
    iput v2, p0, Lcom/wufan/friend/chat/protocol/Response;->notificationType_:I

    goto :goto_0

    .line 26
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/Response;->message_:Ljava/lang/Object;

    goto :goto_0

    .line 28
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 29
    iput v2, p0, Lcom/wufan/friend/chat/protocol/Response;->status_:I

    goto :goto_0

    .line 30
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 31
    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/Response;->ins_:Ljava/lang/Object;

    goto :goto_0

    .line 32
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 33
    iput v2, p0, Lcom/wufan/friend/chat/protocol/Response;->path_:I

    goto :goto_0

    .line 34
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 35
    iput v2, p0, Lcom/wufan/friend/chat/protocol/Response;->service_:I

    goto :goto_0

    .line 36
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 37
    iput v2, p0, Lcom/wufan/friend/chat/protocol/Response;->responseType_:I

    goto :goto_0

    .line 38
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wufan/friend/chat/protocol/Response;->timestamp_:J

    goto :goto_0

    .line 39
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wufan/friend/chat/protocol/Response;->requestId_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    :sswitch_a
    const/4 v1, 0x1

    goto :goto_0

    :goto_3
    if-nez v2, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 40
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 41
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 42
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :goto_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 45
    throw p1

    .line 46
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 47
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x18 -> :sswitch_7
        0x20 -> :sswitch_6
        0x28 -> :sswitch_5
        0x32 -> :sswitch_4
        0x38 -> :sswitch_3
        0x42 -> :sswitch_2
        0x48 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/wufan/friend/chat/protocol/Response$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/Response;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/wufan/friend/chat/protocol/Response;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/friend/chat/protocol/Response$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/Response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/wufan/friend/chat/protocol/Response;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufan/friend/chat/protocol/Response;->status_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1002(Lcom/wufan/friend/chat/protocol/Response;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response;->status_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1100(Lcom/wufan/friend/chat/protocol/Response;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/friend/chat/protocol/Response;->message_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1102(Lcom/wufan/friend/chat/protocol/Response;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/Response;->message_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1200(Lcom/wufan/friend/chat/protocol/Response;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufan/friend/chat/protocol/Response;->notificationType_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1202(Lcom/wufan/friend/chat/protocol/Response;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response;->notificationType_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1302(Lcom/wufan/friend/chat/protocol/Response;Lcom/wufan/friend/chat/protocol/ResponseData;)Lcom/wufan/friend/chat/protocol/ResponseData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/Response;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1400(Lcom/wufan/friend/chat/protocol/Response;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1500()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$1700(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$402(Lcom/wufan/friend/chat/protocol/Response;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/Response;->requestId_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$502(Lcom/wufan/friend/chat/protocol/Response;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/Response;->timestamp_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$600(Lcom/wufan/friend/chat/protocol/Response;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufan/friend/chat/protocol/Response;->responseType_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$602(Lcom/wufan/friend/chat/protocol/Response;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response;->responseType_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$700(Lcom/wufan/friend/chat/protocol/Response;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufan/friend/chat/protocol/Response;->service_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$702(Lcom/wufan/friend/chat/protocol/Response;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response;->service_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$800(Lcom/wufan/friend/chat/protocol/Response;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufan/friend/chat/protocol/Response;->path_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$802(Lcom/wufan/friend/chat/protocol/Response;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response;->path_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$900(Lcom/wufan/friend/chat/protocol/Response;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/friend/chat/protocol/Response;->ins_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$902(Lcom/wufan/friend/chat/protocol/Response;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/Response;->ins_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method public static getDefaultInstance()Lcom/wufan/friend/chat/protocol/Response;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/Response;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->y:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/Response;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/Response;->toBuilder()Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wufan/friend/chat/protocol/Response;)Lcom/wufan/friend/chat/protocol/Response$b;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/Response;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/Response;->toBuilder()Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wufan/friend/chat/protocol/Response$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/Response;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/Response;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/Response;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/Response;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/Response;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/Response;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/Response;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/Response;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/Response;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/Response;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wufan/friend/chat/protocol/Response;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/Response;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/Response;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wufan/friend/chat/protocol/Response;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/Response;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/Response;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/Response;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/Response;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/wufan/friend/chat/protocol/Response;

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
    check-cast p1, Lcom/wufan/friend/chat/protocol/Response;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getRequestId()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getRequestId()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    const/4 v5, 0x0

    .line 25
    cmp-long v6, v1, v3

    .line 26
    .line 27
    if-eqz v6, :cond_2

    .line 28
    .line 29
    return v5

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getTimestamp()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getTimestamp()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    cmp-long v6, v1, v3

    .line 39
    .line 40
    if-eqz v6, :cond_3

    .line 41
    .line 42
    return v5

    .line 43
    :cond_3
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response;->responseType_:I

    .line 44
    .line 45
    iget v2, p1, Lcom/wufan/friend/chat/protocol/Response;->responseType_:I

    .line 46
    .line 47
    if-eq v1, v2, :cond_4

    .line 48
    .line 49
    return v5

    .line 50
    :cond_4
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response;->service_:I

    .line 51
    .line 52
    iget v2, p1, Lcom/wufan/friend/chat/protocol/Response;->service_:I

    .line 53
    .line 54
    if-eq v1, v2, :cond_5

    .line 55
    .line 56
    return v5

    .line 57
    :cond_5
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response;->path_:I

    .line 58
    .line 59
    iget v2, p1, Lcom/wufan/friend/chat/protocol/Response;->path_:I

    .line 60
    .line 61
    if-eq v1, v2, :cond_6

    .line 62
    .line 63
    return v5

    .line 64
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getIns()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getIns()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v5

    .line 79
    :cond_7
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response;->status_:I

    .line 80
    .line 81
    iget v2, p1, Lcom/wufan/friend/chat/protocol/Response;->status_:I

    .line 82
    .line 83
    if-eq v1, v2, :cond_8

    .line 84
    .line 85
    return v5

    .line 86
    :cond_8
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getMessage()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v5

    .line 101
    :cond_9
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response;->notificationType_:I

    .line 102
    .line 103
    iget v2, p1, Lcom/wufan/friend/chat/protocol/Response;->notificationType_:I

    .line 104
    .line 105
    if-eq v1, v2, :cond_a

    .line 106
    .line 107
    return v5

    .line 108
    :cond_a
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->hasData()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->hasData()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eq v1, v2, :cond_b

    .line 117
    .line 118
    return v5

    .line 119
    :cond_b
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->hasData()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_c

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/ResponseData;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_c

    .line 138
    .line 139
    return v5

    .line 140
    :cond_c
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 141
    .line 142
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 143
    .line 144
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-nez p1, :cond_d

    .line 149
    .line 150
    return v5

    .line 151
    :cond_d
    return v0
.end method

.method public getData()Lcom/wufan/friend/chat/protocol/ResponseData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ResponseData;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getDataOrBuilder()Lcom/wufan/friend/chat/protocol/o0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/Response;
    .locals 1

    .line 3
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/Response;

    return-object v0
.end method

.method public getIns()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response;->ins_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/Response;->ins_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getInsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response;->ins_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/Response;->ins_:Ljava/lang/Object;

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

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response;->message_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/Response;->message_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response;->message_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/Response;->message_:Ljava/lang/Object;

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

.method public getNotificationType()Lcom/wufan/friend/chat/protocol/NotificationType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->notificationType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/NotificationType;->valueOf(I)Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationType;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getNotificationTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->notificationType_:I

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
            "Lcom/wufan/friend/chat/protocol/Response;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPath()Lcom/wufan/friend/chat/protocol/ServicePath;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->path_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/ServicePath;->valueOf(I)Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/friend/chat/protocol/ServicePath;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getPathValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->path_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRequestId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/Response;->requestId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getResponseType()Lcom/wufan/friend/chat/protocol/ResponseType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->responseType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/ResponseType;->valueOf(I)Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseType;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getResponseTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->responseType_:I

    .line 2
    .line 3
    return v0
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
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/Response;->requestId_:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    cmp-long v5, v0, v2

    .line 13
    .line 14
    if-eqz v5, :cond_1

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    invoke-static {v5, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/2addr v4, v0

    .line 22
    :cond_1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/Response;->timestamp_:J

    .line 23
    .line 24
    cmp-long v5, v0, v2

    .line 25
    .line 26
    if-eqz v5, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-static {v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v4, v0

    .line 34
    :cond_2
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->responseType_:I

    .line 35
    .line 36
    sget-object v1, Lcom/wufan/friend/chat/protocol/ResponseType;->UNDEFINED_CT:Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/ResponseType;->getNumber()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eq v0, v1, :cond_3

    .line 43
    .line 44
    const/4 v0, 0x3

    .line 45
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response;->responseType_:I

    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    add-int/2addr v4, v0

    .line 52
    :cond_3
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->service_:I

    .line 53
    .line 54
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->UNDEFINED_SN:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/ServiceName;->getNumber()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eq v0, v1, :cond_4

    .line 61
    .line 62
    const/4 v0, 0x4

    .line 63
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response;->service_:I

    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/2addr v4, v0

    .line 70
    :cond_4
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->path_:I

    .line 71
    .line 72
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->UNDEFINED_SP:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/ServicePath;->getNumber()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eq v0, v1, :cond_5

    .line 79
    .line 80
    const/4 v0, 0x5

    .line 81
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response;->path_:I

    .line 82
    .line 83
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/2addr v4, v0

    .line 88
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getInsBytes()Lcom/google/protobuf/ByteString;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_6

    .line 97
    .line 98
    const/4 v0, 0x6

    .line 99
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/Response;->ins_:Ljava/lang/Object;

    .line 100
    .line 101
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    add-int/2addr v4, v0

    .line 106
    :cond_6
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->status_:I

    .line 107
    .line 108
    sget-object v1, Lcom/wufan/friend/chat/protocol/ResponseStatus;->UNKNOWN_RS:Lcom/wufan/friend/chat/protocol/ResponseStatus;

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/ResponseStatus;->getNumber()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eq v0, v1, :cond_7

    .line 115
    .line 116
    const/4 v0, 0x7

    .line 117
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response;->status_:I

    .line 118
    .line 119
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    add-int/2addr v4, v0

    .line 124
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getMessageBytes()Lcom/google/protobuf/ByteString;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_8

    .line 133
    .line 134
    const/16 v0, 0x8

    .line 135
    .line 136
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/Response;->message_:Ljava/lang/Object;

    .line 137
    .line 138
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    add-int/2addr v4, v0

    .line 143
    :cond_8
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->notificationType_:I

    .line 144
    .line 145
    sget-object v1, Lcom/wufan/friend/chat/protocol/NotificationType;->UNKNOWN_NT:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/NotificationType;->getNumber()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eq v0, v1, :cond_9

    .line 152
    .line 153
    const/16 v0, 0x9

    .line 154
    .line 155
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response;->notificationType_:I

    .line 156
    .line 157
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    add-int/2addr v4, v0

    .line 162
    :cond_9
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 163
    .line 164
    if-eqz v0, :cond_a

    .line 165
    .line 166
    const/16 v0, 0xa

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    add-int/2addr v4, v0

    .line 177
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    add-int/2addr v4, v0

    .line 184
    iput v4, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 185
    .line 186
    return v4
.end method

.method public getService()Lcom/wufan/friend/chat/protocol/ServiceName;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->service_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/ServiceName;->valueOf(I)Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/friend/chat/protocol/ServiceName;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getServiceValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->service_:I

    .line 2
    .line 3
    return v0
.end method

.method public getStatus()Lcom/wufan/friend/chat/protocol/ResponseStatus;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->status_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/ResponseStatus;->valueOf(I)Lcom/wufan/friend/chat/protocol/ResponseStatus;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseStatus;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ResponseStatus;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getStatusValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->status_:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/Response;->timestamp_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

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
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Response;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getRequestId()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getTimestamp()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

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
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->responseType_:I

    .line 54
    .line 55
    add-int/2addr v1, v0

    .line 56
    mul-int/lit8 v1, v1, 0x25

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x4

    .line 59
    .line 60
    mul-int/lit8 v1, v1, 0x35

    .line 61
    .line 62
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->service_:I

    .line 63
    .line 64
    add-int/2addr v1, v0

    .line 65
    mul-int/lit8 v1, v1, 0x25

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x5

    .line 68
    .line 69
    mul-int/lit8 v1, v1, 0x35

    .line 70
    .line 71
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->path_:I

    .line 72
    .line 73
    add-int/2addr v1, v0

    .line 74
    mul-int/lit8 v1, v1, 0x25

    .line 75
    .line 76
    add-int/lit8 v1, v1, 0x6

    .line 77
    .line 78
    mul-int/lit8 v1, v1, 0x35

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getIns()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    add-int/2addr v1, v0

    .line 89
    mul-int/lit8 v1, v1, 0x25

    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x7

    .line 92
    .line 93
    mul-int/lit8 v1, v1, 0x35

    .line 94
    .line 95
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->status_:I

    .line 96
    .line 97
    add-int/2addr v1, v0

    .line 98
    mul-int/lit8 v1, v1, 0x25

    .line 99
    .line 100
    add-int/lit8 v1, v1, 0x8

    .line 101
    .line 102
    mul-int/lit8 v1, v1, 0x35

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getMessage()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    add-int/2addr v1, v0

    .line 113
    mul-int/lit8 v1, v1, 0x25

    .line 114
    .line 115
    add-int/lit8 v1, v1, 0x9

    .line 116
    .line 117
    mul-int/lit8 v1, v1, 0x35

    .line 118
    .line 119
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->notificationType_:I

    .line 120
    .line 121
    add-int/2addr v1, v0

    .line 122
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->hasData()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_1

    .line 127
    .line 128
    mul-int/lit8 v1, v1, 0x25

    .line 129
    .line 130
    add-int/lit8 v1, v1, 0xa

    .line 131
    .line 132
    mul-int/lit8 v1, v1, 0x35

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/ResponseData;->hashCode()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    add-int/2addr v1, v0

    .line 143
    :cond_1
    mul-int/lit8 v1, v1, 0x1d

    .line 144
    .line 145
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    add-int/2addr v1, v0

    .line 152
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 153
    .line 154
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->z:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/wufan/friend/chat/protocol/Response;

    .line 4
    .line 5
    const-class v2, Lcom/wufan/friend/chat/protocol/Response$b;

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
    iget-byte v0, p0, Lcom/wufan/friend/chat/protocol/Response;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/wufan/friend/chat/protocol/Response;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->newBuilderForType()Lcom/wufan/friend/chat/protocol/Response$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/Response;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->newBuilderForType()Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Response;->newBuilder()Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/friend/chat/protocol/Response$b;
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
    new-instance v0, Lcom/wufan/friend/chat/protocol/Response$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wufan/friend/chat/protocol/Response$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/friend/chat/protocol/Response$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->toBuilder()Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->toBuilder()Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/wufan/friend/chat/protocol/Response;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/Response;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wufan/friend/chat/protocol/Response$b;

    invoke-direct {v0, v1}, Lcom/wufan/friend/chat/protocol/Response$b;-><init>(Lcom/wufan/friend/chat/protocol/Response$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wufan/friend/chat/protocol/Response$b;

    invoke-direct {v0, v1}, Lcom/wufan/friend/chat/protocol/Response$b;-><init>(Lcom/wufan/friend/chat/protocol/Response$a;)V

    invoke-virtual {v0, p0}, Lcom/wufan/friend/chat/protocol/Response$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/Response;)Lcom/wufan/friend/chat/protocol/Response$b;

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
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/Response;->requestId_:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/Response;->timestamp_:J

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->responseType_:I

    .line 24
    .line 25
    sget-object v1, Lcom/wufan/friend/chat/protocol/ResponseType;->UNDEFINED_CT:Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/ResponseType;->getNumber()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eq v0, v1, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response;->responseType_:I

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->service_:I

    .line 40
    .line 41
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->UNDEFINED_SN:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/ServiceName;->getNumber()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eq v0, v1, :cond_3

    .line 48
    .line 49
    const/4 v0, 0x4

    .line 50
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response;->service_:I

    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->path_:I

    .line 56
    .line 57
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->UNDEFINED_SP:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/ServicePath;->getNumber()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eq v0, v1, :cond_4

    .line 64
    .line 65
    const/4 v0, 0x5

    .line 66
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response;->path_:I

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 69
    .line 70
    .line 71
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getInsBytes()Lcom/google/protobuf/ByteString;

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
    if-nez v0, :cond_5

    .line 80
    .line 81
    const/4 v0, 0x6

    .line 82
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/Response;->ins_:Ljava/lang/Object;

    .line 83
    .line 84
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_5
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->status_:I

    .line 88
    .line 89
    sget-object v1, Lcom/wufan/friend/chat/protocol/ResponseStatus;->UNKNOWN_RS:Lcom/wufan/friend/chat/protocol/ResponseStatus;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/ResponseStatus;->getNumber()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eq v0, v1, :cond_6

    .line 96
    .line 97
    const/4 v0, 0x7

    .line 98
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response;->status_:I

    .line 99
    .line 100
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 101
    .line 102
    .line 103
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getMessageBytes()Lcom/google/protobuf/ByteString;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_7

    .line 112
    .line 113
    const/16 v0, 0x8

    .line 114
    .line 115
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/Response;->message_:Ljava/lang/Object;

    .line 116
    .line 117
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_7
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response;->notificationType_:I

    .line 121
    .line 122
    sget-object v1, Lcom/wufan/friend/chat/protocol/NotificationType;->UNKNOWN_NT:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/NotificationType;->getNumber()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eq v0, v1, :cond_8

    .line 129
    .line 130
    const/16 v0, 0x9

    .line 131
    .line 132
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response;->notificationType_:I

    .line 133
    .line 134
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 135
    .line 136
    .line 137
    :cond_8
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 138
    .line 139
    if-eqz v0, :cond_9

    .line 140
    .line 141
    const/16 v0, 0xa

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 148
    .line 149
    .line 150
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 151
    .line 152
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method
