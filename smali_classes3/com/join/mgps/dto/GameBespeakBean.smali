.class public Lcom/join/mgps/dto/GameBespeakBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bespeak:Z

.field private hint:Ljava/lang/String;

.field private pdInfo:Lcom/join/mgps/dto/DomainInfoBean;


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
.method public getHint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameBespeakBean;->hint:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPdInfo()Lcom/join/mgps/dto/DomainInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameBespeakBean;->pdInfo:Lcom/join/mgps/dto/DomainInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public isBespeak()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameBespeakBean;->bespeak:Z

    .line 2
    .line 3
    return v0
.end method

.method public setBespeak(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bespeak"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameBespeakBean;->bespeak:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hint"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameBespeakBean;->hint:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPdInfo(Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pdInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameBespeakBean;->pdInfo:Lcom/join/mgps/dto/DomainInfoBean;

    .line 2
    .line 3
    return-void
.end method
