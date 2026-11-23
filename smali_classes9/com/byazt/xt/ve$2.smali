.class public Lcom/byazt/xt/ve$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28f,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xt/ve;->tt(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xt/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/xt/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xt/ve$2;->c:Lcom/byazt/xt/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/xt/ve$2;->c:Lcom/byazt/xt/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/xt/ve;->c(Lcom/byazt/xt/ve;)Lcom/byazt/dv/tt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/xt/ve$2;->c:Lcom/byazt/xt/ve;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/xt/ve;->c(Lcom/byazt/xt/ve;)Lcom/byazt/dv/tt;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/byazt/xt/ve$2;->c:Lcom/byazt/xt/ve;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/byazt/xt/ve;->c(Lcom/byazt/xt/ve;)Lcom/byazt/dv/tt;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->tt()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/byazt/xt/ve$2;->c:Lcom/byazt/xt/ve;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/byazt/xt/ve;->c(Lcom/byazt/xt/ve;)Lcom/byazt/dv/tt;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v0, v1, v2}, Lcom/byazt/xx/ve;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
