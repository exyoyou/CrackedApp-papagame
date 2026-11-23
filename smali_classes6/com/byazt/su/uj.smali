.class public Lcom/byazt/su/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/su/DownloadEventConfig;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5ce,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/su/uj$c;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public da:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public nu:Ljava/lang/String;

.field public sl:Ljava/lang/String;

.field public sp:Ljava/lang/String;

.field public t:Ljava/lang/Object;

.field public tt:Z

.field public u:Z

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public yp:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/byazt/su/uj$c;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/byazt/su/uj$c;->c(Lcom/byazt/su/uj$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/su/uj;->c:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/byazt/su/uj$c;->tt(Lcom/byazt/su/uj$c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/su/uj;->tt:Z

    .line 6
    invoke-static {p1}, Lcom/byazt/su/uj$c;->ve(Lcom/byazt/su/uj$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/su/uj;->ve:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/byazt/su/uj$c;->uj(Lcom/byazt/su/uj$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/su/uj;->uj:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/byazt/su/uj$c;->n(Lcom/byazt/su/uj$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/su/uj;->n:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/byazt/su/uj$c;->a(Lcom/byazt/su/uj$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/su/uj;->a:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/byazt/su/uj$c;->sp(Lcom/byazt/su/uj$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/su/uj;->sp:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/byazt/su/uj$c;->x(Lcom/byazt/su/uj$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/su/uj;->x:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/byazt/su/uj$c;->i(Lcom/byazt/su/uj$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/su/uj;->i:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/byazt/su/uj$c;->da(Lcom/byazt/su/uj$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/su/uj;->da:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/byazt/su/uj$c;->sl(Lcom/byazt/su/uj$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/su/uj;->sl:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/byazt/su/uj$c;->t(Lcom/byazt/su/uj$c;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/su/uj;->t:Ljava/lang/Object;

    .line 16
    invoke-static {p1}, Lcom/byazt/su/uj$c;->u(Lcom/byazt/su/uj$c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/su/uj;->u:Z

    .line 17
    invoke-static {p1}, Lcom/byazt/su/uj$c;->yp(Lcom/byazt/su/uj$c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/su/uj;->yp:Z

    .line 18
    invoke-static {p1}, Lcom/byazt/su/uj$c;->z(Lcom/byazt/su/uj$c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/su/uj;->z:Z

    .line 19
    invoke-static {p1}, Lcom/byazt/su/uj$c;->m(Lcom/byazt/su/uj$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/su/uj;->m:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/byazt/su/uj$c;->nu(Lcom/byazt/su/uj$c;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/su/uj;->nu:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/su/uj$c;Lcom/byazt/su/uj$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/su/uj;-><init>(Lcom/byazt/su/uj$c;)V

    return-void
.end method


# virtual methods
.method public getClickButtonTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/su/uj;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickContinueLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/su/uj;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickInstallLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/su/uj;->sp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickItemTag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClickLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/su/uj;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickPauseLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/su/uj;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickStartLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/su/uj;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadScene()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExtraEventObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/su/uj;->t:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtraJson()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParamsJson()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRefer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/su/uj;->nu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStorageDenyLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/su/uj;->da:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isEnableClickEvent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/su/uj;->tt:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableV3Event()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/su/uj;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public setDownloadScene(I)V
    .locals 0

    return-void
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
