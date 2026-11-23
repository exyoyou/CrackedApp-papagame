.class Lcom/papa91/utils/AsyncImageLoader$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/utils/AsyncImageLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/utils/AsyncImageLoader$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/papa91/utils/AsyncImageLoader$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/utils/AsyncImageLoader$1$1;->this$1:Lcom/papa91/utils/AsyncImageLoader$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/utils/AsyncImageLoader$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/utils/AsyncImageLoader$1$1;->this$1:Lcom/papa91/utils/AsyncImageLoader$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/papa91/utils/AsyncImageLoader$1;->val$callback:Lcom/papa91/utils/AsyncImageLoader$ImageCallback;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/papa91/utils/AsyncImageLoader$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/papa91/utils/AsyncImageLoader$1;->val$url:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {v1, v2, v0}, Lcom/papa91/utils/AsyncImageLoader$ImageCallback;->onImageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lcom/papa91/utils/AsyncImageLoader;->access$100()Ljava/util/HashSet;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/papa91/utils/AsyncImageLoader$1$1;->this$1:Lcom/papa91/utils/AsyncImageLoader$1;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/papa91/utils/AsyncImageLoader$1;->val$url:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
