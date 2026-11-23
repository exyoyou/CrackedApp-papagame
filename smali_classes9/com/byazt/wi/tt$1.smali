.class public Lcom/byazt/wi/tt$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3d7,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wi/tt;->c(Ljava/lang/String;Lcom/byazt/ete/x$n;ILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/wi/tt;

.field public final synthetic c:Lcom/byazt/ete/x$n;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic tt:I

.field public final synthetic uj:J

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/wi/tt;Ljava/lang/String;Lcom/byazt/ete/x$n;ILjava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wi/tt$1;->a:Lcom/byazt/wi/tt;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/wi/tt$1;->c:Lcom/byazt/ete/x$n;

    .line 4
    .line 5
    iput p4, p0, Lcom/byazt/wi/tt$1;->tt:I

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/wi/tt$1;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iput-wide p6, p0, Lcom/byazt/wi/tt$1;->uj:J

    .line 10
    .line 11
    iput-object p8, p0, Lcom/byazt/wi/tt$1;->n:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wi/tt$1;->a:Lcom/byazt/wi/tt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/wi/tt$1;->c:Lcom/byazt/ete/x$n;

    .line 4
    .line 5
    iget v2, p0, Lcom/byazt/wi/tt$1;->tt:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/byazt/wi/tt$1;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/byazt/wi/tt$1;->uj:J

    .line 10
    .line 11
    invoke-static/range {v0 .. v5}, Lcom/byazt/wi/tt;->c(Lcom/byazt/wi/tt;Lcom/byazt/ete/x$n;ILjava/lang/String;J)Lcom/byazt/wi/tt$c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/wi/tt$1;->a:Lcom/byazt/wi/tt;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/byazt/wi/tt;->c(Lcom/byazt/wi/tt;)Landroid/util/LruCache;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/byazt/wi/tt$1;->n:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/byazt/wi/tt$1;->a:Lcom/byazt/wi/tt;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/byazt/wi/tt$1;->n:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1, v2, v0}, Lcom/byazt/wi/tt;->c(Lcom/byazt/wi/tt;Ljava/lang/String;Lcom/byazt/wi/tt$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/byazt/wi/tt$1;->a:Lcom/byazt/wi/tt;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/byazt/wi/tt;->tt(Lcom/byazt/wi/tt;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/byazt/wi/tt$1;->n:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    iget-object v1, p0, Lcom/byazt/wi/tt$1;->a:Lcom/byazt/wi/tt;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/byazt/wi/tt;->tt(Lcom/byazt/wi/tt;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/byazt/wi/tt$1;->n:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    throw v0
.end method
