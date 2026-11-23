.class Lcom/join/mgps/adapter/o5$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/o5;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/join/mgps/adapter/o5;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/o5;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$rankings"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$d;->c:Lcom/join/mgps/adapter/o5;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/o5$d;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
    iget-object v0, p0, Lcom/join/mgps/adapter/o5$d;->c:Lcom/join/mgps/adapter/o5;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/adapter/o5;->s(Lcom/join/mgps/adapter/o5;)Lcom/join/mgps/adapter/o5$i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/o5$d;->c:Lcom/join/mgps/adapter/o5;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/adapter/o5;->s(Lcom/join/mgps/adapter/o5;)Lcom/join/mgps/adapter/o5$i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/adapter/o5$d;->b:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1, v1}, Lcom/join/mgps/adapter/o5$i;->b(ILjava/util/List;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
