.class public Lcom/byazt/wh/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x494,
        0x18b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wh/a;->c(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/byazt/wh/uj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/util/SparseArray;

.field public final synthetic tt:Landroid/util/SparseArray;

.field public final synthetic uj:Lcom/byazt/wh/a;

.field public final synthetic ve:Lcom/byazt/wh/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/wh/a;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/byazt/wh/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wh/a$4;->uj:Lcom/byazt/wh/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wh/a$4;->c:Landroid/util/SparseArray;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/wh/a$4;->tt:Landroid/util/SparseArray;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/wh/a$4;->ve:Lcom/byazt/wh/uj;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/wh/a$4;->uj:Lcom/byazt/wh/a;

    .line 2
    .line 3
    new-instance v1, Lcom/byazt/wh/a$4$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/byazt/wh/a$4$1;-><init>(Lcom/byazt/wh/a$4;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/wh/a;->c(Lcom/byazt/wh/tt;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/byazt/wh/a$4;->uj:Lcom/byazt/wh/a;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/byazt/wh/a;->uj(Lcom/byazt/wh/a;)Ljava/util/concurrent/CountDownLatch;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    const-wide/16 v3, 0x1388

    .line 21
    .line 22
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 23
    .line 24
    .line 25
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    xor-int/2addr v1, v0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_0
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/byazt/wh/a$4;->uj:Lcom/byazt/wh/a;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/byazt/wh/a;->x(Lcom/byazt/wh/a;)Ljava/util/concurrent/Future;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lcom/byazt/wh/a$4;->uj:Lcom/byazt/wh/a;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/byazt/wh/a;->c()V

    .line 49
    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/byazt/wh/a$4;->ve:Lcom/byazt/wh/uj;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-interface {v0}, Lcom/byazt/wh/uj;->c()V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method
