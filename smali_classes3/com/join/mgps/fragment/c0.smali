.class public Lcom/join/mgps/fragment/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/fragment/b0;


# instance fields
.field private final a:Landroidx/viewpager/widget/ViewPager;

.field private final b:Landroidx/fragment/app/FragmentManager;

.field private final c:Lcom/join/mgps/adapter/h0;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pager",
            "manager"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/fragment/c0;->a:Landroidx/viewpager/widget/ViewPager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/fragment/c0;->b:Landroidx/fragment/app/FragmentManager;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/join/mgps/adapter/h0;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/join/mgps/fragment/c0;->c:Lcom/join/mgps/adapter/h0;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Lcom/join/mgps/adapter/h0;

    .line 20
    .line 21
    invoke-direct {p1, p2}, Lcom/join/mgps/adapter/h0;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/join/mgps/fragment/c0;->c:Lcom/join/mgps/adapter/h0;

    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private static b(IJ)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "id"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android:switcher:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, ":"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method


# virtual methods
.method public a()Lcom/join/mgps/fragment/v1;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->a:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/join/mgps/fragment/c0;->c:Lcom/join/mgps/adapter/h0;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/adapter/h0;->getCount()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-lt v0, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/fragment/c0;->a:Landroidx/viewpager/widget/ViewPager;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, p0, Lcom/join/mgps/fragment/c0;->c:Lcom/join/mgps/adapter/h0;

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Lcom/join/mgps/adapter/h0;->getItemId(I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-static {v2, v3, v4}, Lcom/join/mgps/fragment/c0;->b(IJ)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p0, Lcom/join/mgps/fragment/c0;->b:Landroidx/fragment/app/FragmentManager;

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    move-object v1, v0

    .line 44
    check-cast v1, Lcom/join/mgps/fragment/v1;

    .line 45
    .line 46
    :cond_1
    :goto_0
    return-object v1
.end method
