.class public final Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/user/service/protobuf/UserRegStatusResponse$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;",
        ">;",
        "Lcom/wufan/user/service/protobuf/UserRegStatusResponse$b;"
    }
.end annotation


# instance fields
.field private dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;",
            "Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus$b;",
            "Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$c;",
            ">;"
        }
    .end annotation
.end field

.field private data_:Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

.field private errorMsg_:Ljava/lang/Object;

.field private error_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->errorMsg_:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->errorMsg_:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/user/service/protobuf/UserRegStatusResponse$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/user/service/protobuf/UserRegStatusResponse$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;-><init>()V

    return-void
.end method

.method private getDataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;",
            "Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus$b;",
            "Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->getData()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->data_:Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse;->a()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->access$1600()Z

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->build()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->build()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->buildPartial()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->buildPartial()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->buildPartial()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;
    .locals 2

    .line 3
    new-instance v0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/user/service/protobuf/UserRegStatusResponse$a;)V

    .line 4
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->error_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->access$1802(Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;I)I

    .line 5
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->data_:Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->access$1902(Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->access$1902(Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->errorMsg_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->access$2002(Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->clear()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->clear()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->clear()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->clear()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->error_:I

    .line 7
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->data_:Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    goto :goto_0

    .line 9
    :cond_0
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->data_:Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    .line 10
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->errorMsg_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearData()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->data_:Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->data_:Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearError()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->error_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearErrorMsg()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->getErrorMsg()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->errorMsg_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    return-object p1
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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->clone()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->clone()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->clone()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->clone()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->clone()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->clone()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->data_:Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

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
    check-cast v0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    .line 19
    .line 20
    return-object v0
.end method

.method public getDataBuilder()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->getDataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getDataOrBuilder()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$c;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->data_:Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->error_:I

    .line 2
    .line 3
    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->errorMsg_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->errorMsg_:Ljava/lang/Object;

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

.method public getErrorMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->errorMsg_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->errorMsg_:Ljava/lang/Object;

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

.method public hasData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->data_:Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

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
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse;->b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;

    .line 6
    .line 7
    const-class v2, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

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

.method public mergeData(Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->data_:Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;->newBuilder(Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus$b;->mergeFrom(Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus$b;->buildPartial()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->data_:Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->data_:Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
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

    .line 20
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->access$2200()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->mergeFrom(Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
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

    .line 24
    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->mergeFrom(Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    .line 25
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
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
    instance-of v0, p1, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;

    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->mergeFrom(Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->getError()I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->getError()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->setError(I)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->getData()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->mergeData(Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->access$2000(Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->errorMsg_:Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    :cond_3
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->access$2100(Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    .line 19
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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    return-object p1
.end method

.method public setData(Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus$b;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus$b;->build()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->data_:Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus$b;->build()Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setData(Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->dataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->data_:Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$UserRegStatus;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setError(I)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->error_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setErrorMsg(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->errorMsg_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setErrorMsgBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;->access$2300(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->errorMsg_:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    return-object p1
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    return-object p1
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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField$b;

    return-object p1
.end method
