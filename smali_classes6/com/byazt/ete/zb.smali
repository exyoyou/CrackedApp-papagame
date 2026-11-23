.class public Lcom/byazt/ete/zb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0xb8
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ete/zb$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public n:Z

.field public tt:I

.field public uj:D

.field public ve:I


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

.method public static final c(IILjava/lang/String;D)Lcom/byazt/nc/t;
    .locals 7

    .line 8
    new-instance v6, Lcom/byazt/ete/zb$c;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/byazt/ete/zb$c;-><init>(IILjava/lang/String;D)V

    return-object v6
.end method

.method public static c(Lcom/byazt/ete/zb;)Lcom/byazt/nc/t;
    .locals 7

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/byazt/ete/zb;->n()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/byazt/ete/zb$c;

    invoke-virtual {p0}, Lcom/byazt/ete/zb;->ve()I

    move-result v2

    invoke-virtual {p0}, Lcom/byazt/ete/zb;->tt()I

    move-result v3

    invoke-virtual {p0}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/byazt/ete/zb;->uj()D

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/byazt/ete/zb$c;-><init>(IILjava/lang/String;D)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ete/zb;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/zb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(D)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/ete/zb;->uj:D

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/ete/zb;->tt:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ete/zb;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/ete/zb;->n:Z

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/zb;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/byazt/ete/zb;->tt:I

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/byazt/ete/zb;->ve:I

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public sp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/zb;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/zb;->tt:I

    return v0
.end method

.method public tt(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/zb;->ve:I

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/ete/zb;->a:Ljava/lang/String;

    return-void
.end method

.method public uj()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ete/zb;->uj:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/zb;->ve:I

    .line 2
    .line 3
    return v0
.end method
