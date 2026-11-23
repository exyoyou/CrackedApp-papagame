.class Lcom/join/android/app/component/album/MyAlbumActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/MyAlbumActivity;->updateList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/component/album/MyAlbumActivity;


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
    iput-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$f;->b:Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    const-string p4, "android.permission.CAMERA"

    .line 2
    .line 3
    const/4 p5, 0x1

    .line 4
    if-ge p3, p5, :cond_0

    .line 5
    .line 6
    :try_start_0
    new-instance p1, Lcom/tbruyelle/rxpermissions2/c;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/join/android/app/component/album/MyAlbumActivity$f;->b:Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 11
    .line 12
    .line 13
    new-array p2, p5, [Ljava/lang/String;

    .line 14
    .line 15
    const/4 p3, 0x0

    .line 16
    aput-object p4, p2, p3

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/Observable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Lcom/join/android/app/component/album/MyAlbumActivity$f$a;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Lcom/join/android/app/component/album/MyAlbumActivity$f$a;-><init>(Lcom/join/android/app/component/album/MyAlbumActivity$f;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$f;->b:Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 31
    .line 32
    invoke-static {p1, p4}, Lcom/join/mgps/Util/UtilsMy;->c4(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/join/android/app/component/album/adapter/c;

    .line 46
    .line 47
    iget-object p4, p0, Lcom/join/android/app/component/album/MyAlbumActivity$f;->b:Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 48
    .line 49
    invoke-virtual {p1, p3}, Lcom/join/android/app/component/album/adapter/c;->getItem(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p4, p2, p1}, Lcom/join/android/app/component/album/MyAlbumActivity;->processImageSelect(Landroid/view/View;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
