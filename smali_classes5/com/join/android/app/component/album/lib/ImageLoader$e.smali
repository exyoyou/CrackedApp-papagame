.class Lcom/join/android/app/component/album/lib/ImageLoader$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/lib/ImageLoader;->v(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/android/app/component/album/lib/ImageLoader;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/lib/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$imageView",
            "val$path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->d:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->b:Landroid/widget/ImageView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->d:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->b:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/ImageLoader;->p(Landroid/widget/ImageView;)Lcom/join/android/app/component/album/lib/ImageLoader$f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Lcom/join/android/app/component/album/lib/ImageLoader$f;->a:I

    .line 10
    .line 11
    iget v0, v0, Lcom/join/android/app/component/album/lib/ImageLoader$f;->b:I

    .line 12
    .line 13
    iget-object v2, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->d:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, v3, v1, v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->l(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->d:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1, v2, v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->f(Lcom/join/android/app/component/album/lib/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/join/android/app/component/album/lib/ImageLoader$g;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->d:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/album/lib/ImageLoader$g;-><init>(Lcom/join/android/app/component/album/lib/ImageLoader;Lcom/join/android/app/component/album/lib/ImageLoader$a;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->d:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->c:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/join/android/app/component/album/lib/ImageLoader;->m(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Lcom/join/android/app/component/album/lib/ImageLoader$g;->a:Landroid/graphics/Bitmap;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->b:Landroid/widget/ImageView;

    .line 47
    .line 48
    iput-object v1, v0, Lcom/join/android/app/component/album/lib/ImageLoader$g;->b:Landroid/widget/ImageView;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->c:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v1, v0, Lcom/join/android/app/component/album/lib/ImageLoader$g;->c:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->d:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->g(Lcom/join/android/app/component/album/lib/ImageLoader;)Landroid/os/Handler;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->d:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->d(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/util/concurrent/Semaphore;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 76
    .line 77
    .line 78
    return-void
.end method
