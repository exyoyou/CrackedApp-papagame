.class public final Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/proto/GSSDK$FileDownload_ROrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDownload_R"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;,
        Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$ErrorCode;
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

.field public static final MD5_FIELD_NUMBER:I = 0x6

.field public static final MSG_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x5

.field public static final URL_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private code_:I

.field private volatile md5_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile msg_:Ljava/lang/Object;

.field private size_:I

.field private type_:I

.field private volatile url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    .line 7
    .line 8
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->code_:I

    const-string v1, ""

    .line 8
    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->msg_:Ljava/lang/Object;

    .line 9
    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->url_:Ljava/lang/Object;

    .line 10
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->size_:I

    .line 11
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->type_:I

    .line 12
    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->md5_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;-><init>()V

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    const/16 v4, 0x8

    if-eq v2, v4, :cond_6

    const/16 v5, 0x12

    if-eq v2, v5, :cond_5

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_4

    const/16 v5, 0x20

    if-eq v2, v5, :cond_3

    const/16 v4, 0x28

    if-eq v2, v4, :cond_2

    const/16 v4, 0x32

    if-eq v2, v4, :cond_1

    .line 17
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 19
    iget v3, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    .line 20
    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->md5_:Ljava/lang/Object;

    goto :goto_0

    .line 21
    :cond_2
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    .line 22
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->type_:I

    goto :goto_0

    .line 23
    :cond_3
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    .line 24
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->size_:I

    goto :goto_0

    .line 25
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 26
    iget v3, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    .line 27
    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 29
    iget v3, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    .line 30
    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->msg_:Ljava/lang/Object;

    goto :goto_0

    .line 31
    :cond_6
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    .line 32
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->code_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 33
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 34
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 35
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 37
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 38
    throw p1

    .line 39
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 40
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
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$31200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$31402(Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->code_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$31500(Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->msg_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$31502(Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->msg_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$31600(Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->url_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$31602(Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->url_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$31702(Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->size_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$31802(Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->type_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$31900(Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->md5_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$31902(Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->md5_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$32002(Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$32100(Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$30800()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static newBuilder()Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;)Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;)Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

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
    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasCode()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasCode()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasCode()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getCode()I

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasMsg()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasMsg()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasMsg()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getMsg()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getMsg()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasUrl()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasUrl()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasUrl()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getUrl()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getUrl()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasSize()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasSize()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-ne v1, v2, :cond_b

    .line 142
    .line 143
    const/4 v1, 0x1

    .line 144
    goto :goto_6

    .line 145
    :cond_b
    const/4 v1, 0x0

    .line 146
    :goto_6
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasSize()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_d

    .line 151
    .line 152
    if-eqz v1, :cond_c

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getSize()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getSize()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-ne v1, v2, :cond_c

    .line 163
    .line 164
    const/4 v1, 0x1

    .line 165
    goto :goto_7

    .line 166
    :cond_c
    const/4 v1, 0x0

    .line 167
    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasType()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasType()Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-ne v1, v2, :cond_e

    .line 178
    .line 179
    const/4 v1, 0x1

    .line 180
    goto :goto_8

    .line 181
    :cond_e
    const/4 v1, 0x0

    .line 182
    :goto_8
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasType()Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eqz v2, :cond_10

    .line 187
    .line 188
    if-eqz v1, :cond_f

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getType()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getType()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-ne v1, v2, :cond_f

    .line 199
    .line 200
    const/4 v1, 0x1

    .line 201
    goto :goto_9

    .line 202
    :cond_f
    const/4 v1, 0x0

    .line 203
    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasMd5()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasMd5()Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-ne v1, v2, :cond_11

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_a

    .line 217
    :cond_11
    const/4 v1, 0x0

    .line 218
    :goto_a
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasMd5()Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-eqz v2, :cond_13

    .line 223
    .line 224
    if-eqz v1, :cond_12

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getMd5()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getMd5()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_12

    .line 239
    .line 240
    const/4 v1, 0x1

    .line 241
    goto :goto_b

    .line 242
    :cond_12
    const/4 v1, 0x0

    .line 243
    :cond_13
    :goto_b
    if-eqz v1, :cond_14

    .line 244
    .line 245
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 246
    .line 247
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 248
    .line 249
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    if-eqz p1, :cond_14

    .line 254
    .line 255
    goto :goto_c

    .line 256
    :cond_14
    const/4 v0, 0x0

    .line 257
    :goto_c
    return v0
.end method

.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->code_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;
    .locals 1

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->md5_:Ljava/lang/Object;

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
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->md5_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getMd5Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->md5_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->md5_:Ljava/lang/Object;

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

.method public getMsg()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->msg_:Ljava/lang/Object;

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
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->msg_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->msg_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->msg_:Ljava/lang/Object;

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
            "Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->PARSER:Lcom/google/protobuf/Parser;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->code_:I

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v2, v0

    .line 21
    :cond_1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    and-int/2addr v0, v1

    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->msg_:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v2, v0

    .line 34
    :cond_2
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

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
    iget-object v3, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->url_:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v2, v0

    .line 48
    :cond_3
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    .line 49
    .line 50
    const/16 v3, 0x8

    .line 51
    .line 52
    and-int/2addr v0, v3

    .line 53
    if-ne v0, v3, :cond_4

    .line 54
    .line 55
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->size_:I

    .line 56
    .line 57
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    add-int/2addr v2, v0

    .line 62
    :cond_4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    .line 63
    .line 64
    const/16 v1, 0x10

    .line 65
    .line 66
    and-int/2addr v0, v1

    .line 67
    if-ne v0, v1, :cond_5

    .line 68
    .line 69
    const/4 v0, 0x5

    .line 70
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->type_:I

    .line 71
    .line 72
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/2addr v2, v0

    .line 77
    :cond_5
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    .line 78
    .line 79
    const/16 v1, 0x20

    .line 80
    .line 81
    and-int/2addr v0, v1

    .line 82
    if-ne v0, v1, :cond_6

    .line 83
    .line 84
    const/4 v0, 0x6

    .line 85
    iget-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->md5_:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    add-int/2addr v2, v0

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    add-int/2addr v2, v0

    .line 99
    iput v2, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 100
    .line 101
    return v2
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->size_:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->type_:I

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

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->url_:Ljava/lang/Object;

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
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->url_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->url_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->url_:Ljava/lang/Object;

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

.method public hasCode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

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

.method public hasMd5()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

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

.method public hasMsg()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

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

.method public hasSize()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

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

.method public hasUrl()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

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
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasCode()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getCode()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v1, v0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasMsg()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getMsg()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/2addr v1, v0

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasUrl()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getUrl()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    add-int/2addr v1, v0

    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasSize()Z

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
    add-int/lit8 v1, v1, 0x4

    .line 85
    .line 86
    mul-int/lit8 v1, v1, 0x35

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getSize()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    add-int/2addr v1, v0

    .line 93
    :cond_4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasType()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    mul-int/lit8 v1, v1, 0x25

    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x5

    .line 102
    .line 103
    mul-int/lit8 v1, v1, 0x35

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getType()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    add-int/2addr v1, v0

    .line 110
    :cond_5
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->hasMd5()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    mul-int/lit8 v1, v1, 0x25

    .line 117
    .line 118
    add-int/lit8 v1, v1, 0x6

    .line 119
    .line 120
    mul-int/lit8 v1, v1, 0x35

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->getMd5()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    add-int/2addr v1, v0

    .line 131
    :cond_6
    mul-int/lit8 v1, v1, 0x1d

    .line 132
    .line 133
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    add-int/2addr v1, v0

    .line 140
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 141
    .line 142
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$30900()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    .line 6
    .line 7
    const-class v2, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;

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
    iget-byte v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->newBuilder()Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/haima/hmcp/proto/GSSDK$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;

    invoke-direct {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;-><init>(Lcom/haima/hmcp/proto/GSSDK$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;

    invoke-direct {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;-><init>(Lcom/haima/hmcp/proto/GSSDK$1;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;)Lcom/haima/hmcp/proto/GSSDK$FileDownload_R$Builder;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->code_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->msg_:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

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
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->url_:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    .line 36
    .line 37
    const/16 v2, 0x8

    .line 38
    .line 39
    and-int/2addr v0, v2

    .line 40
    if-ne v0, v2, :cond_3

    .line 41
    .line 42
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->size_:I

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    .line 48
    .line 49
    const/16 v1, 0x10

    .line 50
    .line 51
    and-int/2addr v0, v1

    .line 52
    if-ne v0, v1, :cond_4

    .line 53
    .line 54
    const/4 v0, 0x5

    .line 55
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->type_:I

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->bitField0_:I

    .line 61
    .line 62
    const/16 v1, 0x20

    .line 63
    .line 64
    and-int/2addr v0, v1

    .line 65
    if-ne v0, v1, :cond_5

    .line 66
    .line 67
    const/4 v0, 0x6

    .line 68
    iget-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;->md5_:Ljava/lang/Object;

    .line 69
    .line 70
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
