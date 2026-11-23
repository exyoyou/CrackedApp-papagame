.class Lcom/join/mgps/fragment/k4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/k4;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/k4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/k4;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/k4$a;->b:Lcom/join/mgps/fragment/k4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$a;->b:Lcom/join/mgps/fragment/k4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/fragment/k4;->isActivityFinish()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$a;->b:Lcom/join/mgps/fragment/k4;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/fragment/k4;->N(Lcom/join/mgps/fragment/k4;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$a;->b:Lcom/join/mgps/fragment/k4;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$a;->b:Lcom/join/mgps/fragment/k4;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$a;->b:Lcom/join/mgps/fragment/k4;

    .line 38
    .line 39
    const v1, 0x7f12031e

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/k4;->showToast(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$a;->b:Lcom/join/mgps/fragment/k4;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/fragment/k4;->Q()V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method
