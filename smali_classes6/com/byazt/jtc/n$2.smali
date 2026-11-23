.class public Lcom/byazt/jtc/n$2;
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
        0x202
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/jtc/n;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic n:Lcom/byazt/jtc/n;

.field public final synthetic tt:J

.field public final synthetic uj:Ljava/util/concurrent/TimeUnit;

.field public final synthetic ve:J


# direct methods
.method public constructor <init>(Lcom/byazt/jtc/n;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jtc/n$2;->n:Lcom/byazt/jtc/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/jtc/n$2;->c:Ljava/lang/Runnable;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/byazt/jtc/n$2;->tt:J

    .line 6
    .line 7
    iput-wide p5, p0, Lcom/byazt/jtc/n$2;->ve:J

    .line 8
    .line 9
    iput-object p7, p0, Lcom/byazt/jtc/n$2;->uj:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/n$2;->n:Lcom/byazt/jtc/n;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/jtc/n$2;->c:Ljava/lang/Runnable;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/byazt/jtc/n$2;->tt:J

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/byazt/jtc/n$2;->ve:J

    .line 8
    .line 9
    iget-object v6, p0, Lcom/byazt/jtc/n$2;->uj:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    invoke-static/range {v0 .. v6}, Lcom/byazt/jtc/n;->c(Lcom/byazt/jtc/n;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/jtc/n$2;->n:Lcom/byazt/jtc/n;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/jtc/n;->c(Lcom/byazt/jtc/n;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/byazt/jtc/n$2;->c:Ljava/lang/Runnable;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method
