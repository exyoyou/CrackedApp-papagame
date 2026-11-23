.class final Lms/bz/bd/c/Pgl/r1$pgla;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lms/bz/bd/c/Pgl/r1;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lms/bz/bd/c/Pgl/r1;


# direct methods
.method constructor <init>(Lms/bz/bd/c/Pgl/r1;)V
    .locals 0

    iput-object p1, p0, Lms/bz/bd/c/Pgl/r1$pgla;->c:Lms/bz/bd/c/Pgl/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lms/bz/bd/c/Pgl/r1$pgla;->c:Lms/bz/bd/c/Pgl/r1;

    invoke-static {v0}, Lms/bz/bd/c/Pgl/r1;->c(Lms/bz/bd/c/Pgl/r1;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lms/bz/bd/c/Pgl/r1$pgla;->c:Lms/bz/bd/c/Pgl/r1;

    invoke-static {v0}, Lms/bz/bd/c/Pgl/r1;->tt(Lms/bz/bd/c/Pgl/r1;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lms/bz/bd/c/Pgl/r1$pgla;->c:Lms/bz/bd/c/Pgl/r1;

    invoke-static {v1}, Lms/bz/bd/c/Pgl/r1;->tt(Lms/bz/bd/c/Pgl/r1;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lms/bz/bd/c/Pgl/r1$pgla;->c:Lms/bz/bd/c/Pgl/r1;

    invoke-static {v1}, Lms/bz/bd/c/Pgl/r1;->c(Lms/bz/bd/c/Pgl/r1;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "3572f3"

    const/4 v8, 0x7

    new-array v8, v8, [B

    fill-array-data v8, :array_0

    invoke-static/range {v3 .. v8}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    invoke-static {v1, v2}, Lms/bz/bd/c/Pgl/r1;->c(Lms/bz/bd/c/Pgl/r1;Landroid/hardware/display/DisplayManager;)V

    iget-object v1, p0, Lms/bz/bd/c/Pgl/r1$pgla;->c:Lms/bz/bd/c/Pgl/r1;

    invoke-static {v1}, Lms/bz/bd/c/Pgl/r1;->ve(Lms/bz/bd/c/Pgl/r1;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lms/bz/bd/c/Pgl/r1$pgla;->c:Lms/bz/bd/c/Pgl/r1;

    invoke-static {v1}, Lms/bz/bd/c/Pgl/r1;->ve(Lms/bz/bd/c/Pgl/r1;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    invoke-static {}, Lms/bz/bd/c/Pgl/q1;->c()Lms/bz/bd/c/Pgl/q1;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lms/bz/bd/c/Pgl/q1;->c([Landroid/view/Display;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lms/bz/bd/c/Pgl/q1;->tt([Landroid/view/Display;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2}, Lms/bz/bd/c/Pgl/q1;->c(I)V

    invoke-virtual {v3}, Lms/bz/bd/c/Pgl/q1;->tt()V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v3, v4}, Lms/bz/bd/c/Pgl/q1;->c(Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Lms/bz/bd/c/Pgl/q1;->tt(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lms/bz/bd/c/Pgl/r1$pgla;->c:Lms/bz/bd/c/Pgl/r1;

    new-instance v2, Lms/bz/bd/c/Pgl/pbll;

    invoke-static {v1}, Lms/bz/bd/c/Pgl/r1;->ve(Lms/bz/bd/c/Pgl/r1;)Landroid/hardware/display/DisplayManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lms/bz/bd/c/Pgl/pbll;-><init>(Landroid/hardware/display/DisplayManager;)V

    invoke-static {v1, v2}, Lms/bz/bd/c/Pgl/r1;->c(Lms/bz/bd/c/Pgl/r1;Lms/bz/bd/c/Pgl/pbll;)V

    iget-object v1, p0, Lms/bz/bd/c/Pgl/r1$pgla;->c:Lms/bz/bd/c/Pgl/r1;

    invoke-static {v1}, Lms/bz/bd/c/Pgl/r1;->ve(Lms/bz/bd/c/Pgl/r1;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    iget-object v2, p0, Lms/bz/bd/c/Pgl/r1$pgla;->c:Lms/bz/bd/c/Pgl/r1;

    invoke-static {v2}, Lms/bz/bd/c/Pgl/r1;->uj(Lms/bz/bd/c/Pgl/r1;)Lms/bz/bd/c/Pgl/pbll;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void

    :array_0
    .array-data 1
        0x26t
        0x3et
        0x57t
        0x56t
        0x55t
        0x25t
        0x29t
    .end array-data
.end method
