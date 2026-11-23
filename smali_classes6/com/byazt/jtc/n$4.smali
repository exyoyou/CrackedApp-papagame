.class public Lcom/byazt/jtc/n$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2d8,
        0x1fa
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/jtc/n;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/concurrent/Callable;

.field public final synthetic tt:J

.field public final synthetic uj:Lcom/byazt/jtc/n;

.field public final synthetic ve:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lcom/byazt/jtc/n;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jtc/n$4;->uj:Lcom/byazt/jtc/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/jtc/n$4;->c:Ljava/util/concurrent/Callable;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/byazt/jtc/n$4;->tt:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/jtc/n$4;->ve:Ljava/util/concurrent/TimeUnit;

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
    iget-object v0, p0, Lcom/byazt/jtc/n$4;->uj:Lcom/byazt/jtc/n;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/jtc/n$4;->c:Ljava/util/concurrent/Callable;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/byazt/jtc/n$4;->tt:J

    .line 6
    .line 7
    iget-object v4, p0, Lcom/byazt/jtc/n$4;->ve:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/jtc/n;->c(Lcom/byazt/jtc/n;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/jtc/n$4;->uj:Lcom/byazt/jtc/n;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/byazt/jtc/n;->c(Lcom/byazt/jtc/n;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/byazt/jtc/n$4;->c:Ljava/util/concurrent/Callable;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method
