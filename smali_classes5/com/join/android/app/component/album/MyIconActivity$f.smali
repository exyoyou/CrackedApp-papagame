.class Lcom/join/android/app/component/album/MyIconActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/MyIconActivity;->updateList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/component/album/MyIconActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/MyIconActivity;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity$f;->b:Lcom/join/android/app/component/album/MyIconActivity;

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
    const-string p1, "android.permission.CAMERA"

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    if-ge p3, p2, :cond_0

    .line 5
    .line 6
    :try_start_0
    new-instance p3, Lcom/tbruyelle/rxpermissions2/c;

    .line 7
    .line 8
    iget-object p4, p0, Lcom/join/android/app/component/album/MyIconActivity$f;->b:Lcom/join/android/app/component/album/MyIconActivity;

    .line 9
    .line 10
    invoke-direct {p3, p4}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 11
    .line 12
    .line 13
    new-array p2, p2, [Ljava/lang/String;

    .line 14
    .line 15
    const/4 p4, 0x0

    .line 16
    aput-object p1, p2, p4

    .line 17
    .line 18
    invoke-virtual {p3, p2}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/Observable;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    new-instance p3, Lcom/join/android/app/component/album/MyIconActivity$f$a;

    .line 23
    .line 24
    invoke-direct {p3, p0}, Lcom/join/android/app/component/album/MyIconActivity$f$a;-><init>(Lcom/join/android/app/component/album/MyIconActivity$f;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lcom/join/android/app/component/album/MyIconActivity$f;->b:Lcom/join/android/app/component/album/MyIconActivity;

    .line 31
    .line 32
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->c4(Landroid/app/Activity;Ljava/lang/String;)V
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
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity$f;->b:Lcom/join/android/app/component/album/MyIconActivity;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/join/android/app/component/album/MyIconActivity;->access$900(Lcom/join/android/app/component/album/MyIconActivity;)Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/join/android/app/component/album/CropPicActivity_;->intent(Landroid/content/Context;)Lcom/join/android/app/component/album/CropPicActivity_$k;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/join/android/app/component/album/MyIconActivity$f;->b:Lcom/join/android/app/component/album/MyIconActivity;

    .line 52
    .line 53
    invoke-static {p2}, Lcom/join/android/app/component/album/MyIconActivity;->access$800(Lcom/join/android/app/component/album/MyIconActivity;)Lcom/join/android/app/component/album/adapter/d;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2, p3}, Lcom/join/android/app/component/album/adapter/d;->getItem(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p1, p2}, Lcom/join/android/app/component/album/CropPicActivity_$k;->a(Ljava/lang/String;)Lcom/join/android/app/component/album/CropPicActivity_$k;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p2, p0, Lcom/join/android/app/component/album/MyIconActivity$f;->b:Lcom/join/android/app/component/album/MyIconActivity;

    .line 70
    .line 71
    invoke-static {p2}, Lcom/join/android/app/component/album/MyIconActivity;->access$700(Lcom/join/android/app/component/album/MyIconActivity;)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    invoke-virtual {p1, p2}, Lcom/join/android/app/component/album/CropPicActivity_$k;->b(I)Lcom/join/android/app/component/album/CropPicActivity_$k;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 80
    .line 81
    .line 82
    return-void
.end method
