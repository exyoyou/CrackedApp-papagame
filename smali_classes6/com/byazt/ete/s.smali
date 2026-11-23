.class public Lcom/byazt/ete/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x3be
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ete/s$tt;,
        Lcom/byazt/ete/s$c;
    }
.end annotation


# instance fields
.field public a:I

.field public c:I

.field public da:Ljava/lang/String;

.field public gr:I

.field public gt:I

.field public gu:I

.field public i:Ljava/lang/String;

.field public m:F

.field public my:I

.field public n:I

.field public nu:I

.field public qy:I

.field public rh:I

.field public rl:F

.field public sl:Lcom/byazt/ete/s$tt;

.field public sp:I

.field public t:Lcom/byazt/ete/s$tt;

.field public tt:Ljava/lang/String;

.field public u:I

.field public uj:I

.field public ve:Z

.field public x:I

.field public yp:Lcom/byazt/ete/s$c;

.field public z:I

.field public zm:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/ete/s;->ve:Z

    .line 6
    .line 7
    const-string v1, "#008DEA"

    .line 8
    .line 9
    iput-object v1, p0, Lcom/byazt/ete/s;->i:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "\u70b9\u51fb\u67e5\u770b"

    .line 12
    .line 13
    iput-object v1, p0, Lcom/byazt/ete/s;->da:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/byazt/ete/s;->m:F

    .line 17
    .line 18
    iput v0, p0, Lcom/byazt/ete/s;->nu:I

    .line 19
    .line 20
    iput v0, p0, Lcom/byazt/ete/s;->rh:I

    .line 21
    .line 22
    const/16 v2, 0x37

    .line 23
    .line 24
    iput v2, p0, Lcom/byazt/ete/s;->my:I

    .line 25
    .line 26
    iput v0, p0, Lcom/byazt/ete/s;->gt:I

    .line 27
    .line 28
    iput v1, p0, Lcom/byazt/ete/s;->rl:F

    .line 29
    .line 30
    const/16 v1, 0x64

    .line 31
    .line 32
    iput v1, p0, Lcom/byazt/ete/s;->qy:I

    .line 33
    .line 34
    iput v0, p0, Lcom/byazt/ete/s;->gu:I

    .line 35
    .line 36
    iput v0, p0, Lcom/byazt/ete/s;->gr:I

    .line 37
    .line 38
    iput v0, p0, Lcom/byazt/ete/s;->zm:I

    .line 39
    .line 40
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ete/s;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ete/s;->p()I

    move-result p0

    return p0
.end method

