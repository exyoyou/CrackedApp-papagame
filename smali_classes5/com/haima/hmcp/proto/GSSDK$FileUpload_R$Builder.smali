.class public final Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/proto/GSSDK$FileUpload_ROrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;",
        ">;",
        "Lcom/haima/hmcp/proto/GSSDK$FileUpload_ROrBuilder;"
    }
.end annotation


# instance fields
.field private ackIndex_:I

.field private bitField0_:I

.field private code_:I

.field private msg_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->msg_:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 7
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->msg_:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/proto/GSSDK$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$28400()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->access$28800()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->buildPartial()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;
    .locals 5

    .line 3
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/haima/hmcp/proto/GSSDK$1;)V

    .line 4
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->code_:I

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->access$29002(Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->msg_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->access$29102(Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->ackIndex_:I

    invoke-static {v0, v1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->access$29202(Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;I)I

    .line 8
    invoke-static {v0, v3}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->access$29302(Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;I)I

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->clear()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->code_:I

    .line 7
    iget v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    const-string v2, ""

    .line 8
    iput-object v2, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->msg_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x3

    .line 9
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->ackIndex_:I

    and-int/lit8 v0, v1, -0x5

    .line 10
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAckIndex()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->ackIndex_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearCode()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->code_:I

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
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    return-object p1
.end method

.method public clearMsg()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->getMsg()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->msg_:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

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
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->clone()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAckIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->ackIndex_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->code_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;
    .locals 1

    .line 3
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$28400()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->msg_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->msg_:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->msg_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->msg_:Ljava/lang/Object;

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

.method public hasAckIndex()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

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

.method public hasCode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

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

.method public hasMsg()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->access$28500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;

    .line 6
    .line 7
    const-class v2, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
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

    .line 25
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    .line 26
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->mergeFrom(Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->getDefaultInstance()Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->setCode(I)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->hasMsg()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    .line 15
    invoke-static {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->access$29100(Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->msg_:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->hasAckIndex()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->getAckIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->setAckIndex(I)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    .line 19
    :cond_3
    invoke-static {p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->access$29400(Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    return-object p1
.end method

.method public setAckIndex(I)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->ackIndex_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setCode(I)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->code_:I

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
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    return-object p1
.end method

.method public setMsg(Ljava/lang/String;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->msg_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setMsgBytes(Lcom/google/protobuf/ByteString;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->msg_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$Builder;

    return-object p1
.end method
