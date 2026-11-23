.class public Lcom/byazt/tl/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d3,
        0xd
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/pr/ve;

.field public static tt:Lcom/byazt/pr/uj;


# direct methods
.method public static c()V
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/tl/tt;->tt:Lcom/byazt/pr/uj;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/tl/tt$1;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/tl/tt$1;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/byazt/tl/tt;->tt:Lcom/byazt/pr/uj;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/byazt/tl/tt;->c:Lcom/byazt/pr/ve;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lcom/byazt/tl/tt$2;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/byazt/tl/tt$2;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/byazt/tl/tt;->c:Lcom/byazt/pr/ve;

    .line 22
    .line 23
    :cond_1
    sget-object v0, Lcom/byazt/tl/tt;->c:Lcom/byazt/pr/ve;

    .line 24
    .line 25
    sget-object v1, Lcom/byazt/tl/tt;->tt:Lcom/byazt/pr/uj;

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/byazt/pr/c;->c(Lcom/byazt/pr/ve;Lcom/byazt/pr/uj;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
