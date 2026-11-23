.class public final Lcom/wufan/friend/chat/protocol/Response$b;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/p0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/wufan/friend/chat/protocol/Response$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/p0;"
    }
.end annotation


# instance fields
.field private dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/ResponseData;",
            "Lcom/wufan/friend/chat/protocol/ResponseData$b;",
            "Lcom/wufan/friend/chat/protocol/o0;",
            ">;"
        }
    .end annotation
.end field

.field private data_:Lcom/wufan/friend/chat/protocol/ResponseData;

.field private ins_:Ljava/lang/Object;

.field private message_:Ljava/lang/Object;

.field private notificationType_:I

.field private path_:I

.field private requestId_:J

.field private responseType_:I

.field private service_:I

.field private status_:I

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->responseType_:I

    .line 5
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->service_:I

    .line 6
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->path_:I

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->ins_:Ljava/lang/Object;

    .line 8
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->status_:I

    .line 9
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->message_:Ljava/lang/Object;

    .line 10
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->notificationType_:I

    .line 11
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->responseType_:I

    .line 14
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->service_:I

    .line 15
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->path_:I

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->ins_:Ljava/lang/Object;

    .line 17
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->status_:I

    .line 18
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->message_:Ljava/lang/Object;

    .line 19
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->notificationType_:I

    .line 20
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/friend/chat/protocol/Response$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/Response$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/Response$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/Response$b;-><init>()V

    return-void
.end method

