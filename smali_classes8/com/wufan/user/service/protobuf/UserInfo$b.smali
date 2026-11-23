.class public final Lcom/wufan/user/service/protobuf/UserInfo$b;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/user/service/protobuf/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/UserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/wufan/user/service/protobuf/UserInfo$b;",
        ">;",
        "Lcom/wufan/user/service/protobuf/h;"
    }
.end annotation


# instance fields
.field private accountType_:I

.field private account_:Ljava/lang/Object;

.field private appleId_:Ljava/lang/Object;

.field private avatarSrc_:Ljava/lang/Object;

.field private bitField0_:I

.field private exp_:I

.field private gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/wufan/user/service/protobuf/GameListPermission;",
            "Lcom/wufan/user/service/protobuf/GameListPermission$b;",
            "Lcom/wufan/user/service/protobuf/a;",
            ">;"
        }
    .end annotation
.end field

.field private gameListPermission_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/GameListPermission;",
            ">;"
        }
    .end annotation
.end field

.field private gameTime_:J

.field private gender_:I

.field private isAnchor_:I

.field private isBindQq_:I

.field private isBindWb_:I

.field private isBindWx_:I

.field private isRealName_:I

.field private level_:I

.field private liveTotalCharm_:I

.field private memberTime_:J

.field private memberTitleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/user/service/protobuf/MemberTitleInfo;",
            "Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;",
            "Lcom/wufan/user/service/protobuf/b;",
            ">;"
        }
    .end annotation
.end field

.field private memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

.field private mobile_:Ljava/lang/Object;

.field private newMemberInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/user/service/protobuf/NewMemberInfo;",
            "Lcom/wufan/user/service/protobuf/NewMemberInfo$b;",
            "Lcom/wufan/user/service/protobuf/e;",
            ">;"
        }
    .end annotation
.end field

.field private newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

.field private nickname_:Ljava/lang/Object;

.field private papaMoney_:J

.field private payTopTip_:Ljava/lang/Object;

.field private pwdSetUp_:I

.field private registerTime_:J

.field private sVIPLevel_:I

.field private secretKey_:Ljava/lang/Object;

.field private surplusExp_:I

.field private token_:Ljava/lang/Object;

.field private uid_:I

.field private vipExpTime_:J

.field private vipGame_:I

.field private vipLevel_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->account_:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->nickname_:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->avatarSrc_:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->mobile_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->appleId_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->payTopTip_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->token_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->secretKey_:Ljava/lang/Object;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    .line 13
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->maybeForceBuilderInitialization()V

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

    .line 14
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 15
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->account_:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->nickname_:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->avatarSrc_:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->mobile_:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->appleId_:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->payTopTip_:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->token_:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->secretKey_:Ljava/lang/Object;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    .line 24
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/user/service/protobuf/UserInfo$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/user/service/protobuf/UserInfo$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;-><init>()V

    return-void
.end method

.method private ensureGameListPermissionIsMutable()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x10000000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    .line 16
    .line 17
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->bitField0_:I

    .line 18
    .line 19
    or-int/2addr v0, v1

    .line 20
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/c;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private getGameListPermissionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/wufan/user/service/protobuf/GameListPermission;",
            "Lcom/wufan/user/service/protobuf/GameListPermission$b;",
            "Lcom/wufan/user/service/protobuf/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->bitField0_:I

    .line 10
    .line 11
    const/high16 v3, 0x10000000

    .line 12
    .line 13
    and-int/2addr v2, v3

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 36
    .line 37
    return-object v0
.end method

.method private getMemberTitleFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/user/service/protobuf/MemberTitleInfo;",
            "Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;",
            "Lcom/wufan/user/service/protobuf/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getNewMemberInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/user/service/protobuf/NewMemberInfo;",
            "Lcom/wufan/user/service/protobuf/NewMemberInfo$b;",
            "Lcom/wufan/user/service/protobuf/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->access$200()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->getGameListPermissionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllGameListPermission(Ljava/lang/Iterable;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
            "Lcom/wufan/user/service/protobuf/GameListPermission;",
            ">;)",
            "Lcom/wufan/user/service/protobuf/UserInfo$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->ensureGameListPermissionIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

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

