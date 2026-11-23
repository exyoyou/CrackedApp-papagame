.class Lcom/join/mgps/fragment/u1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/u1;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/u1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/u1;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/u1$d;->a:Lcom/join/mgps/fragment/u1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$d;->a:Lcom/join/mgps/fragment/u1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/customview/XListView2;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/fragment/u1;->O(Lcom/join/mgps/fragment/u1;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v2, 0x7f0711b6

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {v1, p1, v0}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
