.class public final Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/proto/GSSDK$XInputMSGOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK$XInputMSG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;",
        ">;",
        "Lcom/haima/hmcp/proto/GSSDK$XInputMSGOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private duration_:F

.field private leftMotorSpeed_:I

.field private msgType_:I

.field private rightMotorSpeed_:I

.field private userIndex_:I

.field private vendor_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 6
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$34400()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->access$34800()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$XInputMSG;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$XInputMSG;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/haima/hmcp/proto/GSSDK$XInputMSG;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$XInputMSG;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$XInputMSG;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$XInputMSG;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/haima/hmcp/proto/GSSDK$XInputMSG;
    .locals 5

    .line 3
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/haima/hmcp/proto/GSSDK$1;)V

    .line 4
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->msgType_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->access$35002(Lcom/haima/hmcp/proto/GSSDK$XInputMSG;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6
    :cond_1
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->userIndex_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->access$35102(Lcom/haima/hmcp/proto/GSSDK$XInputMSG;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->leftMotorSpeed_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->access$35202(Lcom/haima/hmcp/proto/GSSDK$XInputMSG;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 8
    :cond_3
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->rightMotorSpeed_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->access$35302(Lcom/haima/hmcp/proto/GSSDK$XInputMSG;I)I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 9
    :cond_4
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->duration_:F

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->access$35402(Lcom/haima/hmcp/proto/GSSDK$XInputMSG;F)F

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 10
    :cond_5
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->vendor_:I

    invoke-static {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->access$35502(Lcom/haima/hmcp/proto/GSSDK$XInputMSG;I)I

    .line 11
    invoke-static {v0, v3}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->access$35602(Lcom/haima/hmcp/proto/GSSDK$XInputMSG;I)I

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->msgType_:I

    .line 7
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->userIndex_:I

    and-int/lit8 v1, v1, -0x3

    .line 9
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->leftMotorSpeed_:I

    and-int/lit8 v1, v1, -0x5

    .line 10
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->rightMotorSpeed_:I

    and-int/lit8 v1, v1, -0x9

    const/4 v2, 0x0

    .line 11
    iput v2, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->duration_:F

    and-int/lit8 v1, v1, -0x11

    .line 12
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->vendor_:I

    and-int/lit8 v0, v1, -0x21

    .line 13
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDuration()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->duration_:F

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    return-object p1
.end method

.method public clearLeftMotorSpeed()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->leftMotorSpeed_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearMsgType()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->msgType_:I

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
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    return-object p1
.end method

.method public clearRightMotorSpeed()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->rightMotorSpeed_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearUserIndex()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->userIndex_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearVendor()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->vendor_:I

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$XInputMSG;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$XInputMSG;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$XInputMSG;
    .locals 1

    .line 3
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$XInputMSG;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$34400()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->duration_:F

    .line 2
    .line 3
    return v0
.end method

.method public getLeftMotorSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->leftMotorSpeed_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMsgType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->msgType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRightMotorSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->rightMotorSpeed_:I

    .line 2
    .line 3
    return v0
.end method

.method public getUserIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->userIndex_:I

    .line 2
    .line 3
    return v0
.end method

.method public getVendor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->vendor_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasDuration()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

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

.method public hasLeftMotorSpeed()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

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

.method public hasMsgType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

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

.method public hasRightMotorSpeed()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

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

.method public hasUserIndex()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

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

.method public hasVendor()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$34500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;

    .line 6
    .line 7
    const-class v2, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$XInputMSG;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
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

    .line 29
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$XInputMSG;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    .line 30
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$XInputMSG;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/haima/hmcp/proto/GSSDK$XInputMSG;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$XInputMSG;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->hasMsgType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->getMsgType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->setMsgType(I)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->hasUserIndex()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->getUserIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->setUserIndex(I)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->hasLeftMotorSpeed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->getLeftMotorSpeed()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->setLeftMotorSpeed(I)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->hasRightMotorSpeed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->getRightMotorSpeed()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->setRightMotorSpeed(I)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->getDuration()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->setDuration(F)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->hasVendor()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->getVendor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->setVendor(I)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    .line 23
    :cond_6
    invoke-static {p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->access$35700(Lcom/haima/hmcp/proto/GSSDK$XInputMSG;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    return-object p1
.end method

.method public setDuration(F)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->duration_:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    return-object p1
.end method

.method public setLeftMotorSpeed(I)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->leftMotorSpeed_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setMsgType(I)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->msgType_:I

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    return-object p1
.end method

.method public setRightMotorSpeed(I)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->rightMotorSpeed_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;

    return-object p1
.end method

.method public setUserIndex(I)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->userIndex_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setVendor(I)Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$XInputMSG$Builder;->vendor_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
