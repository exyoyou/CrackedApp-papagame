.class Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$a;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$a;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->c:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->access$000(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$f;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$a;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->c:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->access$000(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$f;->b(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$a;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->c:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->access$400(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)Landroid/os/AsyncTask;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x1

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    aput-object p1, v1, v2

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$a;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 51
    .line 52
    .line 53
    return-void
.end method
