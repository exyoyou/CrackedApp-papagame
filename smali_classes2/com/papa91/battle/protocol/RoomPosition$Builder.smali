.class public final Lcom/papa91/battle/protocol/RoomPosition$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/battle/protocol/RoomPositionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/RoomPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/papa91/battle/protocol/RoomPosition$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/RoomPositionOrBuilder;"
    }
.end annotation


# instance fields
.field private avatar_:Ljava/lang/Object;

.field private battleArea_:I

.field private battleTitleColor_:Ljava/lang/Object;

.field private battleTitle_:Ljava/lang/Object;

.field private closed_:Z

.field private copper_:I

.field private ignore_:Ljava/lang/Object;

.field private kickCount_:I

.field private nickname_:Ljava/lang/Object;

.field private peripheral_:Z

.field private phoneType_:I

.field private pingVal_:I

.field private platform_:I

.field private proficiencyLevel_:I

.field private state_:I

.field private titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/BattleTitle;",
            "Lcom/papa91/battle/protocol/BattleTitle$Builder;",
            "Lcom/papa91/battle/protocol/BattleTitleOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private title_:Lcom/papa91/battle/protocol/BattleTitle;

.field private uid_:I

.field private vip_:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->nickname_:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->avatar_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->state_:I

    .line 7
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitle_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 9
    iput v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleArea_:I

    .line 10
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->ignore_:Ljava/lang/Object;

    .line 11
    iput v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->platform_:I

    .line 12
    iput v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->phoneType_:I

    .line 13
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 15
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->nickname_:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->avatar_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->state_:I

    .line 18
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitle_:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 20
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleArea_:I

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->ignore_:Ljava/lang/Object;

    .line 22
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->platform_:I

    .line 23
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->phoneType_:I

    .line 24
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/papa91/battle/protocol/RoomPosition$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/RoomPosition$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_RoomPosition_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private getTitleFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/BattleTitle;",
            "Lcom/papa91/battle/protocol/BattleTitle$Builder;",
            "Lcom/papa91/battle/protocol/BattleTitleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->access$200()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->build()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->build()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->buildPartial()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->buildPartial()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->buildPartial()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 2

    .line 3
    new-instance v0, Lcom/papa91/battle/protocol/RoomPosition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/papa91/battle/protocol/RoomPosition;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/papa91/battle/protocol/RoomPosition$1;)V

    .line 4
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->closed_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$402(Lcom/papa91/battle/protocol/RoomPosition;Z)Z

    .line 5
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->vip_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$502(Lcom/papa91/battle/protocol/RoomPosition;Z)Z

    .line 6
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->uid_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$602(Lcom/papa91/battle/protocol/RoomPosition;I)I

    .line 7
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$702(Lcom/papa91/battle/protocol/RoomPosition;Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/BattleTitle;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/BattleTitle;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$702(Lcom/papa91/battle/protocol/RoomPosition;Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/BattleTitle;

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->nickname_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$802(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->avatar_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$902(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->copper_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1002(Lcom/papa91/battle/protocol/RoomPosition;I)I

    .line 13
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->pingVal_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1102(Lcom/papa91/battle/protocol/RoomPosition;I)I

    .line 14
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->peripheral_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1202(Lcom/papa91/battle/protocol/RoomPosition;Z)Z

    .line 15
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->state_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1302(Lcom/papa91/battle/protocol/RoomPosition;I)I

    .line 16
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitle_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1402(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitleColor_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1502(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleArea_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1602(Lcom/papa91/battle/protocol/RoomPosition;I)I

    .line 19
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->kickCount_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1702(Lcom/papa91/battle/protocol/RoomPosition;I)I

    .line 20
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->ignore_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1802(Lcom/papa91/battle/protocol/RoomPosition;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->platform_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1902(Lcom/papa91/battle/protocol/RoomPosition;I)I

    .line 22
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->proficiencyLevel_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$2002(Lcom/papa91/battle/protocol/RoomPosition;I)I

    .line 23
    iget v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->phoneType_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/RoomPosition;->access$2102(Lcom/papa91/battle/protocol/RoomPosition;I)I

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->clear()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->clear()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->clear()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->clear()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->closed_:Z

    .line 7
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->vip_:Z

    .line 8
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->uid_:I

    .line 9
    iget-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 10
    iput-object v2, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    goto :goto_0

    .line 11
    :cond_0
    iput-object v2, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 12
    iput-object v2, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    const-string v1, ""

    .line 13
    iput-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->nickname_:Ljava/lang/Object;

    .line 14
    iput-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->avatar_:Ljava/lang/Object;

    .line 15
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->copper_:I

    .line 16
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->pingVal_:I

    .line 17
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->peripheral_:Z

    .line 18
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->state_:I

    .line 19
    iput-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitle_:Ljava/lang/Object;

    .line 20
    iput-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 21
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleArea_:I

    .line 22
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->kickCount_:I

    .line 23
    iput-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->ignore_:Ljava/lang/Object;

    .line 24
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->platform_:I

    .line 25
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->proficiencyLevel_:I

    .line 26
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->phoneType_:I

    return-object p0
.end method

.method public clearAvatar()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatar()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->avatar_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearBattleArea()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleArea_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearBattleTitle()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitle()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitle_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearBattleTitleColor()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleColor()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearClosed()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->closed_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearCopper()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->copper_:I

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
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    return-object p1
.end method

.method public clearIgnore()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getIgnore()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->ignore_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearKickCount()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->kickCount_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearNickname()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->nickname_:Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    return-object p1
.end method

.method public clearPeripheral()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->peripheral_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearPhoneType()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->phoneType_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearPingVal()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->pingVal_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearPlatform()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->platform_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearProficiencyLevel()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->proficiencyLevel_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearState()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->state_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearTitle()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearUid()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->uid_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearVip()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->vip_:Z

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->clone()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->clone()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->clone()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->clone()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->clone()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition$Builder;

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->clone()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->avatar_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->avatar_:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->avatar_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->avatar_:Ljava/lang/Object;

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

.method public getBattleArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleArea_:I

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

.method public getBattleAreaValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleArea_:I

    .line 2
    .line 3
    return v0
.end method

.method public getBattleTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitle_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitle_:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitle_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitle_:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitleColor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitleColor_:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitleColor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitleColor_:Ljava/lang/Object;

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

.method public getClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->closed_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getCopper()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->copper_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 3
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_RoomPosition_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIgnore()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->ignore_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->ignore_:Ljava/lang/Object;

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

.method public getIgnoreBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->ignore_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->ignore_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->kickCount_:I

    .line 2
    .line 3
    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->nickname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->nickname_:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->nickname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->nickname_:Ljava/lang/Object;

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

.method public getPeripheral()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->peripheral_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getPhoneType()Lcom/papa91/battle/protocol/PhoneType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->phoneType_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->phoneType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPingVal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->pingVal_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlatform()Lcom/papa91/battle/protocol/Platform;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->platform_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->platform_:I

    .line 2
    .line 3
    return v0
.end method

.method public getProficiencyLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->proficiencyLevel_:I

    .line 2
    .line 3
    return v0
.end method

.method public getState()Lcom/papa91/battle/protocol/RoomPosition$State;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->state_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition$State;->valueOf(I)Lcom/papa91/battle/protocol/RoomPosition$State;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/RoomPosition$State;->UNRECOGNIZED:Lcom/papa91/battle/protocol/RoomPosition$State;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->state_:I

    .line 2
    .line 3
    return v0
.end method

.method public getTitle()Lcom/papa91/battle/protocol/BattleTitle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/battle/protocol/BattleTitle;->getDefaultInstance()Lcom/papa91/battle/protocol/BattleTitle;

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
    check-cast v0, Lcom/papa91/battle/protocol/BattleTitle;

    .line 19
    .line 20
    return-object v0
.end method

.method public getTitleBuilder()Lcom/papa91/battle/protocol/BattleTitle$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->getTitleFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/papa91/battle/protocol/BattleTitle$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getTitleOrBuilder()Lcom/papa91/battle/protocol/BattleTitleOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/papa91/battle/protocol/BattleTitleOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/battle/protocol/BattleTitle;->getDefaultInstance()Lcom/papa91/battle/protocol/BattleTitle;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->uid_:I

    .line 2
    .line 3
    return v0
.end method

.method public getVip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->vip_:Z

    .line 2
    .line 3
    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

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
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_RoomPosition_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/papa91/battle/protocol/RoomPosition;

    .line 4
    .line 5
    const-class v2, Lcom/papa91/battle/protocol/RoomPosition$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 54
    :try_start_0
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->access$2300()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/papa91/battle/protocol/RoomPosition;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
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

    .line 58
    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 59
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setClosed(Z)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setVip(Z)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setUid(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeTitle(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 20
    invoke-static {p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$800(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->nickname_:Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 22
    :cond_5
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 23
    invoke-static {p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$900(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->avatar_:Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 25
    :cond_6
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getCopper()I

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getCopper()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setCopper(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 27
    :cond_7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getPingVal()I

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getPingVal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 29
    :cond_8
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getPeripheral()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getPeripheral()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setPeripheral(Z)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 31
    :cond_9
    invoke-static {p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1300(Lcom/papa91/battle/protocol/RoomPosition;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getStateValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setStateValue(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 33
    :cond_a
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 34
    invoke-static {p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1400(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitle_:Ljava/lang/Object;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 36
    :cond_b
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 37
    invoke-static {p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1500(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 38
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 39
    :cond_c
    invoke-static {p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1600(Lcom/papa91/battle/protocol/RoomPosition;)I

    move-result v0

    if-eqz v0, :cond_d

    .line 40
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleAreaValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setBattleAreaValue(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 41
    :cond_d
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getKickCount()I

    move-result v0

    if-eqz v0, :cond_e

    .line 42
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getKickCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setKickCount(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 43
    :cond_e
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getIgnore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 44
    invoke-static {p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1800(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->ignore_:Ljava/lang/Object;

    .line 45
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 46
    :cond_f
    invoke-static {p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$1900(Lcom/papa91/battle/protocol/RoomPosition;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 47
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getPlatformValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setPlatformValue(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 48
    :cond_10
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getProficiencyLevel()I

    move-result v0

    if-eqz v0, :cond_11

    .line 49
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getProficiencyLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setProficiencyLevel(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 50
    :cond_11
    invoke-static {p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$2100(Lcom/papa91/battle/protocol/RoomPosition;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 51
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getPhoneTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setPhoneTypeValue(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 52
    :cond_12
    invoke-static {p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$2200(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 53
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeTitle(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/battle/protocol/BattleTitle;->newBuilder(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/BattleTitle$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/BattleTitle$Builder;->mergeFrom(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/BattleTitle$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleTitle$Builder;->buildPartial()Lcom/papa91/battle/protocol/BattleTitle;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

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

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    return-object p1
.end method

.method public setAvatar(Ljava/lang/String;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->avatar_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setAvatarBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$2500(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->avatar_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
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
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleArea_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setBattleAreaValue(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleArea_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setBattleTitle(Ljava/lang/String;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitle_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setBattleTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$2600(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitle_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setBattleTitleColor(Ljava/lang/String;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setBattleTitleColorBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$2700(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setClosed(Z)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->closed_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setCopper(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->copper_:I

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    return-object p1
.end method

.method public setIgnore(Ljava/lang/String;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->ignore_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setIgnoreBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$2800(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->ignore_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setKickCount(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->kickCount_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setNickname(Ljava/lang/String;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->nickname_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setNicknameBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/RoomPosition;->access$2400(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->nickname_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setPeripheral(Z)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->peripheral_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPhoneType(Lcom/papa91/battle/protocol/PhoneType;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
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
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->phoneType_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setPhoneTypeValue(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->phoneType_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPingVal(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->pingVal_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPlatform(Lcom/papa91/battle/protocol/Platform;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
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
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->platform_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setPlatformValue(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->platform_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setProficiencyLevel(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->proficiencyLevel_:I

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    return-object p1
.end method

.method public setState(Lcom/papa91/battle/protocol/RoomPosition$State;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition$State;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->state_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setStateValue(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->state_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setTitle(Lcom/papa91/battle/protocol/BattleTitle$Builder;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleTitle$Builder;->build()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleTitle$Builder;->build()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setTitle(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setUid(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->uid_:I

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
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    return-object p1
.end method

.method public setVip(Z)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/RoomPosition$Builder;->vip_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
