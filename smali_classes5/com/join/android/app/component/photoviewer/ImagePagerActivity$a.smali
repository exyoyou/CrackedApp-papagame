.class Lcom/join/android/app/component/photoviewer/ImagePagerActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/photoviewer/ImagePagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$a;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$a;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->access$000(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$a;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->myImagePagerPopupWindow:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->access$100(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$a;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->myImagePagerPopupWindow:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$a;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    .line 30
    .line 31
    invoke-static {v0, p1}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->access$200(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    const/4 p1, 0x1

    .line 35
    return p1
.end method
