.class public final Lcom/papa91/battle/protocol/Account$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/battle/protocol/AccountOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/papa91/battle/protocol/Account$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/AccountOrBuilder;"
    }
.end annotation


# instance fields
.field private area_:I

.field private avatar_:Ljava/lang/Object;

.field private battleTitleColor_:Ljava/lang/Object;

.field private battleTitle_:Ljava/lang/Object;

.field private copper_:I

.field private ignore1_:Ljava/lang/Object;

.field private kickCount_:I

.field private nickname_:Ljava/lang/Object;

.field private phoneType_:I

.field private platform_:I

.field private proficiencyLevel_:I

.field private uid_:I

.field private vip_:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->nickname_:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->avatar_:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitle_:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitleColor_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->area_:I

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->ignore1_:Ljava/lang/Object;

    .line 10
    iput v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->platform_:I

    .line 11
    iput v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->phoneType_:I

    .line 12
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 14
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->nickname_:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->avatar_:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitle_:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitleColor_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->area_:I

    .line 19
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->ignore1_:Ljava/lang/Object;

    .line 20
    iput v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->platform_:I

    .line 21
    iput v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->phoneType_:I

    .line 22
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/papa91/battle/protocol/Account$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Account$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/Account$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Account$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Account_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->access$200()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Account$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Account$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Account$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account$Builder;->build()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account$Builder;->build()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/papa91/battle/protocol/Account;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account$Builder;->buildPartial()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account$Builder;->buildPartial()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account$Builder;->buildPartial()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/papa91/battle/protocol/Account;
    .locals 2

    .line 3
    new-instance v0, Lcom/papa91/battle/protocol/Account;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/papa91/battle/protocol/Account;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/papa91/battle/protocol/Account$1;)V

    .line 4
    iget v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->uid_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Account;->access$402(Lcom/papa91/battle/protocol/Account;I)I

    .line 5
    iget-object v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->nickname_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Account;->access$502(Lcom/papa91/battle/protocol/Account;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->avatar_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Account;->access$602(Lcom/papa91/battle/protocol/Account;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->vip_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Account;->access$702(Lcom/papa91/battle/protocol/Account;Z)Z

    .line 8
    iget-object v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitle_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Account;->access$802(Lcom/papa91/battle/protocol/Account;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitleColor_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Account;->access$902(Lcom/papa91/battle/protocol/Account;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->copper_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Account;->access$1002(Lcom/papa91/battle/protocol/Account;I)I

    .line 11
    iget v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->kickCount_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Account;->access$1102(Lcom/papa91/battle/protocol/Account;I)I

    .line 12
    iget v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->area_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Account;->access$1202(Lcom/papa91/battle/protocol/Account;I)I

    .line 13
    iget-object v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->ignore1_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Account;->access$1302(Lcom/papa91/battle/protocol/Account;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->platform_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Account;->access$1402(Lcom/papa91/battle/protocol/Account;I)I

    .line 15
    iget v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->proficiencyLevel_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Account;->access$1502(Lcom/papa91/battle/protocol/Account;I)I

    .line 16
    iget v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->phoneType_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Account;->access$1602(Lcom/papa91/battle/protocol/Account;I)I

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account$Builder;->clear()Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account$Builder;->clear()Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account$Builder;->clear()Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account$Builder;->clear()Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->uid_:I

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->nickname_:Ljava/lang/Object;

    .line 8
    iput-object v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->avatar_:Ljava/lang/Object;

    .line 9
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->vip_:Z

    .line 10
    iput-object v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitle_:Ljava/lang/Object;

    .line 11
    iput-object v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 12
    iput v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->copper_:I

    .line 13
    iput v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->kickCount_:I

    .line 14
    iput v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->area_:I

    .line 15
    iput-object v1, p0, Lcom/papa91/battle/protocol/Account$Builder;->ignore1_:Ljava/lang/Object;

    .line 16
    iput v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->platform_:I

    .line 17
    iput v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->proficiencyLevel_:I

    .line 18
    iput v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->phoneType_:I

    return-object p0
.end method

.method public clearArea()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->area_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearAvatar()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->getDefaultInstance()Lcom/papa91/battle/protocol/Account;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getAvatar()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->avatar_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearBattleTitle()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->getDefaultInstance()Lcom/papa91/battle/protocol/Account;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getBattleTitle()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitle_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearBattleTitleColor()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->getDefaultInstance()Lcom/papa91/battle/protocol/Account;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getBattleTitleColor()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearCopper()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->copper_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Account$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Account$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Account$Builder;

    return-object p1
.end method

.method public clearIgnore1()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->getDefaultInstance()Lcom/papa91/battle/protocol/Account;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getIgnore1()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->ignore1_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearKickCount()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->kickCount_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearNickname()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->getDefaultInstance()Lcom/papa91/battle/protocol/Account;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Account;->getNickname()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->nickname_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Account$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Account$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Account$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Account$Builder;

    return-object p1
.end method

.method public clearPhoneType()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->phoneType_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearPlatform()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->platform_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearProficiencyLevel()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->proficiencyLevel_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearUid()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->uid_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearVip()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->vip_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account$Builder;->clone()Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account$Builder;->clone()Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account$Builder;->clone()Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account$Builder;->clone()Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account$Builder;->clone()Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/Account$Builder;

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account$Builder;->clone()Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->area_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/BattleArea;->valueOf(I)Lcom/papa91/battle/protocol/BattleArea;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->UNRECOGNIZED:Lcom/papa91/battle/protocol/BattleArea;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getAreaValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->area_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->avatar_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->avatar_:Ljava/lang/Object;

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

.method public getAvatarBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->avatar_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->avatar_:Ljava/lang/Object;

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

.method public getBattleTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitle_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitle_:Ljava/lang/Object;

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

.method public getBattleTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitle_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitle_:Ljava/lang/Object;

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

.method public getBattleTitleColor()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitleColor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitleColor_:Ljava/lang/Object;

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

.method public getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitleColor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitleColor_:Ljava/lang/Object;

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

.method public getCopper()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->copper_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account$Builder;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Account$Builder;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/papa91/battle/protocol/Account;
    .locals 1

    .line 3
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->getDefaultInstance()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Account_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIgnore1()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->ignore1_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->ignore1_:Ljava/lang/Object;

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

.method public getIgnore1Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->ignore1_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->ignore1_:Ljava/lang/Object;

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

.method public getKickCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->kickCount_:I

    .line 2
    .line 3
    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->nickname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->nickname_:Ljava/lang/Object;

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

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->nickname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->nickname_:Ljava/lang/Object;

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

.method public getPhoneType()Lcom/papa91/battle/protocol/PhoneType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->phoneType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/PhoneType;->valueOf(I)Lcom/papa91/battle/protocol/PhoneType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/PhoneType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/PhoneType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getPhoneTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->phoneType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlatform()Lcom/papa91/battle/protocol/Platform;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->platform_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/Platform;->valueOf(I)Lcom/papa91/battle/protocol/Platform;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/Platform;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Platform;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getPlatformValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->platform_:I

    .line 2
    .line 3
    return v0
.end method

.method public getProficiencyLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->proficiencyLevel_:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->uid_:I

    .line 2
    .line 3
    return v0
.end method

.method public getVip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->vip_:Z

    .line 2
    .line 3
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Account_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/papa91/battle/protocol/Account;

    .line 4
    .line 5
    const-class v2, Lcom/papa91/battle/protocol/Account$Builder;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Account$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Account$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/Account$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Account$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Account$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Account$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Account$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/Account$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Account$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    :try_start_0
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->access$1800()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Account;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Account$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Account;)Lcom/papa91/battle/protocol/Account$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/papa91/battle/protocol/Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
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

    .line 48
    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Account$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Account;)Lcom/papa91/battle/protocol/Account$Builder;

    .line 49
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/papa91/battle/protocol/Account;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/papa91/battle/protocol/Account;

    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Account$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Account;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/papa91/battle/protocol/Account;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->getDefaultInstance()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getUid()I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Account$Builder;->setUid(I)Lcom/papa91/battle/protocol/Account$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-static {p1}, Lcom/papa91/battle/protocol/Account;->access$500(Lcom/papa91/battle/protocol/Account;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->nickname_:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-static {p1}, Lcom/papa91/battle/protocol/Account;->access$600(Lcom/papa91/battle/protocol/Account;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->avatar_:Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getVip()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getVip()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Account$Builder;->setVip(Z)Lcom/papa91/battle/protocol/Account$Builder;

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getBattleTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 22
    invoke-static {p1}, Lcom/papa91/battle/protocol/Account;->access$800(Lcom/papa91/battle/protocol/Account;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitle_:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 24
    :cond_5
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 25
    invoke-static {p1}, Lcom/papa91/battle/protocol/Account;->access$900(Lcom/papa91/battle/protocol/Account;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 26
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    :cond_6
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getCopper()I

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getCopper()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Account$Builder;->setCopper(I)Lcom/papa91/battle/protocol/Account$Builder;

    .line 29
    :cond_7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getKickCount()I

    move-result v0

    if-eqz v0, :cond_8

    .line 30
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getKickCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Account$Builder;->setKickCount(I)Lcom/papa91/battle/protocol/Account$Builder;

    .line 31
    :cond_8
    invoke-static {p1}, Lcom/papa91/battle/protocol/Account;->access$1200(Lcom/papa91/battle/protocol/Account;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 32
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getAreaValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Account$Builder;->setAreaValue(I)Lcom/papa91/battle/protocol/Account$Builder;

    .line 33
    :cond_9
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getIgnore1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 34
    invoke-static {p1}, Lcom/papa91/battle/protocol/Account;->access$1300(Lcom/papa91/battle/protocol/Account;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Account$Builder;->ignore1_:Ljava/lang/Object;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 36
    :cond_a
    invoke-static {p1}, Lcom/papa91/battle/protocol/Account;->access$1400(Lcom/papa91/battle/protocol/Account;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 37
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getPlatformValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Account$Builder;->setPlatformValue(I)Lcom/papa91/battle/protocol/Account$Builder;

    .line 38
    :cond_b
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getProficiencyLevel()I

    move-result v0

    if-eqz v0, :cond_c

    .line 39
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getProficiencyLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Account$Builder;->setProficiencyLevel(I)Lcom/papa91/battle/protocol/Account$Builder;

    .line 40
    :cond_c
    invoke-static {p1}, Lcom/papa91/battle/protocol/Account;->access$1600(Lcom/papa91/battle/protocol/Account;)I

    move-result v0

    if-eqz v0, :cond_d

    .line 41
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Account;->getPhoneTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Account$Builder;->setPhoneTypeValue(I)Lcom/papa91/battle/protocol/Account$Builder;

    .line 42
    :cond_d
    invoke-static {p1}, Lcom/papa91/battle/protocol/Account;->access$1700(Lcom/papa91/battle/protocol/Account;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Account$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Account$Builder;

    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Account$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Account$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Account$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Account$Builder;

    return-object p1
.end method

.method public setArea(Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->area_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setAreaValue(I)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->area_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setAvatar(Ljava/lang/String;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->avatar_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setAvatarBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/Account;->access$2000(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->avatar_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setBattleTitle(Ljava/lang/String;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitle_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setBattleTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/Account;->access$2100(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitle_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setBattleTitleColor(Ljava/lang/String;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setBattleTitleColorBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/Account;->access$2200(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setCopper(I)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->copper_:I

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

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Account$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Account$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Account$Builder;

    return-object p1
.end method

.method public setIgnore1(Ljava/lang/String;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->ignore1_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setIgnore1Bytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/Account;->access$2300(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->ignore1_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setKickCount(I)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->kickCount_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setNickname(Ljava/lang/String;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->nickname_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setNicknameBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/Account;->access$1900(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->nickname_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setPhoneType(Lcom/papa91/battle/protocol/PhoneType;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/PhoneType;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->phoneType_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setPhoneTypeValue(I)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->phoneType_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPlatform(Lcom/papa91/battle/protocol/Platform;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Platform;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->platform_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setPlatformValue(I)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->platform_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setProficiencyLevel(I)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->proficiencyLevel_:I

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

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/papa91/battle/protocol/Account$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/papa91/battle/protocol/Account$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Account$Builder;

    return-object p1
.end method

.method public setUid(I)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->uid_:I

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

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Account$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Account$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Account$Builder;

    return-object p1
.end method

.method public setVip(Z)Lcom/papa91/battle/protocol/Account$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Account$Builder;->vip_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
