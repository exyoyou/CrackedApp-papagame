.class Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

.field final synthetic c:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;Lcom/join/mgps/adapter/MGGameDetailAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;->c:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;->c:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    rem-int/2addr p1, v0

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;->c:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ge v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;->c:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    .line 27
    .line 28
    aget-object v1, v1, p1

    .line 29
    .line 30
    const v2, 0x7f080f2e

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 34
    .line 35
    .line 36
    if-eq p1, v0, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;->c:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    .line 41
    .line 42
    aget-object v1, v1, v0

    .line 43
    .line 44
    const v2, 0x7f080f2c

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    .line 49
    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method
