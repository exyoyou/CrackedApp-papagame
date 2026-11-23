.class Lcom/join/mgps/customview/ViewPagerWithADs$a$c;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ViewPagerWithADs$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ViewPagerWithADs$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$c;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
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
    return-void
.end method

.method public getCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
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
    new-instance v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$c;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$c;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$c;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    rem-int v2, p2, v2

    .line 34
    .line 35
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$c;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/high16 v3, 0x41a00000    # 20.0f

    .line 52
    .line 53
    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const v3, 0x7f08018d

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v3, v1, v2}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$c;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 64
    .line 65
    invoke-virtual {v1, v0, p2}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->h(Landroid/view/View;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
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
