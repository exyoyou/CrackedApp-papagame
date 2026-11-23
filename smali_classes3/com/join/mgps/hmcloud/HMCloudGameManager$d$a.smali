.class Lcom/join/mgps/hmcloud/HMCloudGameManager$d$a;
.super Lcom/facebook/imagepipeline/datasource/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/hmcloud/HMCloudGameManager$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/hmcloud/HMCloudGameManager$d;


# direct methods
.method constructor <init>(Lcom/join/mgps/hmcloud/HMCloudGameManager$d;)V
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
    iput-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$d$a;->a:Lcom/join/mgps/hmcloud/HMCloudGameManager$d;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public e(Lcom/facebook/datasource/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$d$a;->a:Lcom/join/mgps/hmcloud/HMCloudGameManager$d;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$d;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->I(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$d$a;->a:Lcom/join/mgps/hmcloud/HMCloudGameManager$d;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$d;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->I(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f080a79

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$d$a;->a:Lcom/join/mgps/hmcloud/HMCloudGameManager$d;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$d;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->C(Lcom/join/mgps/hmcloud/HMCloudGameManager;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/v0;->b(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/app/Notification;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/join/mgps/Util/v0;->f(Landroid/app/Notification;)V

    .line 41
    .line 42
    .line 43
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
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$d$a;->a:Lcom/join/mgps/hmcloud/HMCloudGameManager$d;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$d;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->I(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$d$a;->a:Lcom/join/mgps/hmcloud/HMCloudGameManager$d;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$d;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->C(Lcom/join/mgps/hmcloud/HMCloudGameManager;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v0, p1, v1}, Lcom/join/mgps/Util/v0;->b(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/app/Notification;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/join/mgps/Util/v0;->f(Landroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
