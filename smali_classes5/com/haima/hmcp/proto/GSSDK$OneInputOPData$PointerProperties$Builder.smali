.class public final Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerPropertiesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;",
        ">;",
        "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerPropertiesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:I

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
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->type_:I

    .line 5
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->type_:I

    .line 8
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;-><init>()V

    return-void
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

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->access$14800()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    .locals 5

    .line 3
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/haima/hmcp/proto/GSSDK$1;)V

    .line 4
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->id_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->access$15002(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6
    :cond_1
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->type_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->access$15102(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->pressure_:F

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->access$15202(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;F)F

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 8
    :cond_3
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->size_:F

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->access$15302(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;F)F

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 9
    :cond_4
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->touchMajor_:F

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->access$15402(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;F)F

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 10
    :cond_5
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->touchMinor_:F

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->access$15502(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;F)F

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 11
    :cond_6
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->xPos_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->access$15602(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;I)I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 12
    :cond_7
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->yPos_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->access$15702(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;I)I

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 13
    :cond_8
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->xPercent_:F

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->access$15802(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;F)F

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    or-int/lit16 v3, v3, 0x200

    .line 14
    :cond_9
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->yPercent_:F

    invoke-static {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->access$15902(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;F)F

    .line 15
    invoke-static {v0, v3}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->access$16002(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;I)I

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->id_:I

    .line 7
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->type_:I

    and-int/lit8 v1, v1, -0x3

    const/4 v2, 0x0

    .line 9
    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->pressure_:F

    and-int/lit8 v1, v1, -0x5

    .line 10
    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->size_:F

    and-int/lit8 v1, v1, -0x9

    .line 11
    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->touchMajor_:F

    and-int/lit8 v1, v1, -0x11

    .line 12
    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->touchMinor_:F

    and-int/lit8 v1, v1, -0x21

    .line 13
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->xPos_:I

    and-int/lit8 v1, v1, -0x41

    .line 14
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->yPos_:I

    and-int/lit16 v0, v1, -0x81

    .line 15
    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->xPercent_:F

    and-int/lit16 v0, v0, -0x101

    .line 16
    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->yPercent_:F

    and-int/lit16 v0, v0, -0x201

    .line 17
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    return-object p1
.end method

.method public clearId()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->id_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    return-object p1
.end method

.method public clearPressure()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->pressure_:F

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearSize()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->size_:F

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearTouchMajor()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->touchMajor_:F

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearTouchMinor()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->touchMinor_:F

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->type_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearXPercent()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x101

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->xPercent_:F

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearXPos()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->xPos_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearYPercent()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x201

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->yPercent_:F

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearYPos()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->yPos_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    .locals 1

    .line 3
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
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

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->id_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPressure()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->pressure_:F

    .line 2
    .line 3
    return v0
.end method

.method public getSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->size_:F

    .line 2
    .line 3
    return v0
.end method

.method public getTouchMajor()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->touchMajor_:F

    .line 2
    .line 3
    return v0
.end method

.method public getTouchMinor()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->touchMinor_:F

    .line 2
    .line 3
    return v0
.end method

.method public getType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$TouchDevice;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->type_:I

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

.method public getXPercent()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->xPercent_:F

    .line 2
    .line 3
    return v0
.end method

.method public getXPos()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->xPos_:I

    .line 2
    .line 3
    return v0
.end method

.method public getYPercent()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->yPercent_:F

    .line 2
    .line 3
    return v0
.end method

.method public getYPos()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->yPos_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasId()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    .line 38
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setId(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getType()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$TouchDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setType(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$TouchDevice;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasPressure()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getPressure()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setPressure(F)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setSize(F)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasTouchMajor()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getTouchMajor()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setTouchMajor(F)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasTouchMinor()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getTouchMinor()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setTouchMinor(F)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasXPos()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getXPos()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setXPos(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    .line 25
    :cond_7
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasYPos()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getYPos()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setYPos(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    .line 27
    :cond_8
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasXPercent()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getXPercent()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setXPercent(F)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    .line 29
    :cond_9
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->hasYPercent()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->getYPercent()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setYPercent(F)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    .line 31
    :cond_a
    invoke-static {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->access$16100(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    return-object p1
.end method

.method public setId(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->id_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setPressure(F)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->pressure_:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    return-object p1
.end method

.method public setSize(F)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->size_:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setTouchMajor(F)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->touchMajor_:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setTouchMinor(F)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->touchMinor_:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setType(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$TouchDevice;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$TouchDevice;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->type_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    return-object p1
.end method

.method public setXPercent(F)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->xPercent_:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setXPos(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->xPos_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setYPercent(F)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->yPercent_:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setYPos(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->yPos_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
