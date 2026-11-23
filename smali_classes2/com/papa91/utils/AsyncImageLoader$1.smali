.class Lcom/papa91/utils/AsyncImageLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/utils/AsyncImageLoader;->downloadImage(Ljava/lang/String;ZLcom/papa91/utils/AsyncImageLoader$ImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/utils/AsyncImageLoader;

.field final synthetic val$cache2Memory:Z

.field final synthetic val$callback:Lcom/papa91/utils/AsyncImageLoader$ImageCallback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/utils/AsyncImageLoader;Ljava/lang/String;ZLcom/papa91/utils/AsyncImageLoader$ImageCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/utils/AsyncImageLoader$1;->this$0:Lcom/papa91/utils/AsyncImageLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/utils/AsyncImageLoader$1;->val$url:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/papa91/utils/AsyncImageLoader$1;->val$cache2Memory:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/papa91/utils/AsyncImageLoader$1;->val$callback:Lcom/papa91/utils/AsyncImageLoader$ImageCallback;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/papa91/utils/AsyncImageLoader;->access$000()Lcom/papa91/utils/LoaderImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/papa91/utils/AsyncImageLoader$1;->val$url:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/papa91/utils/AsyncImageLoader$1;->val$cache2Memory:Z

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/papa91/utils/LoaderImpl;->getBitmapFromUrl(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/papa91/utils/AsyncImageLoader$1;->this$0:Lcom/papa91/utils/AsyncImageLoader;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/papa91/utils/AsyncImageLoader;->access$200(Lcom/papa91/utils/AsyncImageLoader;)Landroid/os/Handler;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lcom/papa91/utils/AsyncImageLoader$1$1;

    .line 20
    .line 21
    invoke-direct {v2, p0, v0}, Lcom/papa91/utils/AsyncImageLoader$1$1;-><init>(Lcom/papa91/utils/AsyncImageLoader$1;Landroid/graphics/Bitmap;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method
