.class public Lcom/byazt/nys/da$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ae,
        0x1ee
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nys/da;->c(Landroid/content/Context;Lcom/byazt/rl/ve;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/rl/ve;

.field public final synthetic tt:Landroid/content/Context;

.field public final synthetic ve:Lcom/byazt/nys/da;


# direct methods
.method public constructor <init>(Lcom/byazt/nys/da;Lcom/byazt/rl/ve;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nys/da$2;->ve:Lcom/byazt/nys/da;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/nys/da$2;->c:Lcom/byazt/rl/ve;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/nys/da$2;->tt:Landroid/content/Context;

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
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/qy/c;->c()Lcom/byazt/qy/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/qy/c;->uj()Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/byazt/nys/da$2$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/byazt/nys/da$2$1;-><init>(Lcom/byazt/nys/da$2;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
