.class Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$bannerBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$b;->c:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$b;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$b;->c:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;)Lcom/join/mgps/customview/CarouselViewPager2;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$b;->c:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$b;->b:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    rem-int/2addr p1, v2

    .line 20
    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;Ljava/util/List;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
