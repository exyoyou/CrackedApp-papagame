.class public Lcom/byazt/twu/n;
.super Lcom/byazt/twu/a;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3ca,
        0x2e
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/rz/c;Lcom/byazt/vb/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/twu/a;-><init>(Landroid/content/Context;Lcom/byazt/rz/c;Lcom/byazt/vb/n;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/twu/a;->tt:Lcom/byazt/vb/n;

    invoke-interface {v0}, Lcom/byazt/vb/n;->tt()Lcom/byazt/vb/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/byazt/vb/a;->ve()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/byazt/vb/tt;)Z
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/byazt/ml/c;->uj(Lcom/byazt/vb/tt;)Z

    move-result p1

    return p1
.end method

.method public tt()B
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public ve()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
