.class public Lcom/join/mgps/dto/AccountBean$MemberInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/AccountBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberInfo"
.end annotation


# instance fields
.field private battleTitle:Ljava/lang/String;

.field private battleTitleColor:Ljava/lang/String;

.field private isVip:Z

.field private level:I

.field private monthExpireTime:Ljava/lang/String;

.field private seasonExpireTime:Ljava/lang/String;

.field private showLabelContent:Ljava/lang/String;

.field private totalTime:Ljava/lang/String;

.field private vipTime:Ljava/lang/String;

.field private vipType:I

.field private yearExpireTime:Ljava/lang/String;


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
.method public getBattleTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->battleTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBattleTitleColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->battleTitleColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->level:I

    .line 2
    .line 3
    return v0
.end method

.method public getMonthExpireTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->monthExpireTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSeasonExpireTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->seasonExpireTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowLabelContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->showLabelContent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTotalTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->totalTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVipTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->vipTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVipType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->vipType:I

    .line 2
    .line 3
    return v0
.end method

.method public getYearExpireTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->yearExpireTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isVip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->isVip:Z

    .line 2
    .line 3
    return v0
.end method

.method public setBattleTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battleTitle"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->battleTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBattleTitleColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battleTitleColor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->battleTitleColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->level:I

    .line 2
    .line 3
    return-void
.end method

.method public setMonthExpireTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monthExpireTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->monthExpireTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSeasonExpireTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seasonExpireTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->seasonExpireTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShowLabelContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showLabelContent"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->showLabelContent:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTotalTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->totalTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVip(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vip"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->isVip:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVipTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->vipTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVipType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->vipType:I

    .line 2
    .line 3
    return-void
.end method

.method public setYearExpireTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "yearExpireTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean$MemberInfo;->yearExpireTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
