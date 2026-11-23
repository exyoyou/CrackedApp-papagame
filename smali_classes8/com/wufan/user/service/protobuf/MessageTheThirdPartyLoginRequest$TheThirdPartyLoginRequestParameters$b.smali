.class public final Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;",
        ">;",
        "Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$b;"
    }
.end annotation


# instance fields
.field private appVersion_:Ljava/lang/Object;

.field private sign_:Ljava/lang/Object;

.field private theThirdPartLoginType_:I

.field private uniqueId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->uniqueId_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->theThirdPartLoginType_:I

    .line 6
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->sign_:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->appVersion_:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->maybeForceBuilderInitialization()V

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

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 10
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->uniqueId_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->theThirdPartLoginType_:I

    .line 12
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->sign_:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->appVersion_:Ljava/lang/Object;

    .line 14
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest;->a()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->access$400()Z

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->buildPartial()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->buildPartial()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->buildPartial()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;
    .locals 2

    .line 3
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$a;)V

    .line 4
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->uniqueId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->access$602(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->theThirdPartLoginType_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->access$702(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;I)I

    .line 6
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->sign_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->access$802(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->appVersion_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->access$902(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->clear()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->clear()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->clear()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->clear()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->uniqueId_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->theThirdPartLoginType_:I

    .line 8
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->sign_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->appVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearAppVersion()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->getAppVersion()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->appVersion_:Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    return-object p1
.end method

.method public clearSign()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->getSign()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->sign_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearTheThirdPartLoginType()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->theThirdPartLoginType_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearUniqueId()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->getUniqueId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->uniqueId_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->clone()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->clone()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->clone()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->clone()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->clone()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->clone()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->appVersion_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->appVersion_:Ljava/lang/Object;

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

.method public getAppVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->appVersion_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->appVersion_:Ljava/lang/Object;

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->sign_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->sign_:Ljava/lang/Object;

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

.method public getSignBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->sign_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->sign_:Ljava/lang/Object;

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

.method public getTheThirdPartLoginType()Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->theThirdPartLoginType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->valueOf(I)Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getTheThirdPartLoginTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->theThirdPartLoginType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->uniqueId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->uniqueId_:Ljava/lang/Object;

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

.method public getUniqueIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->uniqueId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->uniqueId_:Ljava/lang/Object;

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest;->b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    .line 6
    .line 7
    const-class v2, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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

    .line 24
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->access$1100()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
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

    .line 28
    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    .line 29
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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
    instance-of v0, p1, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->access$600(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->uniqueId_:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    :cond_1
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->access$700(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->getTheThirdPartLoginTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->setTheThirdPartLoginTypeValue(I)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->getSign()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->access$800(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->sign_:Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->access$900(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->appVersion_:Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 22
    :cond_4
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->access$1000(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    .line 23
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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    return-object p1
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->appVersion_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setAppVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->access$1400(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->appVersion_:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    return-object p1
.end method

.method public setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->sign_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setSignBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->access$1300(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->sign_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setTheThirdPartLoginType(Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->theThirdPartLoginType_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setTheThirdPartLoginTypeValue(I)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->theThirdPartLoginType_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setUniqueId(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->uniqueId_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setUniqueIdBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->access$1200(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->uniqueId_:Ljava/lang/Object;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    return-object p1
.end method
