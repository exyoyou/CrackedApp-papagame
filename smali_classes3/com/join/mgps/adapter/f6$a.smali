.class Lcom/join/mgps/adapter/f6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/f6;->X(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/youth/banner/Banner;

.field final synthetic d:Lcom/join/mgps/adapter/f6;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/f6;Ljava/util/List;Lcom/youth/banner/Banner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$list",
            "val$banner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/f6$a;->d:Lcom/join/mgps/adapter/f6;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/f6$a;->b:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/f6$a;->c:Lcom/youth/banner/Banner;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/f6$a;->d:Lcom/join/mgps/adapter/f6;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/adapter/f6;->O(Lcom/join/mgps/adapter/f6;)Lcom/join/mgps/adapter/f6$g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/f6$a;->d:Lcom/join/mgps/adapter/f6;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/adapter/f6;->O(Lcom/join/mgps/adapter/f6;)Lcom/join/mgps/adapter/f6$g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/adapter/f6$a;->b:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/f6$g;->z(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/f6$a;->c:Lcom/youth/banner/Banner;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/adapter/f6$a;->b:Ljava/util/List;

    .line 29
    .line 30
    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/f6;->P(Lcom/youth/banner/Banner;Ljava/util/List;I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/adapter/f6$a;->d:Lcom/join/mgps/adapter/f6;

    .line 34
    .line 35
    iput p1, v0, Lcom/join/mgps/adapter/f6;->n:I

    .line 36
    .line 37
    return-void
.end method
