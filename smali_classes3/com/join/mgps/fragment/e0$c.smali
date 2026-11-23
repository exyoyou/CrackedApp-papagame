.class Lcom/join/mgps/fragment/e0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/e0;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/e0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/e0;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/e0$c;->a:Lcom/join/mgps/fragment/e0;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/e0$c;->a:Lcom/join/mgps/fragment/e0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/e0;->d:Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/fragment/e0$c;->a:Lcom/join/mgps/fragment/e0;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/join/mgps/fragment/e0;->h:Lcom/join/mgps/customview/XListView2;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const v2, 0x7f0715d7

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ge v0, v1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/e0$c;->a:Lcom/join/mgps/fragment/e0;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/join/mgps/fragment/e0;->h:Lcom/join/mgps/customview/XListView2;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const v1, 0x7f0712fb

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/e0$c;->a:Lcom/join/mgps/fragment/e0;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/join/mgps/fragment/e0;->h:Lcom/join/mgps/customview/XListView2;

    .line 44
    .line 45
    invoke-virtual {v1, p1, v0}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
