.class public Lcom/join/mgps/dto/InformationSendBack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private is_reward:Lcom/join/mgps/dto/RewardBean;

.field private val:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getIs_reward()Lcom/join/mgps/dto/RewardBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationSendBack;->is_reward:Lcom/join/mgps/dto/RewardBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public isVal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/InformationSendBack;->val:Z

    .line 2
    .line 3
    return v0
.end method

.method public setIs_reward(Lcom/join/mgps/dto/RewardBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_reward"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationSendBack;->is_reward:Lcom/join/mgps/dto/RewardBean;

    .line 2
    .line 3
    return-void
.end method

.method public setVal(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/InformationSendBack;->val:Z

    .line 2
    .line 3
    return-void
.end method
