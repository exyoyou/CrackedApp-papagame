.class public Lcom/byazt/jy/tt$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7e5,
        0x9d9
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/jy/tt;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/jy/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/jy/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jy/tt$11;->c:Lcom/byazt/jy/tt;

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
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/jy/tt$11;->c:Lcom/byazt/jy/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/jy/tt;->i(Lcom/byazt/jy/tt;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "thread_service"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/byazt/dna/qp;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/jy/tt$11;->c:Lcom/byazt/jy/tt;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/byazt/jy/tt;->ve(Lcom/byazt/jy/tt;)Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lcom/byazt/dna/qp;->recycleHandler(Landroid/os/Handler;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/byazt/jy/tt$11;->c:Lcom/byazt/jy/tt;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {v0, v1}, Lcom/byazt/jy/tt;->c(Lcom/byazt/jy/tt;Landroid/os/Handler;)Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    const-string v1, "CSJ_VIDEO_TTVideo"

    .line 35
    .line 36
    const-string v2, "release error:"

    .line 37
    .line 38
    invoke-static {v1, v2, v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
