.class public Lcom/byazt/hz/t$5$1;
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
        0x8c5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hz/t$5;->c(Lcom/byazt/bo/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/bo/c;

.field public final synthetic tt:Lcom/byazt/hz/t$5;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/t$5;Lcom/byazt/bo/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/t$5$1;->tt:Lcom/byazt/hz/t$5;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/hz/t$5$1;->c:Lcom/byazt/bo/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/t$5$1;->tt:Lcom/byazt/hz/t$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/hz/t$5;->c:Lcom/byazt/hz/t;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/hz/t;->c(Lcom/byazt/hz/t;)Lcom/byazt/uhf/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/hz/t$5$1;->tt:Lcom/byazt/hz/t$5;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/hz/t$5;->c:Lcom/byazt/hz/t;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/hz/t;->c(Lcom/byazt/hz/t;)Lcom/byazt/uhf/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/byazt/hz/t$5$1;->c:Lcom/byazt/bo/c;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/byazt/uhf/c;->c(Lcom/byazt/bo/c;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/hz/t$5$1;->tt:Lcom/byazt/hz/t$5;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/byazt/hz/t$5;->c:Lcom/byazt/hz/t;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/byazt/hz/t$5$1;->c:Lcom/byazt/bo/c;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {v0, v1, v2}, Lcom/byazt/hz/t;->c(Lcom/byazt/hz/t;Lcom/byazt/bo/c;I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
