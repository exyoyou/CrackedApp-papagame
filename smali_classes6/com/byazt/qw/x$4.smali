.class public Lcom/byazt/qw/x$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2d6,
        0x3d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qw/x;->c(Landroid/view/ViewGroup;Landroid/opengl/GLSurfaceView;Lcom/byazt/qw/sp;Lcom/byazt/qw/x$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/opengl/GLSurfaceView;

.field public final synthetic n:Lcom/byazt/qw/x;

.field public final synthetic tt:[Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/qw/x$c;

.field public final synthetic ve:Lcom/byazt/qw/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/qw/x;Landroid/opengl/GLSurfaceView;[Ljava/lang/String;Lcom/byazt/qw/sp;Lcom/byazt/qw/x$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qw/x$4;->n:Lcom/byazt/qw/x;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/qw/x$4;->c:Landroid/opengl/GLSurfaceView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/qw/x$4;->tt:[Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/qw/x$4;->ve:Lcom/byazt/qw/sp;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/qw/x$4;->uj:Lcom/byazt/qw/x$c;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/qw/x$4;->n:Lcom/byazt/qw/x;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/qw/x;->tt(Lcom/byazt/qw/x;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/byazt/qw/x$4;->c:Landroid/opengl/GLSurfaceView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/qw/x$4;->tt:[Ljava/lang/String;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    aget-object v0, v0, v1

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/byazt/qw/x$4;->ve:Lcom/byazt/qw/sp;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v1, v0}, Lcom/byazt/qw/sp;->c(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/byazt/qw/x$4;->uj:Lcom/byazt/qw/x$c;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/byazt/qw/x$4;->c:Landroid/opengl/GLSurfaceView;

    .line 35
    .line 36
    invoke-interface {v0, v1}, Lcom/byazt/qw/x$c;->c(Landroid/opengl/GLSurfaceView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    const-string v1, "gpuInfo2"

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
