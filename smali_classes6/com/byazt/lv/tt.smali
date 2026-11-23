.class public abstract Lcom/byazt/lv/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sz/rh;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x87b,
        0xd
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/sz/rh;

.field public n:Z

.field public tt:Ljava/lang/String;

.field public uj:Lorg/json/JSONObject;

.field public ve:Z


# direct methods
.method public constructor <init>(Lcom/byazt/sz/rh;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/lv/tt;->ve:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/byazt/lv/tt;->n:Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/byazt/lv/tt;->c:Lcom/byazt/sz/rh;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/byazt/lv/tt;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/lv/tt;->ve(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/lv/tt;->tt(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V

    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/lv/tt;->c:Lcom/byazt/sz/rh;

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/sz/rh;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/lv/tt;->tt:Ljava/lang/String;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lv/tt;->uj:Lorg/json/JSONObject;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/lv/tt;->ve:Z

    return-void
.end method

.method public c()Z
    .locals 2

    .line 4
    iget-boolean v0, p0, Lcom/byazt/lv/tt;->ve:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/lv/tt;->tt:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/lv/tt;->uj:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public tt(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/lv/tt;->c:Lcom/byazt/sz/rh;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/sz/rh;->c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/lv/tt;->n:Z

    return-void
.end method

.method public abstract ve(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
.end method
