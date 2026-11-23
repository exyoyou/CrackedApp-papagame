.class Lcom/join/android/app/component/album/MyAlbumActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/MyAlbumActivity;->initAlbumPopupWindow()V
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
    iput-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$b;->b:Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity$b;->b:Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$b;->b:Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity$b;->b:Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {v0, v1}, Lcom/join/android/app/component/album/MyAlbumActivity;->access$400(Lcom/join/android/app/component/album/MyAlbumActivity;Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity$b;->b:Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/android/app/component/album/MyAlbumActivity;->access$500(Lcom/join/android/app/component/album/MyAlbumActivity;)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/16 v1, 0x8

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
