.class Lcom/join/android/app/component/album/MyAlbumActivity$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/MyAlbumActivity$f;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/tbruyelle/rxpermissions2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/component/album/MyAlbumActivity$f;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/MyAlbumActivity$f;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$f$a;->b:Lcom/join/android/app/component/album/MyAlbumActivity$f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$f$a;->b:Lcom/join/android/app/component/album/MyAlbumActivity$f;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/join/android/app/component/album/MyAlbumActivity$f;->b:Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 8
    .line 9
    const-string v0, "android.permission.CAMERA"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/BaseFragmentActivity;->checkPermiss(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$f$a;->b:Lcom/join/android/app/component/album/MyAlbumActivity$f;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/join/android/app/component/album/MyAlbumActivity$f;->b:Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 20
    .line 21
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/BaseFragmentActivity;->checkPermiss(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$f$a;->b:Lcom/join/android/app/component/album/MyAlbumActivity$f;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/android/app/component/album/MyAlbumActivity$f;->b:Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/android/app/component/album/MyAlbumActivity;->getImageFromCamera()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->c:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity$f$a;->b:Lcom/join/android/app/component/album/MyAlbumActivity$f;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/join/android/app/component/album/MyAlbumActivity$f;->b:Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$f$a;->b:Lcom/join/android/app/component/album/MyAlbumActivity$f;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/join/android/app/component/album/MyAlbumActivity$f;->b:Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 53
    .line 54
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/g0;->Z(Landroid/content/Context;Lcom/tbruyelle/rxpermissions2/b;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "permission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/tbruyelle/rxpermissions2/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/album/MyAlbumActivity$f$a;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
