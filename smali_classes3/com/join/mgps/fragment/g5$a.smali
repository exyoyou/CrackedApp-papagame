.class Lcom/join/mgps/fragment/g5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/g5;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/g5;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/g5;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/g5$a;->b:Lcom/join/mgps/fragment/g5;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/g5$a;->b:Lcom/join/mgps/fragment/g5;

    .line 2
    .line 3
    add-int/2addr p3, p2

    .line 4
    add-int/lit8 p3, p3, -0x1

    .line 5
    .line 6
    invoke-static {p1, p3}, Lcom/join/mgps/fragment/g5;->Q(Lcom/join/mgps/fragment/g5;I)I

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/g5$a;->b:Lcom/join/mgps/fragment/g5;

    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/join/mgps/fragment/g5;->R(Lcom/join/mgps/fragment/g5;I)I

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/g5$a;->b:Lcom/join/mgps/fragment/g5;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    :goto_0
    invoke-static {p1, p2}, Lcom/join/mgps/fragment/g5;->P(Lcom/join/mgps/fragment/g5;Z)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
