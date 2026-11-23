.class Lcom/join/android/app/component/album/lib/ImageLoader$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/lib/ImageLoader;->t(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/component/album/lib/ImageLoader;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/lib/ImageLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$b;->b:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader$b;->b:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 5
    .line 6
    new-instance v1, Lcom/join/android/app/component/album/lib/ImageLoader$b$a;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/lib/ImageLoader$b$a;-><init>(Lcom/join/android/app/component/album/lib/ImageLoader$b;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/join/android/app/component/album/lib/ImageLoader;->a(Lcom/join/android/app/component/album/lib/ImageLoader;Landroid/os/Handler;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader$b;->b:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->e(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/util/concurrent/Semaphore;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
