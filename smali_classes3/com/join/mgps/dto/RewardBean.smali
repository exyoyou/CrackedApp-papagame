.class public Lcom/join/mgps/dto/RewardBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private exp:Ljava/lang/String;

.field private money:Ljava/lang/String;

.field private on_off:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/RewardBean;->money:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dto/RewardBean;->exp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "money",
            "exp",
            "on_off"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/join/mgps/dto/RewardBean;->money:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/join/mgps/dto/RewardBean;->exp:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/join/mgps/dto/RewardBean;->on_off:I

    return-void
.end method


# virtual methods
.method public getExp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RewardBean;->exp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMoney()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RewardBean;->money:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOn_off()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RewardBean;->on_off:I

    .line 2
    .line 3
    return v0
.end method

.method public setExp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exp"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RewardBean;->exp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMoney(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "money"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RewardBean;->money:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOn_off(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on_off"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RewardBean;->on_off:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "RewardBean{money="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/RewardBean;->money:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", exp=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/dto/RewardBean;->exp:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x27

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", on_off="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/join/mgps/dto/RewardBean;->on_off:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x7d

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
