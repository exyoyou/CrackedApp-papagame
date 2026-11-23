.class public final Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerPropertiesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerProperties"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;,
        Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$TouchDevice;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRESSURE_FIELD_NUMBER:I = 0x3

.field public static final SIZE_FIELD_NUMBER:I = 0x4

.field public static final TOUCH_MAJOR_FIELD_NUMBER:I = 0x5

.field public static final TOUCH_MINOR_FIELD_NUMBER:I = 0x6

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final X_PERCENT_FIELD_NUMBER:I = 0x9

.field public static final X_POS_FIELD_NUMBER:I = 0x7

.field public static final Y_PERCENT_FIELD_NUMBER:I = 0xa

.field public static final Y_POS_FIELD_NUMBER:I = 0x8

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:I

.field private memoizedIsInitialized:B

.field private pressure_:F

.field private size_:F

.field private touchMajor_:F

.field private touchMinor_:F

.field private type_:I

.field private xPercent_:F

.field private xPos_:I

.field private yPercent_:F

.field private yPos_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    .line 7
    .line 8
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->id_:I

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->type_:I

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->pressure_:F

    .line 10
    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->size_:F

    .line 11
    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->touchMajor_:F

    .line 12
    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->touchMinor_:F

    .line 13
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->xPos_:I

    .line 14
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->yPos_:I

    .line 15
    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->xPercent_:F

    .line 16
    iput v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->yPercent_:F

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
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;-><init>()V

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

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
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->yPercent_:F

    goto :goto_0

    .line 24
    :sswitch_1
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    .line 25
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->xPercent_:F

    goto :goto_0

    .line 26
    :sswitch_2
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    .line 27
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->yPos_:I

    goto :goto_0

    .line 28
    :sswitch_3
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    .line 29
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->xPos_:I

    goto :goto_0

    .line 30
    :sswitch_4
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->touchMinor_:F

    goto :goto_0

    .line 32
    :sswitch_5
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    .line 33
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->touchMajor_:F

    goto :goto_0

    .line 34
    :sswitch_6
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    .line 35
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->size_:F

    goto :goto_0

    .line 36
    :sswitch_7
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    .line 37
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->pressure_:F

    goto :goto_0

    .line 38
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 39
    invoke-static {v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$TouchDevice;->valueOf(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$TouchDevice;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_1

    .line 40
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 41
    :cond_1
    iget v3, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    .line 42
    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->type_:I

    goto/16 :goto_0

    .line 43
    :sswitch_9
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    .line 44
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->id_:I
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

    .line 45
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 46
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 47
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 49
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 50
    throw p1

    .line 51
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 52
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x1d -> :sswitch_7
        0x25 -> :sswitch_6
        0x2d -> :sswitch_5
        0x35 -> :sswitch_4
        0x38 -> :sswitch_3
        0x40 -> :sswitch_2
        0x4d -> :sswitch_1
        0x55 -> :sswitch_0
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
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$14800()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$15002(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->id_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$15102(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->type_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$15202(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->pressure_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$15302(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->size_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$15402(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->touchMajor_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$15502(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->touchMinor_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$15602(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->xPos_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$15702(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->yPos_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$15802(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->xPercent_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$15902(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->yPercent_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$16002(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$16100(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$14400()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static newBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

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
    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasId()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasId()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasId()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getId()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getId()I

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasType()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasType()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasType()Z

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
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->type_:I

    .line 75
    .line 76
    iget v2, p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->type_:I

    .line 77
    .line 78
    if-ne v1, v2, :cond_6

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    goto :goto_3

    .line 82
    :cond_6
    const/4 v1, 0x0

    .line 83
    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasPressure()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasPressure()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-ne v1, v2, :cond_8

    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    goto :goto_4

    .line 97
    :cond_8
    const/4 v1, 0x0

    .line 98
    :goto_4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasPressure()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_a

    .line 103
    .line 104
    if-eqz v1, :cond_9

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getPressure()F

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getPressure()F

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasSize()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasSize()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasSize()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getSize()F

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getSize()F

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-ne v1, v2, :cond_c

    .line 167
    .line 168
    const/4 v1, 0x1

    .line 169
    goto :goto_7

    .line 170
    :cond_c
    const/4 v1, 0x0

    .line 171
    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasTouchMajor()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasTouchMajor()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-ne v1, v2, :cond_e

    .line 182
    .line 183
    const/4 v1, 0x1

    .line 184
    goto :goto_8

    .line 185
    :cond_e
    const/4 v1, 0x0

    .line 186
    :goto_8
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasTouchMajor()Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_10

    .line 191
    .line 192
    if-eqz v1, :cond_f

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getTouchMajor()F

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getTouchMajor()F

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-ne v1, v2, :cond_f

    .line 211
    .line 212
    const/4 v1, 0x1

    .line 213
    goto :goto_9

    .line 214
    :cond_f
    const/4 v1, 0x0

    .line 215
    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasTouchMinor()Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasTouchMinor()Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-ne v1, v2, :cond_11

    .line 226
    .line 227
    const/4 v1, 0x1

    .line 228
    goto :goto_a

    .line 229
    :cond_11
    const/4 v1, 0x0

    .line 230
    :goto_a
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasTouchMinor()Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-eqz v2, :cond_13

    .line 235
    .line 236
    if-eqz v1, :cond_12

    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getTouchMinor()F

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getTouchMinor()F

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-ne v1, v2, :cond_12

    .line 255
    .line 256
    const/4 v1, 0x1

    .line 257
    goto :goto_b

    .line 258
    :cond_12
    const/4 v1, 0x0

    .line 259
    :cond_13
    :goto_b
    if-eqz v1, :cond_14

    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasXPos()Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasXPos()Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-ne v1, v2, :cond_14

    .line 270
    .line 271
    const/4 v1, 0x1

    .line 272
    goto :goto_c

    .line 273
    :cond_14
    const/4 v1, 0x0

    .line 274
    :goto_c
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasXPos()Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_16

    .line 279
    .line 280
    if-eqz v1, :cond_15

    .line 281
    .line 282
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getXPos()I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getXPos()I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-ne v1, v2, :cond_15

    .line 291
    .line 292
    const/4 v1, 0x1

    .line 293
    goto :goto_d

    .line 294
    :cond_15
    const/4 v1, 0x0

    .line 295
    :cond_16
    :goto_d
    if-eqz v1, :cond_17

    .line 296
    .line 297
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasYPos()Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasYPos()Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-ne v1, v2, :cond_17

    .line 306
    .line 307
    const/4 v1, 0x1

    .line 308
    goto :goto_e

    .line 309
    :cond_17
    const/4 v1, 0x0

    .line 310
    :goto_e
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasYPos()Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-eqz v2, :cond_19

    .line 315
    .line 316
    if-eqz v1, :cond_18

    .line 317
    .line 318
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getYPos()I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getYPos()I

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-ne v1, v2, :cond_18

    .line 327
    .line 328
    const/4 v1, 0x1

    .line 329
    goto :goto_f

    .line 330
    :cond_18
    const/4 v1, 0x0

    .line 331
    :cond_19
    :goto_f
    if-eqz v1, :cond_1a

    .line 332
    .line 333
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasXPercent()Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasXPercent()Z

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-ne v1, v2, :cond_1a

    .line 342
    .line 343
    const/4 v1, 0x1

    .line 344
    goto :goto_10

    .line 345
    :cond_1a
    const/4 v1, 0x0

    .line 346
    :goto_10
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasXPercent()Z

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    if-eqz v2, :cond_1c

    .line 351
    .line 352
    if-eqz v1, :cond_1b

    .line 353
    .line 354
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getXPercent()F

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getXPercent()F

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-ne v1, v2, :cond_1b

    .line 371
    .line 372
    const/4 v1, 0x1

    .line 373
    goto :goto_11

    .line 374
    :cond_1b
    const/4 v1, 0x0

    .line 375
    :cond_1c
    :goto_11
    if-eqz v1, :cond_1d

    .line 376
    .line 377
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasYPercent()Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasYPercent()Z

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    if-ne v1, v2, :cond_1d

    .line 386
    .line 387
    const/4 v1, 0x1

    .line 388
    goto :goto_12

    .line 389
    :cond_1d
    const/4 v1, 0x0

    .line 390
    :goto_12
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasYPercent()Z

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-eqz v2, :cond_1f

    .line 395
    .line 396
    if-eqz v1, :cond_1e

    .line 397
    .line 398
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getYPercent()F

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getYPercent()F

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    if-ne v1, v2, :cond_1e

    .line 415
    .line 416
    const/4 v1, 0x1

    .line 417
    goto :goto_13

    .line 418
    :cond_1e
    const/4 v1, 0x0

    .line 419
    :cond_1f
    :goto_13
    if-eqz v1, :cond_20

    .line 420
    .line 421
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 422
    .line 423
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 424
    .line 425
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result p1

    .line 429
    if-eqz p1, :cond_20

    .line 430
    .line 431
    goto :goto_14

    .line 432
    :cond_20
    const/4 v0, 0x0

    .line 433
    :goto_14
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    .locals 1

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->id_:I

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
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPressure()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->pressure_:F

    .line 2
    .line 3
    return v0
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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->id_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    and-int/2addr v0, v1

    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->type_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    iget v3, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->pressure_:F

    .line 42
    .line 43
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v2, v0

    .line 48
    :cond_3
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->size_:F

    .line 56
    .line 57
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    add-int/2addr v2, v0

    .line 62
    :cond_4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->touchMajor_:F

    .line 71
    .line 72
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/2addr v2, v0

    .line 77
    :cond_5
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->touchMinor_:F

    .line 86
    .line 87
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    add-int/2addr v2, v0

    .line 92
    :cond_6
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->xPos_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->yPos_:I

    .line 115
    .line 116
    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    add-int/2addr v2, v0

    .line 121
    :cond_8
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->xPercent_:F

    .line 131
    .line 132
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    add-int/2addr v2, v0

    .line 137
    :cond_9
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->yPercent_:F

    .line 147
    .line 148
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

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

.method public getSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->size_:F

    .line 2
    .line 3
    return v0
.end method

.method public getTouchMajor()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->touchMajor_:F

    .line 2
    .line 3
    return v0
.end method

.method public getTouchMinor()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->touchMinor_:F

    .line 2
    .line 3
    return v0
.end method

.method public getType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$TouchDevice;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->type_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$TouchDevice;->valueOf(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$TouchDevice;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$TouchDevice;->TOOL_TYPE_UNKNOWN:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$TouchDevice;

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

.method public getXPercent()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->xPercent_:F

    .line 2
    .line 3
    return v0
.end method

.method public getXPos()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->xPos_:I

    .line 2
    .line 3
    return v0
.end method

.method public getYPercent()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->yPercent_:F

    .line 2
    .line 3
    return v0
.end method

.method public getYPos()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->yPos_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasId()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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

.method public hasPressure()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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

.method public hasSize()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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

.method public hasTouchMajor()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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

.method public hasTouchMinor()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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

.method public hasXPercent()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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

.method public hasXPos()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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

.method public hasYPercent()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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

.method public hasYPos()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasId()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getId()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v1, v0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasType()Z

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->type_:I

    .line 47
    .line 48
    add-int/2addr v1, v0

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasPressure()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getPressure()F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/2addr v1, v0

    .line 70
    :cond_3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasSize()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    mul-int/lit8 v1, v1, 0x25

    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x4

    .line 79
    .line 80
    mul-int/lit8 v1, v1, 0x35

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getSize()F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    add-int/2addr v1, v0

    .line 91
    :cond_4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasTouchMajor()Z

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
    add-int/lit8 v1, v1, 0x5

    .line 100
    .line 101
    mul-int/lit8 v1, v1, 0x35

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getTouchMajor()F

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    add-int/2addr v1, v0

    .line 112
    :cond_5
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasTouchMinor()Z

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
    add-int/lit8 v1, v1, 0x6

    .line 121
    .line 122
    mul-int/lit8 v1, v1, 0x35

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getTouchMinor()F

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    add-int/2addr v1, v0

    .line 133
    :cond_6
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasXPos()Z

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
    add-int/lit8 v1, v1, 0x7

    .line 142
    .line 143
    mul-int/lit8 v1, v1, 0x35

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getXPos()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    add-int/2addr v1, v0

    .line 150
    :cond_7
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasYPos()Z

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
    add-int/lit8 v1, v1, 0x8

    .line 159
    .line 160
    mul-int/lit8 v1, v1, 0x35

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getYPos()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    add-int/2addr v1, v0

    .line 167
    :cond_8
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasXPercent()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_9

    .line 172
    .line 173
    mul-int/lit8 v1, v1, 0x25

    .line 174
    .line 175
    add-int/lit8 v1, v1, 0x9

    .line 176
    .line 177
    mul-int/lit8 v1, v1, 0x35

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getXPercent()F

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    add-int/2addr v1, v0

    .line 188
    :cond_9
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasYPercent()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_a

    .line 193
    .line 194
    mul-int/lit8 v1, v1, 0x25

    .line 195
    .line 196
    add-int/lit8 v1, v1, 0xa

    .line 197
    .line 198
    mul-int/lit8 v1, v1, 0x35

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getYPercent()F

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    add-int/2addr v1, v0

    .line 209
    :cond_a
    mul-int/lit8 v1, v1, 0x1d

    .line 210
    .line 211
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    add-int/2addr v1, v0

    .line 218
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 219
    .line 220
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$14500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    .line 6
    .line 7
    const-class v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

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
    iget-byte v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->newBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/haima/hmcp/proto/GSSDK$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->toBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->DEFAULT_INSTANCE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    invoke-direct {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;-><init>(Lcom/haima/hmcp/proto/GSSDK$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    invoke-direct {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;-><init>(Lcom/haima/hmcp/proto/GSSDK$1;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->id_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->type_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->pressure_:F

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->size_:F

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->touchMajor_:F

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->touchMinor_:F

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 71
    .line 72
    .line 73
    :cond_5
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->xPos_:I

    .line 82
    .line 83
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 84
    .line 85
    .line 86
    :cond_6
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->yPos_:I

    .line 94
    .line 95
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 96
    .line 97
    .line 98
    :cond_7
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->xPercent_:F

    .line 108
    .line 109
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 110
    .line 111
    .line 112
    :cond_8
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->bitField0_:I

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
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->yPercent_:F

    .line 122
    .line 123
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

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
