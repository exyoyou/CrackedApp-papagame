.class Lcom/join/mgps/hmcloud/HMCloudGameManager$b;
.super Lcom/facebook/imagepipeline/datasource/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/hmcloud/HMCloudGameManager;->q0(Lcom/join/mgps/hmcloud/HMCloudGameManager$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/RoundedImageView;

.field final synthetic b:Lcom/join/mgps/hmcloud/HMCloudGameManager;


# direct methods
.method constructor <init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;Lcom/join/mgps/customview/RoundedImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$riv_view"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$b;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$b;->a:Lcom/join/mgps/customview/RoundedImageView;

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
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public g(Landroid/graphics/Bitmap;)V
    .locals 1
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
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$b;->a:Lcom/join/mgps/customview/RoundedImageView;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/RoundedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
