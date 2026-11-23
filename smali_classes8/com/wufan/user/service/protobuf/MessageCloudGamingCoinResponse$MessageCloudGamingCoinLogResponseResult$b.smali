.class public final Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;",
        ">;",
        "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$c;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$b;",
            ">;"
        }
    .end annotation
.end field

.field private data_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;",
            ">;"
        }
    .end annotation
.end field

.field private errorMsg_:Ljava/lang/Object;

.field private error_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->errorMsg_:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->maybeForceBuilderInitialization()V

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

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->errorMsg_:Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;-><init>()V

    return-void
.end method

.method private ensureDataIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private getDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->bitField0_:I

    .line 10
    .line 11
    and-int/lit8 v2, v2, 0x2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 35
    .line 36
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->access$400()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->getDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllData(Ljava/lang/Iterable;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;",
            ">;)",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->ensureDataIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public addData(ILcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->ensureDataIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addData(ILcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->ensureDataIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addData(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->ensureDataIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addData(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->ensureDataIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDataBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->getDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;

    return-object v0
.end method

.method public addDataBuilder(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->getDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;

    return-object p1
.end method

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->buildPartial()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->buildPartial()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->buildPartial()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;
    .locals 2

    .line 3
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$a;)V

    .line 4
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->error_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->access$602(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;I)I

    .line 5
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 6
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    .line 8
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->bitField0_:I

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->access$702(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->access$702(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;Ljava/util/List;)Ljava/util/List;

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->errorMsg_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->access$802(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->access$902(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;I)I

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->clear()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->clear()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->clear()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->clear()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->error_:I

    .line 7
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    .line 9
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->bitField0_:I

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->errorMsg_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearData()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x3

    .line 14
    .line 15
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->bitField0_:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public clearError()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->error_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearErrorMsg()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->errorMsg_:Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->clone()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->clone()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->clone()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->clone()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->clone()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->clone()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object v0

    return-object v0
.end method

.method public getData(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;

    .line 19
    .line 20
    return-object p1
.end method

.method public getDataBuilder(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->getDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;

    .line 10
    .line 11
    return-object p1
.end method

.method public getDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->getDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getDataCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getDataOrBuilder(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$b;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$b;

    .line 19
    .line 20
    return-object p1
.end method

.method public getDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse;->a()Lcom/google/protobuf/Descriptors$Descriptor;

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
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->error_:I

    .line 2
    .line 3
    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->errorMsg_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->errorMsg_:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->errorMsg_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->errorMsg_:Ljava/lang/Object;

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
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse;->b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;

    .line 6
    .line 7
    const-class v2, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
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
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->access$1200()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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

    check-cast p2, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;
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
    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    .line 40
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
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
    instance-of v0, p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;

    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->getError()I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->getError()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->setError(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_3

    .line 14
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->access$700(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->access$700(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    .line 17
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->bitField0_:I

    goto :goto_0

    .line 18
    :cond_2
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->ensureDataIsMutable()V

    .line 19
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->access$700(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 21
    :cond_3
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->access$700(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 22
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 25
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->access$700(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    .line 26
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->bitField0_:I

    .line 27
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 28
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->getDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 29
    :cond_5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->access$700(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 30
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 31
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->access$800(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->errorMsg_:Ljava/lang/Object;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 33
    :cond_7
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->access$1100(Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    return-object p1
.end method

.method public removeData(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->ensureDataIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public setData(ILcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->ensureDataIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setData(ILcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->dataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->ensureDataIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->data_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setError(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->error_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setErrorMsg(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->errorMsg_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setErrorMsgBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->access$1300(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->errorMsg_:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult$b;

    return-object p1
.end method
