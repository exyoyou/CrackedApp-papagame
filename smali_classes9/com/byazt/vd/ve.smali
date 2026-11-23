.class public Lcom/byazt/vd/ve;
.super Lcom/byazt/vd/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x62e,
        0x36
    }
.end annotation


# instance fields
.field public i:Lcom/byazt/sz/rh;


# direct methods
.method public constructor <init>(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/vd/c;-><init>(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/vd/c;->ve:Lcom/byazt/xj/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->qy()Lcom/byazt/sz/rh;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/byazt/vd/ve;->i:Lcom/byazt/sz/rh;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/vd/c;->ve:Lcom/byazt/xj/ve;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/byazt/vd/c;->sp:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/byazt/vd/c;->tt:Lcom/byazt/pm/a$c;

    .line 16
    .line 17
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/sz/rh;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
