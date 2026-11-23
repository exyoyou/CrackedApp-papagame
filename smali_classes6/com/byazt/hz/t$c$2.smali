.class public Lcom/byazt/hz/t$c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x68c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hz/t$c;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hz/t$c;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/t$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/t$c$2;->c:Lcom/byazt/hz/t$c;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/t$c$2;->c:Lcom/byazt/hz/t$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/hz/t$c;->c(Lcom/byazt/hz/t$c;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/hz/t$c$2;->c:Lcom/byazt/hz/t$c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/hz/t$c;->tt(Lcom/byazt/hz/t$c;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/byazt/hz/t$c$2$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/byazt/hz/t$c$2$1;-><init>(Lcom/byazt/hz/t$c$2;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/byazt/hz/t$c$2;->c:Lcom/byazt/hz/t$c;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/byazt/hz/t$c;->c:Lcom/byazt/hz/t;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/byazt/hz/t;->c(Lcom/byazt/bo/c;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/hz/t$c$2;->c:Lcom/byazt/hz/t$c;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/hz/t$c;->sp()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/hz/t$c$2;->c:Lcom/byazt/hz/t$c;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/byazt/hz/t$c;->sp()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
