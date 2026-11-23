.class Lcom/join/mgps/hmcloud/HMCloudGameManager$e$a;
.super Lcom/facebook/imagepipeline/datasource/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/hmcloud/HMCloudGameManager$e;->h(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/join/mgps/hmcloud/HMCloudGameManager$e;


# direct methods
.method constructor <init>(Lcom/join/mgps/hmcloud/HMCloudGameManager$e;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$iv_image"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$e$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager$e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$e$a;->a:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/b;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public e(Lcom/facebook/datasource/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$e$a;->a:Landroid/widget/ImageView;

    .line 2
    .line 3
    const v0, 0x7f080a79

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public g(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x17

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$e$a;->a:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    return-void
.end method
