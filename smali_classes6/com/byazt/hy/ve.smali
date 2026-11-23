.class public Lcom/byazt/hy/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/gr;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x25c,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/yj/gr<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Z

.field public tt:Lcom/byazt/qal/tt;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/byazt/hy/ve;->c:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/byazt/hy/ve;->tt:Lcom/byazt/qal/tt;

    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/byazt/hy/ve;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/hy/ve;->tt:Lcom/byazt/qal/tt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/qal/tt;->c(I)Lcom/byazt/qal/tt;

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/hy/ve;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/hy/ve;->tt:Lcom/byazt/qal/tt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/qal/tt;->ve(Ljava/lang/String;)Lcom/byazt/qal/tt;

    :cond_1
    :goto_0
    return-void
.end method

.method public onFailed(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/byazt/hy/ve;->c:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/byazt/hy/ve;->tt:Lcom/byazt/qal/tt;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 p2, 0xc9

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/byazt/qal/tt;->tt(I)Lcom/byazt/qal/tt;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p2}, Lcom/byazt/omf/sp;->c(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Lcom/byazt/qal/tt;->sp(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/byazt/hy/ve;->tt:Lcom/byazt/qal/tt;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/qal/tt;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/byazt/yj/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/yj/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/byazt/hy/ve;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/hy/ve;->tt:Lcom/byazt/qal/tt;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/byazt/yj/m;->getResult()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    :cond_1
    iget-object p1, p0, Lcom/byazt/hy/ve;->tt:Lcom/byazt/qal/tt;

    .line 19
    .line 20
    const/16 v0, 0xca

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/byazt/qal/tt;->tt(I)Lcom/byazt/qal/tt;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {v0}, Lcom/byazt/omf/sp;->c(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lcom/byazt/qal/tt;->sp(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/byazt/hy/ve;->tt:Lcom/byazt/qal/tt;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/qal/tt;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/hy/ve;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/hy/ve;->tt:Lcom/byazt/qal/tt;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/qal/tt;->a(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public uj(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/hy/ve;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/hy/ve;->tt:Lcom/byazt/qal/tt;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/qal/tt;->x(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public ve(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/hy/ve;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/hy/ve;->tt:Lcom/byazt/qal/tt;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/qal/tt;->uj(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method
