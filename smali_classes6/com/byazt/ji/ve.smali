.class public Lcom/byazt/ji/ve;
.super Lcom/byazt/ji/tt;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vt/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xde,
        0x36
    }
.end annotation


# instance fields
.field public sl:Lcom/byazt/vt/ve;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/ji/tt;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 4

    .line 5
    iget-object p1, p0, Lcom/byazt/ji/tt;->c:Lcom/byazt/pm/sl;

    iget-object v0, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    iget-object v1, p0, Lcom/byazt/ji/tt;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    invoke-virtual {v2}, Lcom/byazt/pm/a;->tt()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/byazt/pm/sl;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Ljava/util/List;Lcom/byazt/pm/a;)V

    return-void
.end method

.method public varargs c([Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->bx()Lcom/byazt/vt/c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/byazt/ji/tt;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/byazt/vt/c;->c(Ljava/lang/String;)Lcom/byazt/vt/ve;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ji/ve;->sl:Lcom/byazt/vt/ve;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lcom/byazt/vt/ve;->c(Lcom/byazt/vt/uj;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/ji/tt;->a:Ljava/lang/String;

    new-instance v1, Lcom/byazt/vt/tt;

    invoke-direct {v1}, Lcom/byazt/vt/tt;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/byazt/vt/c;->c(Ljava/lang/String;Lcom/byazt/vt/ve;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
