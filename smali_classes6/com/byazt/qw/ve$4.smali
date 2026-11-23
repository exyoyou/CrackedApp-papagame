.class public Lcom/byazt/qw/ve$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2d6,
        0x187
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qw/ve;->onAppBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qw/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/qw/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qw/ve$4;->c:Lcom/byazt/qw/ve;

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
    .locals 5

    .line 1
    invoke-static {}, Lcom/byazt/qw/c;->a()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget v2, Lcom/byazt/qw/c;->ve:I

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    invoke-static {v2, v0, v1, v3, v4}, Lcom/byazt/qw/c;->c(IJJ)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/qw/ve$4;->c:Lcom/byazt/qw/ve;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/byazt/qw/ve;->c(Lcom/byazt/qw/ve;)Lcom/byazt/qw/uj;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/qw/ve$4;->c:Lcom/byazt/qw/ve;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/byazt/qw/ve;->c(Lcom/byazt/qw/ve;)Lcom/byazt/qw/uj;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/byazt/qw/uj;->tt()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/byazt/qw/ve$4;->c:Lcom/byazt/qw/ve;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/byazt/qw/ve;->tt(Lcom/byazt/qw/ve;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/byazt/qw/uj;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/byazt/qw/uj;->tt()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/byazt/qw/ve$4;->c:Lcom/byazt/qw/ve;

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    invoke-static {v0, v1, v2}, Lcom/byazt/qw/ve;->c(Lcom/byazt/qw/ve;J)J

    .line 66
    .line 67
    .line 68
    return-void
.end method
