.class Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/framework/network/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->doTask(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

.field private final synthetic val$file:Ljava/io/File;

.field private final synthetic val$req:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Ljava/io/File;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 2
    .line 3
    iput-object p2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$file:Ljava/io/File;

    .line 4
    .line 5
    iput-object p3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$req:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onResponse(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    new-instance v0, Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lm/framework/utils/Utils;->getBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 21
    .line 22
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$file:Ljava/io/File;

    .line 23
    .line 24
    invoke-static {v1, p1, v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 28
    .line 29
    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$req:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 38
    .line 39
    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$req:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 47
    .line 48
    invoke-static {v1, p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 52
    .line 53
    invoke-static {p1, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    :goto_0
    iget-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 58
    .line 59
    invoke-static {p1, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
