.class public final Lcom/haima/hmcp/proto/GSSDK$FileUpload;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/proto/GSSDK$FileUploadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileUpload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;
    }
.end annotation


# static fields
.field public static final BLOCK_DATA_FIELD_NUMBER:I = 0x9

.field public static final BLOCK_INDEX_FIELD_NUMBER:I = 0x6

.field public static final BLOCK_MD5_FIELD_NUMBER:I = 0x8

.field public static final BLOCK_SIZE_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$FileUpload;

.field public static final MD5_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/haima/hmcp/proto/GSSDK$FileUpload;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0xa

.field public static final SIZE_FIELD_NUMBER:I = 0x4

.field public static final TOTAL_BLOCKS_FIELD_NUMBER:I = 0x5

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private blockData_:Lcom/google/protobuf/ByteString;

.field private blockIndex_:I

.field private volatile blockMd5_:Ljava/lang/Object;

.field private blockSize_:I

.field private volatile md5_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private volatile path_:Ljava/lang/Object;

.field private size_:I

.field private totalBlocks_:I

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    .line 7
    .line 8
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->name_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->type_:I

    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->md5_:Ljava/lang/Object;

    .line 10
    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->size_:I

    .line 11
    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->totalBlocks_:I

    .line 12
    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockIndex_:I

    .line 13
    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockSize_:I

    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockMd5_:Ljava/lang/Object;

    .line 15
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockData_:Lcom/google/protobuf/ByteString;

    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->path_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;-><init>()V

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 21
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 22
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 23
    iget v3, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 24
    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->path_:Ljava/lang/Object;

    goto :goto_0

    .line 25
    :sswitch_1
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockData_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 27
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 28
    iget v3, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 29
    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockMd5_:Ljava/lang/Object;

    goto :goto_0

    .line 30
    :sswitch_3
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockSize_:I

    goto :goto_0

    .line 32
    :sswitch_4
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 33
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockIndex_:I

    goto :goto_0

    .line 34
    :sswitch_5
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 35
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->totalBlocks_:I

    goto :goto_0

    .line 36
    :sswitch_6
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 37
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->size_:I

    goto :goto_0

    .line 38
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 39
    iget v3, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 40
    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->md5_:Ljava/lang/Object;

    goto :goto_0

    .line 41
    :sswitch_8
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 42
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->type_:I

    goto/16 :goto_0

    .line 43
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 44
    iget v4, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 45
    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_a
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

    .line 46
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 47
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 48
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 50
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 51
    throw p1

    .line 52
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 53
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x10 -> :sswitch_8
        0x1a -> :sswitch_7
        0x20 -> :sswitch_6
        0x28 -> :sswitch_5
        0x30 -> :sswitch_4
        0x38 -> :sswitch_3
        0x42 -> :sswitch_2
        0x4a -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$26900()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$27100(Lcom/haima/hmcp/proto/GSSDK$FileUpload;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->name_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$27102(Lcom/haima/hmcp/proto/GSSDK$FileUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->name_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$27202(Lcom/haima/hmcp/proto/GSSDK$FileUpload;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->type_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$27300(Lcom/haima/hmcp/proto/GSSDK$FileUpload;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->md5_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$27302(Lcom/haima/hmcp/proto/GSSDK$FileUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->md5_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$27402(Lcom/haima/hmcp/proto/GSSDK$FileUpload;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->size_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$27502(Lcom/haima/hmcp/proto/GSSDK$FileUpload;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->totalBlocks_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$27602(Lcom/haima/hmcp/proto/GSSDK$FileUpload;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockIndex_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$27702(Lcom/haima/hmcp/proto/GSSDK$FileUpload;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockSize_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$27800(Lcom/haima/hmcp/proto/GSSDK$FileUpload;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockMd5_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$27802(Lcom/haima/hmcp/proto/GSSDK$FileUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockMd5_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$27902(Lcom/haima/hmcp/proto/GSSDK$FileUpload;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockData_:Lcom/google/protobuf/ByteString;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$28000(Lcom/haima/hmcp/proto/GSSDK$FileUpload;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->path_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$28002(Lcom/haima/hmcp/proto/GSSDK$FileUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->path_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$28102(Lcom/haima/hmcp/proto/GSSDK$FileUpload;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$28200(Lcom/haima/hmcp/proto/GSSDK$FileUpload;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$FileUpload;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$26500()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static newBuilder()Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/haima/hmcp/proto/GSSDK$FileUpload;)Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$FileUpload;)Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/haima/hmcp/proto/GSSDK$FileUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$FileUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/haima/hmcp/proto/GSSDK$FileUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$FileUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/haima/hmcp/proto/GSSDK$FileUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$FileUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/haima/hmcp/proto/GSSDK$FileUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$FileUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/haima/hmcp/proto/GSSDK$FileUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$FileUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/haima/hmcp/proto/GSSDK$FileUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$FileUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/haima/hmcp/proto/GSSDK$FileUpload;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/haima/hmcp/proto/GSSDK$FileUpload;

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
    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasName()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasName()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasName()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const/4 v1, 0x0

    .line 55
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasType()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasType()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-ne v1, v2, :cond_5

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    goto :goto_2

    .line 69
    :cond_5
    const/4 v1, 0x0

    .line 70
    :goto_2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasType()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_7

    .line 75
    .line 76
    if-eqz v1, :cond_6

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getType()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getType()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-ne v1, v2, :cond_6

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasMd5()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasMd5()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasMd5()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getMd5()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getMd5()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasSize()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasSize()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasSize()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getSize()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getSize()I

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasTotalBlocks()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasTotalBlocks()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasTotalBlocks()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getTotalBlocks()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getTotalBlocks()I

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasBlockIndex()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasBlockIndex()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasBlockIndex()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getBlockIndex()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getBlockIndex()I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-ne v1, v2, :cond_12

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasBlockSize()Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasBlockSize()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasBlockSize()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getBlockSize()I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getBlockSize()I

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasBlockMd5()Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasBlockMd5()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasBlockMd5()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getBlockMd5()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getBlockMd5()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-eqz v1, :cond_18

    .line 311
    .line 312
    const/4 v1, 0x1

    .line 313
    goto :goto_f

    .line 314
    :cond_18
    const/4 v1, 0x0

    .line 315
    :cond_19
    :goto_f
    if-eqz v1, :cond_1a

    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasBlockData()Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasBlockData()Z

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    if-ne v1, v2, :cond_1a

    .line 326
    .line 327
    const/4 v1, 0x1

    .line 328
    goto :goto_10

    .line 329
    :cond_1a
    const/4 v1, 0x0

    .line 330
    :goto_10
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasBlockData()Z

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    if-eqz v2, :cond_1c

    .line 335
    .line 336
    if-eqz v1, :cond_1b

    .line 337
    .line 338
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getBlockData()Lcom/google/protobuf/ByteString;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getBlockData()Lcom/google/protobuf/ByteString;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    if-eqz v1, :cond_1b

    .line 351
    .line 352
    const/4 v1, 0x1

    .line 353
    goto :goto_11

    .line 354
    :cond_1b
    const/4 v1, 0x0

    .line 355
    :cond_1c
    :goto_11
    if-eqz v1, :cond_1d

    .line 356
    .line 357
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasPath()Z

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasPath()Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-ne v1, v2, :cond_1d

    .line 366
    .line 367
    const/4 v1, 0x1

    .line 368
    goto :goto_12

    .line 369
    :cond_1d
    const/4 v1, 0x0

    .line 370
    :goto_12
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasPath()Z

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-eqz v2, :cond_1f

    .line 375
    .line 376
    if-eqz v1, :cond_1e

    .line 377
    .line 378
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getPath()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getPath()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-eqz v1, :cond_1e

    .line 391
    .line 392
    const/4 v1, 0x1

    .line 393
    goto :goto_13

    .line 394
    :cond_1e
    const/4 v1, 0x0

    .line 395
    :cond_1f
    :goto_13
    if-eqz v1, :cond_20

    .line 396
    .line 397
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 398
    .line 399
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 400
    .line 401
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    if-eqz p1, :cond_20

    .line 406
    .line 407
    goto :goto_14

    .line 408
    :cond_20
    const/4 v0, 0x0

    .line 409
    :goto_14
    return v0
.end method

.method public getBlockData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockData_:Lcom/google/protobuf/ByteString;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBlockIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockIndex_:I

    .line 2
    .line 3
    return v0
.end method

.method public getBlockMd5()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockMd5_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockMd5_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getBlockMd5Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockMd5_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockMd5_:Ljava/lang/Object;

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

.method public getBlockSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockSize_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$FileUpload;
    .locals 1

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->md5_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->md5_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getMd5Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->md5_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->md5_:Ljava/lang/Object;

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

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->name_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->name_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->name_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->name_:Ljava/lang/Object;

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
            "Lcom/haima/hmcp/proto/GSSDK$FileUpload;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->path_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->path_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->path_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->path_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

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
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->name_:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v2, v0

    .line 21
    :cond_1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    and-int/2addr v0, v1

    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->type_:I

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v2, v0

    .line 34
    :cond_2
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

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
    iget-object v3, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->md5_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->size_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

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
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->totalBlocks_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

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
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockIndex_:I

    .line 86
    .line 87
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    add-int/2addr v2, v0

    .line 92
    :cond_6
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 93
    .line 94
    const/16 v1, 0x40

    .line 95
    .line 96
    and-int/2addr v0, v1

    .line 97
    if-ne v0, v1, :cond_7

    .line 98
    .line 99
    const/4 v0, 0x7

    .line 100
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockSize_:I

    .line 101
    .line 102
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    add-int/2addr v2, v0

    .line 107
    :cond_7
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 108
    .line 109
    const/16 v1, 0x80

    .line 110
    .line 111
    and-int/2addr v0, v1

    .line 112
    if-ne v0, v1, :cond_8

    .line 113
    .line 114
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockMd5_:Ljava/lang/Object;

    .line 115
    .line 116
    invoke-static {v3, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    add-int/2addr v2, v0

    .line 121
    :cond_8
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 122
    .line 123
    const/16 v1, 0x100

    .line 124
    .line 125
    and-int/2addr v0, v1

    .line 126
    if-ne v0, v1, :cond_9

    .line 127
    .line 128
    const/16 v0, 0x9

    .line 129
    .line 130
    iget-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockData_:Lcom/google/protobuf/ByteString;

    .line 131
    .line 132
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    add-int/2addr v2, v0

    .line 137
    :cond_9
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 138
    .line 139
    const/16 v1, 0x200

    .line 140
    .line 141
    and-int/2addr v0, v1

    .line 142
    if-ne v0, v1, :cond_a

    .line 143
    .line 144
    const/16 v0, 0xa

    .line 145
    .line 146
    iget-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->path_:Ljava/lang/Object;

    .line 147
    .line 148
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    add-int/2addr v2, v0

    .line 153
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    add-int/2addr v2, v0

    .line 160
    iput v2, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 161
    .line 162
    return v2
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->size_:I

    .line 2
    .line 3
    return v0
.end method

.method public getTotalBlocks()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->totalBlocks_:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->type_:I

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

.method public hasBlockData()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x100

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

.method public hasBlockIndex()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

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

.method public hasBlockMd5()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

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

.method public hasBlockSize()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

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

.method public hasMd5()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

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

.method public hasPath()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x200

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

.method public hasSize()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

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

.method public hasTotalBlocks()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

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
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasName()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v1, v0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasType()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getType()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/2addr v1, v0

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasMd5()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getMd5()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasSize()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getSize()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    add-int/2addr v1, v0

    .line 93
    :cond_4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasTotalBlocks()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getTotalBlocks()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    add-int/2addr v1, v0

    .line 110
    :cond_5
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasBlockIndex()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getBlockIndex()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    add-int/2addr v1, v0

    .line 127
    :cond_6
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasBlockSize()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_7

    .line 132
    .line 133
    mul-int/lit8 v1, v1, 0x25

    .line 134
    .line 135
    add-int/lit8 v1, v1, 0x7

    .line 136
    .line 137
    mul-int/lit8 v1, v1, 0x35

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getBlockSize()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    add-int/2addr v1, v0

    .line 144
    :cond_7
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasBlockMd5()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_8

    .line 149
    .line 150
    mul-int/lit8 v1, v1, 0x25

    .line 151
    .line 152
    add-int/lit8 v1, v1, 0x8

    .line 153
    .line 154
    mul-int/lit8 v1, v1, 0x35

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getBlockMd5()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    add-int/2addr v1, v0

    .line 165
    :cond_8
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasBlockData()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_9

    .line 170
    .line 171
    mul-int/lit8 v1, v1, 0x25

    .line 172
    .line 173
    add-int/lit8 v1, v1, 0x9

    .line 174
    .line 175
    mul-int/lit8 v1, v1, 0x35

    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getBlockData()Lcom/google/protobuf/ByteString;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->hashCode()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    add-int/2addr v1, v0

    .line 186
    :cond_9
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->hasPath()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_a

    .line 191
    .line 192
    mul-int/lit8 v1, v1, 0x25

    .line 193
    .line 194
    add-int/lit8 v1, v1, 0xa

    .line 195
    .line 196
    mul-int/lit8 v1, v1, 0x35

    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->getPath()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    add-int/2addr v1, v0

    .line 207
    :cond_a
    mul-int/lit8 v1, v1, 0x1d

    .line 208
    .line 209
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    add-int/2addr v1, v0

    .line 216
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 217
    .line 218
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$26600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    .line 6
    .line 7
    const-class v2, Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;

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
    iget-byte v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->newBuilder()Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/haima/hmcp/proto/GSSDK$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$FileUpload;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;

    invoke-direct {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;-><init>(Lcom/haima/hmcp/proto/GSSDK$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;

    invoke-direct {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;-><init>(Lcom/haima/hmcp/proto/GSSDK$1;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$FileUpload;)Lcom/haima/hmcp/proto/GSSDK$FileUpload$Builder;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->name_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->type_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

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
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->md5_:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->size_:I

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

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
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->totalBlocks_:I

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

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
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockIndex_:I

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 71
    .line 72
    .line 73
    :cond_5
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 74
    .line 75
    const/16 v1, 0x40

    .line 76
    .line 77
    and-int/2addr v0, v1

    .line 78
    if-ne v0, v1, :cond_6

    .line 79
    .line 80
    const/4 v0, 0x7

    .line 81
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockSize_:I

    .line 82
    .line 83
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 84
    .line 85
    .line 86
    :cond_6
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 87
    .line 88
    const/16 v1, 0x80

    .line 89
    .line 90
    and-int/2addr v0, v1

    .line 91
    if-ne v0, v1, :cond_7

    .line 92
    .line 93
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockMd5_:Ljava/lang/Object;

    .line 94
    .line 95
    invoke-static {p1, v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_7
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 99
    .line 100
    const/16 v1, 0x100

    .line 101
    .line 102
    and-int/2addr v0, v1

    .line 103
    if-ne v0, v1, :cond_8

    .line 104
    .line 105
    const/16 v0, 0x9

    .line 106
    .line 107
    iget-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->blockData_:Lcom/google/protobuf/ByteString;

    .line 108
    .line 109
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 110
    .line 111
    .line 112
    :cond_8
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->bitField0_:I

    .line 113
    .line 114
    const/16 v1, 0x200

    .line 115
    .line 116
    and-int/2addr v0, v1

    .line 117
    if-ne v0, v1, :cond_9

    .line 118
    .line 119
    const/16 v0, 0xa

    .line 120
    .line 121
    iget-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload;->path_:Ljava/lang/Object;

    .line 122
    .line 123
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method
