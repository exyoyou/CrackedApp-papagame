.class public final Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/user/service/protobuf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/NewMemberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/wufan/user/service/protobuf/NewMemberInfo$b;",
        ">;",
        "Lcom/wufan/user/service/protobuf/e;"
    }
.end annotation


# instance fields
.field private cloudCoin_:D

.field private cloudDiamond_:D

.field private isBaoYeCard_:Z

.field private isJiSuCard_:Z

.field private isNewMember_:Z

.field private isSigned_:Z

.field private isVip_:Z

.field private monthExpireTime_:Ljava/lang/Object;

.field private newMemberDays_:I

.field private propNum_:I

.field private seasonExpireTime_:Ljava/lang/Object;

.field private showLabelContent_:Ljava/lang/Object;

.field private showLabelType_:I

.field private showNewGift_:Z

.field private totalTime_:Ljava/lang/Object;

.field private vipTime_:Ljava/lang/Object;

.field private vipType_:I

.field private yearExpireTime_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->monthExpireTime_:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->seasonExpireTime_:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->yearExpireTime_:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showLabelContent_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->vipTime_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->totalTime_:Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->maybeForceBuilderInitialization()V

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

    .line 11
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 12
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->monthExpireTime_:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->seasonExpireTime_:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->yearExpireTime_:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showLabelContent_:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->vipTime_:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->totalTime_:Ljava/lang/Object;

    .line 18
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/user/service/protobuf/NewMemberInfo$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/user/service/protobuf/NewMemberInfo$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/c;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$200()Z

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->build()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->build()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/wufan/user/service/protobuf/NewMemberInfo;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->buildPartial()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->buildPartial()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->buildPartial()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/wufan/user/service/protobuf/NewMemberInfo;
    .locals 3

    .line 3
    new-instance v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/user/service/protobuf/NewMemberInfo$a;)V

    .line 4
    iget-wide v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->cloudDiamond_:D

    invoke-static {v0, v1, v2}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$402(Lcom/wufan/user/service/protobuf/NewMemberInfo;D)D

    .line 5
    iget-wide v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->cloudCoin_:D

    invoke-static {v0, v1, v2}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$502(Lcom/wufan/user/service/protobuf/NewMemberInfo;D)D

    .line 6
    iget-boolean v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isVip_:Z

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$602(Lcom/wufan/user/service/protobuf/NewMemberInfo;Z)Z

    .line 7
    iget v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->vipType_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$702(Lcom/wufan/user/service/protobuf/NewMemberInfo;I)I

    .line 8
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->monthExpireTime_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$802(Lcom/wufan/user/service/protobuf/NewMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->seasonExpireTime_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$902(Lcom/wufan/user/service/protobuf/NewMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->yearExpireTime_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$1002(Lcom/wufan/user/service/protobuf/NewMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showLabelType_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$1102(Lcom/wufan/user/service/protobuf/NewMemberInfo;I)I

    .line 12
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showLabelContent_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$1202(Lcom/wufan/user/service/protobuf/NewMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->vipTime_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$1302(Lcom/wufan/user/service/protobuf/NewMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-boolean v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isBaoYeCard_:Z

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$1402(Lcom/wufan/user/service/protobuf/NewMemberInfo;Z)Z

    .line 15
    iget-boolean v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isJiSuCard_:Z

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$1502(Lcom/wufan/user/service/protobuf/NewMemberInfo;Z)Z

    .line 16
    iget v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->propNum_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$1602(Lcom/wufan/user/service/protobuf/NewMemberInfo;I)I

    .line 17
    iget-boolean v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isSigned_:Z

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$1702(Lcom/wufan/user/service/protobuf/NewMemberInfo;Z)Z

    .line 18
    iget-boolean v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isNewMember_:Z

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$1802(Lcom/wufan/user/service/protobuf/NewMemberInfo;Z)Z

    .line 19
    iget v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->newMemberDays_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$1902(Lcom/wufan/user/service/protobuf/NewMemberInfo;I)I

    .line 20
    iget-boolean v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showNewGift_:Z

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$2002(Lcom/wufan/user/service/protobuf/NewMemberInfo;Z)Z

    .line 21
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->totalTime_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$2102(Lcom/wufan/user/service/protobuf/NewMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->clear()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->clear()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->clear()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->clear()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->cloudDiamond_:D

    .line 7
    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->cloudCoin_:D

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isVip_:Z

    .line 9
    iput v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->vipType_:I

    const-string v1, ""

    .line 10
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->monthExpireTime_:Ljava/lang/Object;

    .line 11
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->seasonExpireTime_:Ljava/lang/Object;

    .line 12
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->yearExpireTime_:Ljava/lang/Object;

    .line 13
    iput v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showLabelType_:I

    .line 14
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showLabelContent_:Ljava/lang/Object;

    .line 15
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->vipTime_:Ljava/lang/Object;

    .line 16
    iput-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isBaoYeCard_:Z

    .line 17
    iput-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isJiSuCard_:Z

    .line 18
    iput v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->propNum_:I

    .line 19
    iput-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isSigned_:Z

    .line 20
    iput-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isNewMember_:Z

    .line 21
    iput v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->newMemberDays_:I

    .line 22
    iput-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showNewGift_:Z

    .line 23
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->totalTime_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearCloudCoin()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->cloudCoin_:D

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearCloudDiamond()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->cloudDiamond_:D

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    return-object p1
.end method

.method public clearIsBaoYeCard()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isBaoYeCard_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearIsJiSuCard()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isJiSuCard_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearIsNewMember()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isNewMember_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearIsSigned()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isSigned_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearIsVip()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isVip_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearMonthExpireTime()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getMonthExpireTime()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->monthExpireTime_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearNewMemberDays()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->newMemberDays_:I

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    return-object p1
.end method

.method public clearPropNum()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->propNum_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearSeasonExpireTime()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getSeasonExpireTime()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->seasonExpireTime_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearShowLabelContent()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowLabelContent()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showLabelContent_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearShowLabelType()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showLabelType_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearShowNewGift()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showNewGift_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearTotalTime()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getTotalTime()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->totalTime_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearVipTime()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipTime()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->vipTime_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearVipType()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->vipType_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearYearExpireTime()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getYearExpireTime()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->yearExpireTime_:Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->clone()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->clone()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->clone()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->clone()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->clone()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->clone()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public getCloudCoin()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->cloudCoin_:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCloudDiamond()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->cloudDiamond_:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/NewMemberInfo;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/c;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsBaoYeCard()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isBaoYeCard_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIsJiSuCard()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isJiSuCard_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIsNewMember()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isNewMember_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIsSigned()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isSigned_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIsVip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isVip_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getMonthExpireTime()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->monthExpireTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->monthExpireTime_:Ljava/lang/Object;

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

.method public getMonthExpireTimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->monthExpireTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->monthExpireTime_:Ljava/lang/Object;

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

.method public getNewMemberDays()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->newMemberDays_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPropNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->propNum_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSeasonExpireTime()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->seasonExpireTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->seasonExpireTime_:Ljava/lang/Object;

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

.method public getSeasonExpireTimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->seasonExpireTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->seasonExpireTime_:Ljava/lang/Object;

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

.method public getShowLabelContent()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showLabelContent_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showLabelContent_:Ljava/lang/Object;

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

.method public getShowLabelContentBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showLabelContent_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showLabelContent_:Ljava/lang/Object;

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

.method public getShowLabelType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showLabelType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowNewGift()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showNewGift_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getTotalTime()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->totalTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->totalTime_:Ljava/lang/Object;

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

.method public getTotalTimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->totalTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->totalTime_:Ljava/lang/Object;

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

.method public getVipTime()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->vipTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->vipTime_:Ljava/lang/Object;

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

.method public getVipTimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->vipTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->vipTime_:Ljava/lang/Object;

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

.method public getVipType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->vipType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getYearExpireTime()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->yearExpireTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->yearExpireTime_:Ljava/lang/Object;

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

.method public getYearExpireTimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->yearExpireTime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->yearExpireTime_:Ljava/lang/Object;

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
    sget-object v0, Lcom/wufan/user/service/protobuf/c;->h:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 4
    .line 5
    const-class v2, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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

    .line 55
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$2300()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/NewMemberInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->mergeFrom(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/user/service/protobuf/NewMemberInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
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

    .line 59
    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->mergeFrom(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 60
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    instance-of v0, p1, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->mergeFrom(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    invoke-static {}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getCloudDiamond()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getCloudDiamond()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setCloudDiamond(D)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getCloudCoin()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getCloudCoin()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setCloudCoin(D)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsVip()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsVip()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setIsVip(Z)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipType()I

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setVipType(I)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getMonthExpireTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 20
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$800(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->monthExpireTime_:Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 22
    :cond_5
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getSeasonExpireTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 23
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$900(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->seasonExpireTime_:Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 25
    :cond_6
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getYearExpireTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 26
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$1000(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->yearExpireTime_:Ljava/lang/Object;

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 28
    :cond_7
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowLabelType()I

    move-result v0

    if-eqz v0, :cond_8

    .line 29
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowLabelType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setShowLabelType(I)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 30
    :cond_8
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowLabelContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 31
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$1200(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showLabelContent_:Ljava/lang/Object;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 33
    :cond_9
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 34
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$1300(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->vipTime_:Ljava/lang/Object;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 36
    :cond_a
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsBaoYeCard()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsBaoYeCard()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setIsBaoYeCard(Z)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 38
    :cond_b
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsJiSuCard()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 39
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsJiSuCard()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setIsJiSuCard(Z)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 40
    :cond_c
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getPropNum()I

    move-result v0

    if-eqz v0, :cond_d

    .line 41
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getPropNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setPropNum(I)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 42
    :cond_d
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsSigned()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 43
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsSigned()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setIsSigned(Z)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 44
    :cond_e
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsNewMember()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 45
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsNewMember()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setIsNewMember(Z)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 46
    :cond_f
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getNewMemberDays()I

    move-result v0

    if-eqz v0, :cond_10

    .line 47
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getNewMemberDays()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setNewMemberDays(I)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 48
    :cond_10
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowNewGift()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 49
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowNewGift()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setShowNewGift(Z)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 50
    :cond_11
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getTotalTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 51
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$2100(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->totalTime_:Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 53
    :cond_12
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$2200(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 54
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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    return-object p1
.end method

.method public setCloudCoin(D)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->cloudCoin_:D

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setCloudDiamond(D)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->cloudDiamond_:D

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    return-object p1
.end method

.method public setIsBaoYeCard(Z)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isBaoYeCard_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setIsJiSuCard(Z)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isJiSuCard_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setIsNewMember(Z)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isNewMember_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setIsSigned(Z)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isSigned_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setIsVip(Z)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->isVip_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setMonthExpireTime(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->monthExpireTime_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setMonthExpireTimeBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$2400(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->monthExpireTime_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setNewMemberDays(I)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->newMemberDays_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPropNum(I)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->propNum_:I

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    return-object p1
.end method

.method public setSeasonExpireTime(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->seasonExpireTime_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setSeasonExpireTimeBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$2500(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->seasonExpireTime_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setShowLabelContent(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showLabelContent_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setShowLabelContentBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$2700(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showLabelContent_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setShowLabelType(I)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showLabelType_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setShowNewGift(Z)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->showNewGift_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setTotalTime(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->totalTime_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setTotalTimeBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$2900(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->totalTime_:Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    return-object p1
.end method

.method public setVipTime(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->vipTime_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setVipTimeBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$2800(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->vipTime_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setVipType(I)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->vipType_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setYearExpireTime(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->yearExpireTime_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setYearExpireTimeBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->access$2600(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->yearExpireTime_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
