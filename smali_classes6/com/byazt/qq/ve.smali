.class public Lcom/byazt/qq/ve;
.super Lcom/byazt/qq/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x58,
        0x36
    }
.end annotation


# instance fields
.field public nu:Lcom/byazt/sgn/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/qq/c;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/byazt/qq/ve;->nu:Lcom/byazt/sgn/a;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/qq/c;->c:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const-string v1, "\u518d\u770b"

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/byazt/qq/c;->n:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/byazt/qq/c;->c:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "s\uff0c\u5e76\u70b9\u51fb\u4e00\u4e0b\u5e7f\u544a\u53ef\u9886\u53d6\u5956\u52b1"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_1
    iget-boolean v0, p0, Lcom/byazt/qq/c;->n:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const-string v0, "\u5fd8\u8bb0\u70b9\u51fb\u5e7f\u544a\u9886\u53d6\u5956\u52b1\u5566\uff5e"

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/byazt/qq/c;->c:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "s\u53ef\u9886\u53d6\u5956\u52b1"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

.method public tt(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/qq/c;->tt(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/byazt/qq/tt$c;->ve()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/byazt/sgn/a;

    iget-object v1, p0, Lcom/byazt/qq/tt;->x:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/byazt/sgn/a;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object v0, p0, Lcom/byazt/qq/ve;->nu:Lcom/byazt/sgn/a;

    const-string v1, "tt_retain_gift"

    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/sgn/a;->n(Ljava/lang/String;)Lcom/byazt/sgn/a;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/byazt/qq/tt;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/sgn/a;->c(Ljava/lang/String;)Lcom/byazt/sgn/a;

    move-result-object v1

    const-string v2, "\u7ee7\u7eed\u89c2\u770b"

    .line 7
    invoke-virtual {v1, v2}, Lcom/byazt/sgn/a;->ve(Ljava/lang/String;)Lcom/byazt/sgn/a;

    move-result-object v1

    const-string v2, "\u575a\u6301\u9000\u51fa"

    .line 8
    invoke-virtual {v1, v2}, Lcom/byazt/sgn/a;->uj(Ljava/lang/String;)Lcom/byazt/sgn/a;

    .line 9
    iget-object v1, p0, Lcom/byazt/qq/ve;->nu:Lcom/byazt/sgn/a;

    iget-object v2, p0, Lcom/byazt/qq/tt;->x:Landroid/app/Activity;

    invoke-static {v2}, Lcom/byazt/vfu/a;->i(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/sgn/a;->c(Landroid/view/View;)Lcom/byazt/sgn/a;

    .line 10
    iget-object v1, p0, Lcom/byazt/qq/ve;->nu:Lcom/byazt/sgn/a;

    new-instance v2, Lcom/byazt/qq/ve$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/byazt/qq/ve$1;-><init>(Lcom/byazt/qq/ve;Lcom/byazt/sgn/a;Lcom/byazt/qq/da;)V

    invoke-virtual {v1, v2}, Lcom/byazt/sgn/a;->c(Lcom/byazt/sgn/a$c;)Lcom/byazt/sgn/a;

    .line 11
    iget-object p1, p0, Lcom/byazt/qq/ve;->nu:Lcom/byazt/sgn/a;

    invoke-virtual {p1}, Lcom/byazt/sgn/a;->show()V

    .line 12
    new-instance p1, Lcom/byazt/qq/tt$c;

    const-string v0, ""

    iget-object v1, p0, Lcom/byazt/qq/ve;->nu:Lcom/byazt/sgn/a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/byazt/qq/tt$c;-><init>(ZILjava/lang/String;Landroid/app/Dialog;)V

    return-object p1
.end method

.method public tt()Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/qq/ve;->nu:Lcom/byazt/sgn/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qq/ve;->nu:Lcom/byazt/sgn/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