.method private p()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    int-to-float v0, v0

    .line 14
    invoke-static {v1, v0}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public static synthetic tt(Lcom/byazt/ete/s;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ete/s;->yv()I

    move-result p0

    return p0
.end method

.method private yv()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/aas/pf;->n(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    int-to-float v0, v0

    .line 14
    invoke-static {v1, v0}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/s;->sp:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/s;->z:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/ete/s;->c:I

    return v0
.end method

.method public c(F)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/byazt/ete/s;->m:F

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/ete/s;->c:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/byazt/ete/s;->ve:Z

    .line 6
    iget p1, p0, Lcom/byazt/ete/s;->uj:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    const-string v1, "\u524d\u5f80\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const-string p1, "\u70b9\u51fb\u8df3\u8f6c\u81f3\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    .line 7
    iput-object p1, p0, Lcom/byazt/ete/s;->tt:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    iput-object v1, p0, Lcom/byazt/ete/s;->tt:Ljava/lang/String;

    return-void

    .line 9
    :cond_1
    iput-object v1, p0, Lcom/byazt/ete/s;->tt:Ljava/lang/String;

    return-void

    :cond_2
    const-string p1, "\u8df3\u8f6c\u81f3\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    .line 10
    iput-object p1, p0, Lcom/byazt/ete/s;->tt:Ljava/lang/String;

    return-void

    .line 11
    :cond_3
    iput-object p1, p0, Lcom/byazt/ete/s;->tt:Ljava/lang/String;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 2

    .line 12
    new-instance v0, Lcom/byazt/ete/s$tt;

    const/16 v1, 0xe

    invoke-direct {v0, p0, p1, v1}, Lcom/byazt/ete/s$tt;-><init>(Lcom/byazt/ete/s;Lorg/json/JSONObject;I)V

    iput-object v0, p0, Lcom/byazt/ete/s;->sl:Lcom/byazt/ete/s$tt;

    return-void
.end method

.method public c(Lorg/json/JSONObject;I)V
    .locals 1

    .line 13
    new-instance v0, Lcom/byazt/ete/s$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/ete/s$c;-><init>(Lcom/byazt/ete/s;Lorg/json/JSONObject;I)V

    iput-object v0, p0, Lcom/byazt/ete/s;->yp:Lcom/byazt/ete/s$c;

    return-void
.end method

.method public da()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/s;->i:Ljava/lang/String;

    return-object v0
.end method

.method public da(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/s;->rh:I

    return-void
.end method

.method public gr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/s;->zm:I

    .line 2
    .line 3
    return v0
.end method

.method public gt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/s;->gt:I

    .line 2
    .line 3
    return v0
.end method

.method public gu()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/s;->gr:I

    .line 2
    .line 3
    return v0
.end method

.method public i()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/byazt/ete/s;->uj:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/omf/x;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput v2, p0, Lcom/byazt/ete/s;->uj:I

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/byazt/ete/s;->uj:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/omf/x;->tt(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iput v2, p0, Lcom/byazt/ete/s;->uj:I

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lcom/byazt/ete/s;->uj:I

    return v0
.end method

.method public i(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/byazt/ete/s;->nu:I

    return-void
.end method

.method public m()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/s;->m:F

    return v0
.end method

.method public m(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/s;->zm:I

    return-void
.end method

.method public my()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/s;->my:I

    .line 2
    .line 3
    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/s;->a:I

    return v0
.end method

.method public n(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/s;->x:I

    return-void
.end method

.method public nu()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/s;->nu:I

    .line 2
    .line 3
    return v0
.end method

.method public qy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/s;->gu:I

    .line 2
    .line 3
    return v0
.end method

.method public rh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/s;->rh:I

    .line 2
    .line 3
    return v0
.end method

.method public rl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/s;->qy:I

    .line 2
    .line 3
    return v0
.end method

.method public sl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/s;->da:Ljava/lang/String;

    return-object v0
.end method

.method public sl(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/s;->my:I

    return-void
.end method

.method public sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/s;->x:I

    return v0
.end method

.method public sp(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/s;->uj:I

    return-void
.end method

.method public t()Lcom/byazt/ete/s$tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/s;->sl:Lcom/byazt/ete/s$tt;

    return-object v0
.end method

.method public t(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/s;->gt:I

    return-void
.end method

.method public tt()Ljava/lang/String;
    .locals 3

    .line 2
    iget v0, p0, Lcom/byazt/ete/s;->uj:I

    const/4 v1, 0x4

    const-string v2, "\u70b9\u51fb\u8df3\u8f6c\u81f3\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/omf/x;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object v2, p0, Lcom/byazt/ete/s;->tt:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/byazt/ete/s;->uj:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/omf/x;->tt(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iput-object v2, p0, Lcom/byazt/ete/s;->tt:Ljava/lang/String;

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/ete/s;->tt:Ljava/lang/String;

    return-object v0
.end method

.method public tt(F)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/byazt/ete/s;->rl:F

    return-void
.end method

.method public tt(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/byazt/ete/s;->n:I

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 8
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 9
    iput-object p1, p0, Lcom/byazt/ete/s;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p1, "#008DEA"

    .line 10
    iput-object p1, p0, Lcom/byazt/ete/s;->i:Ljava/lang/String;

    return-void
.end method

.method public tt(Lorg/json/JSONObject;)V
    .locals 2

    .line 11
    new-instance v0, Lcom/byazt/ete/s$tt;

    const/16 v1, 0x14

    invoke-direct {v0, p0, p1, v1}, Lcom/byazt/ete/s$tt;-><init>(Lcom/byazt/ete/s;Lorg/json/JSONObject;I)V

    iput-object v0, p0, Lcom/byazt/ete/s;->t:Lcom/byazt/ete/s$tt;

    return-void
.end method

.method public u()Lcom/byazt/ete/s$tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/s;->t:Lcom/byazt/ete/s$tt;

    return-object v0
.end method

.method public u(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/s;->qy:I

    return-void
.end method

.method public uj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/s;->n:I

    return v0
.end method

.method public uj(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/s;->sp:I

    return-void
.end method

.method public ve(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/s;->a:I

    return-void
.end method

.method public ve(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget p1, p0, Lcom/byazt/ete/s;->uj:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const-string p1, "\u626d\u52a8\u624b\u673a"

    .line 5
    iput-object p1, p0, Lcom/byazt/ete/s;->da:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const-string p1, "\u5411\u4e0a\u6ed1\u52a8"

    .line 6
    iput-object p1, p0, Lcom/byazt/ete/s;->da:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-string p1, "\u6447\u4e00\u6447"

    .line 7
    iput-object p1, p0, Lcom/byazt/ete/s;->da:Ljava/lang/String;

    return-void

    .line 8
    :cond_2
    iput-object p1, p0, Lcom/byazt/ete/s;->da:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ete/s;->ve:Z

    return v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/s;->z:I

    return v0
.end method

.method public x(I)V
    .locals 1

    if-lez p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/byazt/ete/s;->yv()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/byazt/ete/s;->u:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x5

    .line 4
    iput p1, p0, Lcom/byazt/ete/s;->u:I

    return-void
.end method

.method public yp()Lcom/byazt/ete/s$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/s;->yp:Lcom/byazt/ete/s$c;

    return-object v0
.end method

.method public yp(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/s;->gu:I

    return-void
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/s;->u:I

    return v0
.end method

.method public z(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/s;->gr:I

    return-void
.end method

.method public zm()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/s;->rl:F

    .line 2
    .line 3
    return v0
.end method
