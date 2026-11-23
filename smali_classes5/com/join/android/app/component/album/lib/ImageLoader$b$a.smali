.class Lcom/join/android/app/component/album/lib/ImageLoader$b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/lib/ImageLoader$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/lib/ImageLoader$b;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/lib/ImageLoader$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$b$a;->a:Lcom/join/android/app/component/album/lib/ImageLoader$b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$b$a;->a:Lcom/join/android/app/component/album/lib/ImageLoader$b;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/android/app/component/album/lib/ImageLoader$b;->b:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/android/app/component/album/lib/ImageLoader;->c(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader$b$a;->a:Lcom/join/android/app/component/album/lib/ImageLoader$b;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/android/app/component/album/lib/ImageLoader$b;->b:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->b(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/lang/Runnable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$b$a;->a:Lcom/join/android/app/component/album/lib/ImageLoader$b;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/join/android/app/component/album/lib/ImageLoader$b;->b:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/join/android/app/component/album/lib/ImageLoader;->d(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/util/concurrent/Semaphore;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    return-void
.end method