.method private getDataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/ResponseData;",
            "Lcom/wufan/friend/chat/protocol/ResponseData$b;",
            "Lcom/wufan/friend/chat/protocol/o0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
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

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Response;->access$200()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/Response$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/Response$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/Response$b;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->build()Lcom/wufan/friend/chat/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->build()Lcom/wufan/friend/chat/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/wufan/friend/chat/protocol/Response;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->buildPartial()Lcom/wufan/friend/chat/protocol/Response;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/Response;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->buildPartial()Lcom/wufan/friend/chat/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->buildPartial()Lcom/wufan/friend/chat/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/wufan/friend/chat/protocol/Response;
    .locals 3

    .line 3
    new-instance v0, Lcom/wufan/friend/chat/protocol/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wufan/friend/chat/protocol/Response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/friend/chat/protocol/Response$a;)V

    .line 4
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->requestId_:J

    invoke-static {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/Response;->access$402(Lcom/wufan/friend/chat/protocol/Response;J)J

    .line 5
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->timestamp_:J

    invoke-static {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/Response;->access$502(Lcom/wufan/friend/chat/protocol/Response;J)J

    .line 6
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->responseType_:I

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/Response;->access$602(Lcom/wufan/friend/chat/protocol/Response;I)I

    .line 7
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->service_:I

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/Response;->access$702(Lcom/wufan/friend/chat/protocol/Response;I)I

    .line 8
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->path_:I

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/Response;->access$802(Lcom/wufan/friend/chat/protocol/Response;I)I

    .line 9
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->ins_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/Response;->access$902(Lcom/wufan/friend/chat/protocol/Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->status_:I

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/Response;->access$1002(Lcom/wufan/friend/chat/protocol/Response;I)I

    .line 11
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->message_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/Response;->access$1102(Lcom/wufan/friend/chat/protocol/Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->notificationType_:I

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/Response;->access$1202(Lcom/wufan/friend/chat/protocol/Response;I)I

    .line 13
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 14
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/Response;->access$1302(Lcom/wufan/friend/chat/protocol/Response;Lcom/wufan/friend/chat/protocol/ResponseData;)Lcom/wufan/friend/chat/protocol/ResponseData;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/ResponseData;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/Response;->access$1302(Lcom/wufan/friend/chat/protocol/Response;Lcom/wufan/friend/chat/protocol/ResponseData;)Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->clear()Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->clear()Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->clear()Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->clear()Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->requestId_:J

    .line 7
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->timestamp_:J

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->responseType_:I

    .line 9
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->service_:I

    .line 10
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->path_:I

    const-string v1, ""

    .line 11
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->ins_:Ljava/lang/Object;

    .line 12
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->status_:I

    .line 13
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->message_:Ljava/lang/Object;

    .line 14
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->notificationType_:I

    .line 15
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 16
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    goto :goto_0

    .line 17
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 18
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearData()Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "field"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/Response$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "field"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/Response$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/Response$b;

    return-object p1
.end method

.method public clearIns()Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Response;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/Response;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/Response;->getIns()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->ins_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearMessage()Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Response;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/Response;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/Response;->getMessage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->message_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearNotificationType()Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->notificationType_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/Response$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/Response$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/Response$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/Response$b;

    return-object p1
.end method

.method public clearPath()Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->path_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearRequestId()Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->requestId_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearResponseType()Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->responseType_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearService()Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->service_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearStatus()Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->status_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearTimestamp()Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->timestamp_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->clone()Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->clone()Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->clone()Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->clone()Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->clone()Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/Response$b;

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->clone()Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/wufan/friend/chat/protocol/ResponseData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ResponseData;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 19
    .line 20
    return-object v0
.end method

.method public getDataBuilder()Lcom/wufan/friend/chat/protocol/ResponseData$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->getDataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/wufan/friend/chat/protocol/ResponseData$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getDataOrBuilder()Lcom/wufan/friend/chat/protocol/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/wufan/friend/chat/protocol/o0;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ResponseData;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/Response$b;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/Response;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Response;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->y:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIns()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->ins_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->ins_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getInsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->ins_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->ins_:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->message_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->message_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->message_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->message_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->notificationType_:I

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
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->notificationType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPath()Lcom/wufan/friend/chat/protocol/ServicePath;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->path_:I

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
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->path_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRequestId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->requestId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getResponseType()Lcom/wufan/friend/chat/protocol/ResponseType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->responseType_:I

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
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->responseType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getService()Lcom/wufan/friend/chat/protocol/ServiceName;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->service_:I

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
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->service_:I

    .line 2
    .line 3
    return v0
.end method

.method public getStatus()Lcom/wufan/friend/chat/protocol/ResponseStatus;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->status_:I

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
    iget v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->status_:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->timestamp_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hasData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeData(Lcom/wufan/friend/chat/protocol/ResponseData;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/ResponseData;->newBuilder(Lcom/wufan/friend/chat/protocol/ResponseData;)Lcom/wufan/friend/chat/protocol/ResponseData$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/ResponseData$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/ResponseData;)Lcom/wufan/friend/chat/protocol/ResponseData$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseData$b;->buildPartial()Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/Response$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/Response$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/Response$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/Response$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/Response$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/Response$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 2
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

    const/4 v0, 0x0

    .line 35
    :try_start_0
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Response;->access$1500()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/Response;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/Response$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/Response;)Lcom/wufan/friend/chat/protocol/Response$b;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/friend/chat/protocol/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
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

    .line 39
    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/Response$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/Response;)Lcom/wufan/friend/chat/protocol/Response$b;

    .line 40
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 7
    instance-of v0, p1, Lcom/wufan/friend/chat/protocol/Response;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/wufan/friend/chat/protocol/Response;

    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/Response$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/Response;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/wufan/friend/chat/protocol/Response;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Response;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/Response;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getRequestId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getRequestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wufan/friend/chat/protocol/Response$b;->setRequestId(J)Lcom/wufan/friend/chat/protocol/Response$b;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getTimestamp()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wufan/friend/chat/protocol/Response$b;->setTimestamp(J)Lcom/wufan/friend/chat/protocol/Response$b;

    .line 15
    :cond_2
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/Response;->access$600(Lcom/wufan/friend/chat/protocol/Response;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getResponseTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/Response$b;->setResponseTypeValue(I)Lcom/wufan/friend/chat/protocol/Response$b;

    .line 17
    :cond_3
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/Response;->access$700(Lcom/wufan/friend/chat/protocol/Response;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getServiceValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/Response$b;->setServiceValue(I)Lcom/wufan/friend/chat/protocol/Response$b;

    .line 19
    :cond_4
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/Response;->access$800(Lcom/wufan/friend/chat/protocol/Response;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getPathValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/Response$b;->setPathValue(I)Lcom/wufan/friend/chat/protocol/Response$b;

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getIns()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 22
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/Response;->access$900(Lcom/wufan/friend/chat/protocol/Response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->ins_:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 24
    :cond_6
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/Response;->access$1000(Lcom/wufan/friend/chat/protocol/Response;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getStatusValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/Response$b;->setStatusValue(I)Lcom/wufan/friend/chat/protocol/Response$b;

    .line 26
    :cond_7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 27
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/Response;->access$1100(Lcom/wufan/friend/chat/protocol/Response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->message_:Ljava/lang/Object;

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 29
    :cond_8
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/Response;->access$1200(Lcom/wufan/friend/chat/protocol/Response;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getNotificationTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/Response$b;->setNotificationTypeValue(I)Lcom/wufan/friend/chat/protocol/Response$b;

    .line 31
    :cond_9
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->hasData()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/Response$b;->mergeData(Lcom/wufan/friend/chat/protocol/ResponseData;)Lcom/wufan/friend/chat/protocol/Response$b;

    .line 33
    :cond_a
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/Response;->access$1400(Lcom/wufan/friend/chat/protocol/Response;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/Response$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/Response$b;

    .line 34
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/Response$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/Response$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/Response$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/Response$b;

    return-object p1
.end method

.method public setData(Lcom/wufan/friend/chat/protocol/ResponseData$b;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseData$b;->build()Lcom/wufan/friend/chat/protocol/ResponseData;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseData$b;->build()Lcom/wufan/friend/chat/protocol/ResponseData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setData(Lcom/wufan/friend/chat/protocol/ResponseData;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/Response$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->data_:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/Response$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/Response$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/Response$b;

    return-object p1
.end method

.method public setIns(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->ins_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setInsBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/Response;->access$1600(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->ins_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->message_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/Response;->access$1700(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->message_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setNotificationType(Lcom/wufan/friend/chat/protocol/NotificationType;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationType;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->notificationType_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setNotificationTypeValue(I)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->notificationType_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPath(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ServicePath;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->path_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setPathValue(I)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->path_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "field",
            "index",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/friend/chat/protocol/Response$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "field",
            "index",
            "value"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/friend/chat/protocol/Response$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "index",
            "value"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/Response$b;

    return-object p1
.end method

.method public setRequestId(J)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->requestId_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setResponseType(Lcom/wufan/friend/chat/protocol/ResponseType;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseType;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->responseType_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setResponseTypeValue(I)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->responseType_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setService(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ServiceName;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->service_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setServiceValue(I)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->service_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setStatus(Lcom/wufan/friend/chat/protocol/ResponseStatus;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseStatus;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->status_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setStatusValue(I)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->status_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setTimestamp(J)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/Response$b;->timestamp_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/Response$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/Response$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/Response$b;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/Response$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/Response$b;

    return-object p1
.end method
