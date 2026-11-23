.class public Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarImagesBrowseAdapter"
.end annotation


# instance fields
.field heigjt:I

.field private mChildCount:I

.field private mContext:Landroid/content/Context;

.field private mViewCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

.field with:I


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/q;->k(Landroid/app/Activity;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->heigjt:I

    .line 17
    .line 18
    iget-object v0, p1, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/q;->C(Landroid/app/Activity;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->with:I

    .line 29
    .line 30
    iput-object p2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    new-instance p1, Ljava/util/LinkedList;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mViewCache:Ljava/util/LinkedList;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "position",
            "object"
        }
    .end annotation

    .line 1
    check-cast p3, Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mViewCache:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mChildCount:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mChildCount:I

    .line 8
    .line 9
    const/4 p1, -0x2

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "container",
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mViewCache:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const v1, -0xebe7e2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mViewCache:Ljava/util/LinkedList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/view/View;

    .line 30
    .line 31
    :goto_0
    move-object v1, v0

    .line 32
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {p1, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 39
    .line 40
    .line 41
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;

    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->getPicPath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    sget-object v2, Lcom/facebook/drawee/drawable/s$c;->e:Lcom/facebook/drawee/drawable/s$c;

    .line 61
    .line 62
    invoke-static {v1, p2, v2}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 63
    .line 64
    .line 65
    const/4 p2, -0x1

    .line 66
    invoke-virtual {p1, v0, p2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 67
    .line 68
    .line 69
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "object"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->getCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mChildCount:I

    .line 6
    .line 7
    invoke-super {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
