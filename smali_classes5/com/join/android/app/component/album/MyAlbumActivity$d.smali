.class Lcom/join/android/app/component/album/MyAlbumActivity$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/album/MyAlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/MyAlbumActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/MyAlbumActivity;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$d;->a:Lcom/join/android/app/component/album/MyAlbumActivity;

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
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity$d;->a:Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/BaseActivity;->dismissLoading()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Ljava/util/List;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity$d;->a:Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/join/android/app/component/album/MyAlbumActivity;->access$600(Lcom/join/android/app/component/album/MyAlbumActivity;Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
