.class public Lcom/byazt/ktv/c$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9a,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ktv/c;->c(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/ktv/c;

.field public final synthetic ve:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/byazt/ktv/c;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ktv/c$1;->uj:Lcom/byazt/ktv/c;

    .line 2
    .line 3
    iput p3, p0, Lcom/byazt/ktv/c$1;->c:I

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/ktv/c$1;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/ktv/c$1;->ve:[Ljava/lang/StackTraceElement;

    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ktv/c$1;->uj:Lcom/byazt/ktv/c;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/ktv/c$1;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/ktv/c$1;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/byazt/ktv/c$1;->ve:[Ljava/lang/StackTraceElement;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/ktv/c;->c(Lcom/byazt/ktv/c;ILjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/byazt/ktv/c$1;->uj:Lcom/byazt/ktv/c;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/byazt/ktv/c;->c(Lcom/byazt/ktv/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/ktv/c$1;->uj:Lcom/byazt/ktv/c;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/byazt/ktv/c;->c(Lcom/byazt/ktv/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x3

    .line 33
    if-ge v0, v1, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ktv/c$1;->uj:Lcom/byazt/ktv/c;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/byazt/ktv/c;->tt(Lcom/byazt/ktv/c;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
