.class public Lcom/byazt/zj/ve$2;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28c,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zj/ve;->c(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic n:Lcom/byazt/zj/ve;

.field public final synthetic tt:Lcom/byazt/zj/ve$ve;

.field public final synthetic uj:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic ve:Z


# direct methods
.method public constructor <init>(Lcom/byazt/zj/ve;Ljava/lang/String;Landroid/content/Context;Lcom/byazt/zj/ve$ve;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zj/ve$2;->n:Lcom/byazt/zj/ve;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/zj/ve$2;->c:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/zj/ve$2;->tt:Lcom/byazt/zj/ve$ve;

    .line 6
    .line 7
    iput-boolean p5, p0, Lcom/byazt/zj/ve$2;->ve:Z

    .line 8
    .line 9
    iput-object p6, p0, Lcom/byazt/zj/ve$2;->uj:Ljava/util/concurrent/CountDownLatch;

    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/zj/ve$2;->n:Lcom/byazt/zj/ve;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/zj/ve$2;->c:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/zj/ve$2;->tt:Lcom/byazt/zj/ve$ve;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-boolean v4, p0, Lcom/byazt/zj/ve$2;->ve:Z

    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/zj/ve;->c(Lcom/byazt/zj/ve;Landroid/content/Context;Lcom/byazt/zj/ve$ve;ZZ)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/zj/ve$2;->uj:Ljava/util/concurrent/CountDownLatch;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
