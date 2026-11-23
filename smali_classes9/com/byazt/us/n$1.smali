.class public Lcom/byazt/us/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xfb,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/us/n;->c(Lcom/byazt/us/uj;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Lcom/byazt/us/uj;

.field public final synthetic ve:Lcom/byazt/us/n;


# direct methods
.method public constructor <init>(Lcom/byazt/us/n;JLcom/byazt/us/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/us/n$1;->ve:Lcom/byazt/us/n;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/us/n$1;->c:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/us/n$1;->tt:Lcom/byazt/us/uj;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/byazt/g/c;->c()Lcom/byazt/g/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/g/c;->ve()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/byazt/us/n$1;->ve:Lcom/byazt/us/n;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/byazt/us/n;->c(Lcom/byazt/us/n;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    sub-long/2addr v0, v2

    .line 22
    iget-wide v2, p0, Lcom/byazt/us/n$1;->c:J

    .line 23
    .line 24
    cmp-long v4, v0, v2

    .line 25
    .line 26
    if-gtz v4, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/byazt/us/n$1;->tt:Lcom/byazt/us/uj;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-interface {v0, v1}, Lcom/byazt/us/uj;->c(Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/us/n$1;->tt:Lcom/byazt/us/uj;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-interface {v0, v1}, Lcom/byazt/us/uj;->c(Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