.method public addGameListPermission(ILcom/wufan/user/service/protobuf/GameListPermission$b;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->ensureGameListPermissionIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/GameListPermission$b;->build()Lcom/wufan/user/service/protobuf/GameListPermission;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/GameListPermission$b;->build()Lcom/wufan/user/service/protobuf/GameListPermission;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addGameListPermission(ILcom/wufan/user/service/protobuf/GameListPermission;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->ensureGameListPermissionIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

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

.method public addGameListPermission(Lcom/wufan/user/service/protobuf/GameListPermission$b;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->ensureGameListPermissionIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/GameListPermission$b;->build()Lcom/wufan/user/service/protobuf/GameListPermission;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/GameListPermission$b;->build()Lcom/wufan/user/service/protobuf/GameListPermission;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addGameListPermission(Lcom/wufan/user/service/protobuf/GameListPermission;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->ensureGameListPermissionIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

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

.method public addGameListPermissionBuilder()Lcom/wufan/user/service/protobuf/GameListPermission$b;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->getGameListPermissionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/wufan/user/service/protobuf/GameListPermission;->getDefaultInstance()Lcom/wufan/user/service/protobuf/GameListPermission;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/GameListPermission$b;

    return-object v0
.end method

.method public addGameListPermissionBuilder(I)Lcom/wufan/user/service/protobuf/GameListPermission$b;
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
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->getGameListPermissionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/wufan/user/service/protobuf/GameListPermission;->getDefaultInstance()Lcom/wufan/user/service/protobuf/GameListPermission;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/GameListPermission$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/UserInfo$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/UserInfo$b;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->buildPartial()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->buildPartial()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->buildPartial()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 3

    .line 3
    new-instance v0, Lcom/wufan/user/service/protobuf/UserInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/user/service/protobuf/UserInfo$a;)V

    .line 4
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->uid_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$402(Lcom/wufan/user/service/protobuf/UserInfo;I)I

    .line 5
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->account_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$502(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->nickname_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$602(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->pwdSetUp_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$702(Lcom/wufan/user/service/protobuf/UserInfo;I)I

    .line 8
    iget-wide v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->papaMoney_:J

    invoke-static {v0, v1, v2}, Lcom/wufan/user/service/protobuf/UserInfo;->access$802(Lcom/wufan/user/service/protobuf/UserInfo;J)J

    .line 9
    iget-wide v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->registerTime_:J

    invoke-static {v0, v1, v2}, Lcom/wufan/user/service/protobuf/UserInfo;->access$902(Lcom/wufan/user/service/protobuf/UserInfo;J)J

    .line 10
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->avatarSrc_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$1002(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gender_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$1102(Lcom/wufan/user/service/protobuf/UserInfo;I)I

    .line 12
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->level_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$1202(Lcom/wufan/user/service/protobuf/UserInfo;I)I

    .line 13
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->exp_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$1302(Lcom/wufan/user/service/protobuf/UserInfo;I)I

    .line 14
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->mobile_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$1402(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->surplusExp_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$1502(Lcom/wufan/user/service/protobuf/UserInfo;I)I

    .line 16
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->appleId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$1602(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->accountType_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$1702(Lcom/wufan/user/service/protobuf/UserInfo;I)I

    .line 18
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->vipLevel_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$1802(Lcom/wufan/user/service/protobuf/UserInfo;I)I

    .line 19
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->sVIPLevel_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$1902(Lcom/wufan/user/service/protobuf/UserInfo;I)I

    .line 20
    iget-wide v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->vipExpTime_:J

    invoke-static {v0, v1, v2}, Lcom/wufan/user/service/protobuf/UserInfo;->access$2002(Lcom/wufan/user/service/protobuf/UserInfo;J)J

    .line 21
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->liveTotalCharm_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$2102(Lcom/wufan/user/service/protobuf/UserInfo;I)I

    .line 22
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isAnchor_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$2202(Lcom/wufan/user/service/protobuf/UserInfo;I)I

    .line 23
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$2302(Lcom/wufan/user/service/protobuf/UserInfo;Lcom/wufan/user/service/protobuf/MemberTitleInfo;)Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$2302(Lcom/wufan/user/service/protobuf/UserInfo;Lcom/wufan/user/service/protobuf/MemberTitleInfo;)Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 26
    :goto_0
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isRealName_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$2402(Lcom/wufan/user/service/protobuf/UserInfo;I)I

    .line 27
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->payTopTip_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$2502(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isBindWb_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$2602(Lcom/wufan/user/service/protobuf/UserInfo;I)I

    .line 29
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isBindWx_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$2702(Lcom/wufan/user/service/protobuf/UserInfo;I)I

    .line 30
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isBindQq_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$2802(Lcom/wufan/user/service/protobuf/UserInfo;I)I

    .line 31
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->vipGame_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$2902(Lcom/wufan/user/service/protobuf/UserInfo;I)I

    .line 32
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->token_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3002(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->secretKey_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3102(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_2

    .line 35
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->bitField0_:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    .line 37
    iget v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->bitField0_:I

    const v2, -0x10000001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->bitField0_:I

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3202(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3202(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/util/List;)Ljava/util/List;

    .line 40
    :goto_1
    iget-wide v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTime_:J

    invoke-static {v0, v1, v2}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3302(Lcom/wufan/user/service/protobuf/UserInfo;J)J

    .line 41
    iget-wide v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameTime_:J

    invoke-static {v0, v1, v2}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3402(Lcom/wufan/user/service/protobuf/UserInfo;J)J

    .line 42
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 43
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3502(Lcom/wufan/user/service/protobuf/UserInfo;Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/wufan/user/service/protobuf/NewMemberInfo;

    goto :goto_2

    .line 44
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3502(Lcom/wufan/user/service/protobuf/UserInfo;Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/wufan/user/service/protobuf/NewMemberInfo;

    :goto_2
    const/4 v1, 0x0

    .line 45
    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3602(Lcom/wufan/user/service/protobuf/UserInfo;I)I

    .line 46
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->clear()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->clear()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->clear()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->clear()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 6

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->uid_:I

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->account_:Ljava/lang/Object;

    .line 8
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->nickname_:Ljava/lang/Object;

    .line 9
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->pwdSetUp_:I

    const-wide/16 v2, 0x0

    .line 10
    iput-wide v2, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->papaMoney_:J

    .line 11
    iput-wide v2, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->registerTime_:J

    .line 12
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->avatarSrc_:Ljava/lang/Object;

    .line 13
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gender_:I

    .line 14
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->level_:I

    .line 15
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->exp_:I

    .line 16
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->mobile_:Ljava/lang/Object;

    .line 17
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->surplusExp_:I

    .line 18
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->appleId_:Ljava/lang/Object;

    .line 19
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->accountType_:I

    .line 20
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->vipLevel_:I

    .line 21
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->sVIPLevel_:I

    .line 22
    iput-wide v2, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->vipExpTime_:J

    .line 23
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->liveTotalCharm_:I

    .line 24
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isAnchor_:I

    .line 25
    iget-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 26
    iput-object v5, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    goto :goto_0

    .line 27
    :cond_0
    iput-object v5, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 28
    iput-object v5, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 29
    :goto_0
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isRealName_:I

    .line 30
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->payTopTip_:Ljava/lang/Object;

    .line 31
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isBindWb_:I

    .line 32
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isBindWx_:I

    .line 33
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isBindQq_:I

    .line 34
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->vipGame_:I

    .line 35
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->token_:Ljava/lang/Object;

    .line 36
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->secretKey_:Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    .line 39
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->bitField0_:I

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 41
    :goto_1
    iput-wide v2, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTime_:J

    .line 42
    iput-wide v2, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameTime_:J

    .line 43
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 44
    iput-object v5, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    goto :goto_2

    .line 45
    :cond_2
    iput-object v5, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 46
    iput-object v5, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_2
    return-object p0
.end method

.method public clearAccount()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->account_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearAccountType()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->accountType_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearAppleId()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAppleId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->appleId_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearAvatarSrc()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->avatarSrc_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearExp()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->exp_:I

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "field"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/UserInfo$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/UserInfo$b;

    return-object p1
.end method

.method public clearGameListPermission()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->bitField0_:I

    .line 12
    .line 13
    const v1, -0x10000001

    .line 14
    .line 15
    .line 16
    and-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->bitField0_:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-object p0
.end method

.method public clearGameTime()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameTime_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearGender()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gender_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearIsAnchor()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isAnchor_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearIsBindQq()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isBindQq_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearIsBindWb()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isBindWb_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearIsBindWx()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isBindWx_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearIsRealName()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isRealName_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearLevel()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->level_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearLiveTotalCharm()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->liveTotalCharm_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearMemberTime()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTime_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearMemberTitle()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearMobile()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->mobile_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearNewMemberInfo()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearNickname()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->nickname_:Ljava/lang/Object;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/UserInfo$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/UserInfo$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/UserInfo$b;

    return-object p1
.end method

.method public clearPapaMoney()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->papaMoney_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearPayTopTip()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getPayTopTip()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->payTopTip_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearPwdSetUp()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->pwdSetUp_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearRegisterTime()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->registerTime_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearSVIPLevel()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->sVIPLevel_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearSecretKey()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->secretKey_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearSurplusExp()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->surplusExp_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearToken()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->token_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearUid()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->uid_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearVipExpTime()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->vipExpTime_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearVipGame()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->vipGame_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearVipLevel()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->vipLevel_:I

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->clone()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->clone()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->clone()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->clone()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->clone()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/wufan/user/service/protobuf/UserInfo$b;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/UserInfo$b;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->clone()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->account_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->account_:Ljava/lang/Object;

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

.method public getAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->account_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->account_:Ljava/lang/Object;

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

.method public getAccountType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->accountType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAppleId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->appleId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->appleId_:Ljava/lang/Object;

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

.method public getAppleIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->appleId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->appleId_:Ljava/lang/Object;

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

.method public getAvatarSrc()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->avatarSrc_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->avatarSrc_:Ljava/lang/Object;

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

.method public getAvatarSrcBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->avatarSrc_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->avatarSrc_:Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/c;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->exp_:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameListPermission(I)Lcom/wufan/user/service/protobuf/GameListPermission;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/wufan/user/service/protobuf/GameListPermission;

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
    check-cast p1, Lcom/wufan/user/service/protobuf/GameListPermission;

    .line 19
    .line 20
    return-object p1
.end method

.method public getGameListPermissionBuilder(I)Lcom/wufan/user/service/protobuf/GameListPermission$b;
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
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->getGameListPermissionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    check-cast p1, Lcom/wufan/user/service/protobuf/GameListPermission$b;

    .line 10
    .line 11
    return-object p1
.end method

.method public getGameListPermissionBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/GameListPermission$b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->getGameListPermissionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

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

.method public getGameListPermissionCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

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

.method public getGameListPermissionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/GameListPermission;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

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

.method public getGameListPermissionOrBuilder(I)Lcom/wufan/user/service/protobuf/a;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/wufan/user/service/protobuf/a;

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
    check-cast p1, Lcom/wufan/user/service/protobuf/a;

    .line 19
    .line 20
    return-object p1
.end method

.method public getGameListPermissionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/user/service/protobuf/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

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

.method public getGameTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameTime_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGender()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gender_:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsAnchor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isAnchor_:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsBindQq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isBindQq_:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsBindWb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isBindWb_:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsBindWx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isBindWx_:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsRealName()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isRealName_:I

    .line 2
    .line 3
    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->level_:I

    .line 2
    .line 3
    return v0
.end method

.method public getLiveTotalCharm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->liveTotalCharm_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMemberTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTime_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

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
    check-cast v0, Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 19
    .line 20
    return-object v0
.end method

.method public getMemberTitleBuilder()Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->getMemberTitleFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getMemberTitleOrBuilder()Lcom/wufan/user/service/protobuf/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/user/service/protobuf/b;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->mobile_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->mobile_:Ljava/lang/Object;

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

.method public getMobileBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->mobile_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->mobile_:Ljava/lang/Object;

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

.method public getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/NewMemberInfo;

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
    check-cast v0, Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 19
    .line 20
    return-object v0
.end method

.method public getNewMemberInfoBuilder()Lcom/wufan/user/service/protobuf/NewMemberInfo$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->getNewMemberInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getNewMemberInfoOrBuilder()Lcom/wufan/user/service/protobuf/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/user/service/protobuf/e;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->nickname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->nickname_:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->nickname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->nickname_:Ljava/lang/Object;

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

.method public getPapaMoney()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->papaMoney_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPayTopTip()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->payTopTip_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->payTopTip_:Ljava/lang/Object;

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

.method public getPayTopTipBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->payTopTip_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->payTopTip_:Ljava/lang/Object;

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

.method public getPwdSetUp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->pwdSetUp_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRegisterTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->registerTime_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSVIPLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->sVIPLevel_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->secretKey_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->secretKey_:Ljava/lang/Object;

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

.method public getSecretKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->secretKey_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->secretKey_:Ljava/lang/Object;

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

.method public getSurplusExp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->surplusExp_:I

    .line 2
    .line 3
    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->token_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->token_:Ljava/lang/Object;

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

.method public getTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->token_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->token_:Ljava/lang/Object;

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

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->uid_:I

    .line 2
    .line 3
    return v0
.end method

.method public getVipExpTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->vipExpTime_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVipGame()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->vipGame_:I

    .line 2
    .line 3
    return v0
.end method

.method public getVipLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->vipLevel_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasMemberTitle()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

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

.method public hasNewMemberInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

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
    sget-object v0, Lcom/wufan/user/service/protobuf/c;->f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/wufan/user/service/protobuf/UserInfo;

    .line 4
    .line 5
    const-class v2, Lcom/wufan/user/service/protobuf/UserInfo$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/UserInfo$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/UserInfo$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/UserInfo$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/UserInfo$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/UserInfo$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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

    .line 100
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3900()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/UserInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->mergeFrom(Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/user/service/protobuf/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
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

    .line 104
    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->mergeFrom(Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 105
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    instance-of v0, p1, Lcom/wufan/user/service/protobuf/UserInfo;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/wufan/user/service/protobuf/UserInfo;

    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->mergeFrom(Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setUid(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$500(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->account_:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$600(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->nickname_:Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getPwdSetUp()I

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getPwdSetUp()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setPwdSetUp(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 22
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setPapaMoney(J)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 23
    :cond_5
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getRegisterTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 24
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getRegisterTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setRegisterTime(J)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 25
    :cond_6
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 26
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$1000(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->avatarSrc_:Ljava/lang/Object;

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 28
    :cond_7
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getGender()I

    move-result v0

    if-eqz v0, :cond_8

    .line 29
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getGender()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setGender(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 30
    :cond_8
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getLevel()I

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setLevel(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 32
    :cond_9
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getExp()I

    move-result v0

    if-eqz v0, :cond_a

    .line 33
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getExp()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setExp(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 34
    :cond_a
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 35
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$1400(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->mobile_:Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 37
    :cond_b
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getSurplusExp()I

    move-result v0

    if-eqz v0, :cond_c

    .line 38
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getSurplusExp()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setSurplusExp(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 39
    :cond_c
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAppleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 40
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$1600(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->appleId_:Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 42
    :cond_d
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    move-result v0

    if-eqz v0, :cond_e

    .line 43
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setAccountType(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 44
    :cond_e
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipLevel()I

    move-result v0

    if-eqz v0, :cond_f

    .line 45
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setVipLevel(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 46
    :cond_f
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getSVIPLevel()I

    move-result v0

    if-eqz v0, :cond_10

    .line 47
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getSVIPLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setSVIPLevel(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 48
    :cond_10
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipExpTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    .line 49
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipExpTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setVipExpTime(J)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 50
    :cond_11
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getLiveTotalCharm()I

    move-result v0

    if-eqz v0, :cond_12

    .line 51
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getLiveTotalCharm()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setLiveTotalCharm(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 52
    :cond_12
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsAnchor()I

    move-result v0

    if-eqz v0, :cond_13

    .line 53
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsAnchor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setIsAnchor(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 54
    :cond_13
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->hasMemberTitle()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 55
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->mergeMemberTitle(Lcom/wufan/user/service/protobuf/MemberTitleInfo;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 56
    :cond_14
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsRealName()I

    move-result v0

    if-eqz v0, :cond_15

    .line 57
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsRealName()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setIsRealName(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 58
    :cond_15
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getPayTopTip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 59
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$2500(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->payTopTip_:Ljava/lang/Object;

    .line 60
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 61
    :cond_16
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindWb()I

    move-result v0

    if-eqz v0, :cond_17

    .line 62
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindWb()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setIsBindWb(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 63
    :cond_17
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindWx()I

    move-result v0

    if-eqz v0, :cond_18

    .line 64
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindWx()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setIsBindWx(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 65
    :cond_18
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindQq()I

    move-result v0

    if-eqz v0, :cond_19

    .line 66
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindQq()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setIsBindQq(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 67
    :cond_19
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipGame()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 68
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipGame()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setVipGame(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 69
    :cond_1a
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 70
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3000(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->token_:Ljava/lang/Object;

    .line 71
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 72
    :cond_1b
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 73
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3100(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->secretKey_:Ljava/lang/Object;

    .line 74
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 75
    :cond_1c
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const v1, -0x10000001

    if-nez v0, :cond_1e

    .line 76
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3200(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 77
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 78
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3200(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    .line 79
    iget v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->bitField0_:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->bitField0_:I

    goto :goto_0

    .line 80
    :cond_1d
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->ensureGameListPermissionIsMutable()V

    .line 81
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3200(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 83
    :cond_1e
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3200(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 84
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 85
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 87
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3200(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    .line 88
    iget v4, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->bitField0_:I

    and-int/2addr v1, v4

    iput v1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->bitField0_:I

    .line 89
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3700()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 90
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->getGameListPermissionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_1f
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 91
    :cond_20
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3200(Lcom/wufan/user/service/protobuf/UserInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 92
    :cond_21
    :goto_1
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_22

    .line 93
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setMemberTime(J)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 94
    :cond_22
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getGameTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_23

    .line 95
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getGameTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setGameTime(J)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 96
    :cond_23
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->hasNewMemberInfo()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 97
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->mergeNewMemberInfo(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 98
    :cond_24
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$3800(Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 99
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeMemberTitle(Lcom/wufan/user/service/protobuf/MemberTitleInfo;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->newBuilder(Lcom/wufan/user/service/protobuf/MemberTitleInfo;)Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MemberTitleInfo;)Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;->buildPartial()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

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

.method public mergeNewMemberInfo(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->newBuilder(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->mergeFrom(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/wufan/user/service/protobuf/NewMemberInfo$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->buildPartial()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/UserInfo$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/UserInfo$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/UserInfo$b;

    return-object p1
.end method

.method public removeGameListPermission(I)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->ensureGameListPermissionIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

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

.method public setAccount(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->account_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setAccountBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$4000(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->account_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setAccountType(I)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->accountType_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setAppleId(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->appleId_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setAppleIdBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$4400(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->appleId_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setAvatarSrc(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->avatarSrc_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setAvatarSrcBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$4200(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->avatarSrc_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setExp(I)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->exp_:I

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/UserInfo$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/UserInfo$b;

    return-object p1
.end method

.method public setGameListPermission(ILcom/wufan/user/service/protobuf/GameListPermission$b;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->ensureGameListPermissionIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/GameListPermission$b;->build()Lcom/wufan/user/service/protobuf/GameListPermission;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/GameListPermission$b;->build()Lcom/wufan/user/service/protobuf/GameListPermission;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setGameListPermission(ILcom/wufan/user/service/protobuf/GameListPermission;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermissionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->ensureGameListPermissionIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameListPermission_:Ljava/util/List;

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

.method public setGameTime(J)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gameTime_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setGender(I)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->gender_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setIsAnchor(I)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isAnchor_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setIsBindQq(I)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isBindQq_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setIsBindWb(I)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isBindWb_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setIsBindWx(I)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isBindWx_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setIsRealName(I)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->isRealName_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setLevel(I)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->level_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setLiveTotalCharm(I)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->liveTotalCharm_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setMemberTime(J)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTime_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setMemberTitle(Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;->build()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;->build()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setMemberTitle(Lcom/wufan/user/service/protobuf/MemberTitleInfo;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->memberTitle_:Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setMobile(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->mobile_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setMobileBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$4300(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->mobile_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setNewMemberInfo(Lcom/wufan/user/service/protobuf/NewMemberInfo$b;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->build()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo$b;->build()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setNewMemberInfo(Lcom/wufan/user/service/protobuf/NewMemberInfo;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->newMemberInfo_:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setNickname(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->nickname_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setNicknameBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$4100(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->nickname_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setPapaMoney(J)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->papaMoney_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPayTopTip(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->payTopTip_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setPayTopTipBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$4500(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->payTopTip_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setPwdSetUp(I)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->pwdSetUp_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setRegisterTime(J)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->registerTime_:J

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/UserInfo$b;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/UserInfo$b;

    return-object p1
.end method

.method public setSVIPLevel(I)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->sVIPLevel_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setSecretKey(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->secretKey_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setSecretKeyBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$4700(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->secretKey_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setSurplusExp(I)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->surplusExp_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->token_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->access$4600(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->token_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setUid(I)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->uid_:I

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/UserInfo$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/UserInfo$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/UserInfo$b;

    return-object p1
.end method

.method public setVipExpTime(J)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->vipExpTime_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setVipGame(I)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->vipGame_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setVipLevel(I)Lcom/wufan/user/service/protobuf/UserInfo$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/UserInfo$b;->vipLevel_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
