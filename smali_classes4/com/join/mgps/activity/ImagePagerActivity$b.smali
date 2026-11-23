.class Lcom/join/mgps/activity/ImagePagerActivity$b;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ImagePagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:[Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/activity/ImagePagerActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/ImagePagerActivity;Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "fm",
            "fileList"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ImagePagerActivity$b;->b:Lcom/join/mgps/activity/ImagePagerActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/join/mgps/activity/ImagePagerActivity$b;->a:[Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ImagePagerActivity$b;->a:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    array-length v0, v0

    .line 8
    :goto_0
    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ImagePagerActivity$b;->a:[Ljava/lang/String;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/android/app/component/photoviewer/a;->R(Ljava/lang/String;)Lcom/join/android/app/component/photoviewer/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
