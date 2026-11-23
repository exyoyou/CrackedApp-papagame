.class public Lcom/byazt/ir/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x271,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ir/c;->start(ZJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Z

.field public final synthetic ve:Lcom/byazt/ir/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ir/c;JZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ir/c$3;->ve:Lcom/byazt/ir/c;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/ir/c$3;->c:J

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/byazt/ir/c$3;->tt:Z

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ir/c$3;->ve:Lcom/byazt/ir/c;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/byazt/ir/c$3;->c:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/byazt/ir/c;->c(Lcom/byazt/ir/c;J)J

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/ir/c$3;->ve:Lcom/byazt/ir/c;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-static {v0, v1, v2}, Lcom/byazt/ir/c;->ve(Lcom/byazt/ir/c;J)J

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/ir/c$3;->ve:Lcom/byazt/ir/c;

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/byazt/ir/c$3;->tt:Z

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/byazt/ir/c;->setQuietPlay(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/ir/c$3;->ve:Lcom/byazt/ir/c;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/ir/c;->sp(Lcom/byazt/ir/c;)Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/ir/c$3;->ve:Lcom/byazt/ir/c;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/byazt/ir/c;->sp(Lcom/byazt/ir/c;)Landroid/os/Handler;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/16 v1, 0x64

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method
