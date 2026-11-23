.class Lcom/join/mgps/fragment/k4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


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
    iput-object p1, p0, Lcom/join/mgps/fragment/k4$b;->b:Lcom/join/mgps/fragment/k4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$b;->b:Lcom/join/mgps/fragment/k4;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$b;->b:Lcom/join/mgps/fragment/k4;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$b;->b:Lcom/join/mgps/fragment/k4;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$b;->b:Lcom/join/mgps/fragment/k4;

    .line 30
    .line 31
    const v1, 0x7f12031e

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/k4;->showToast(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$b;->b:Lcom/join/mgps/fragment/k4;

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/k4;->P(Lcom/join/mgps/fragment/k4;I)I

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$b;->b:Lcom/join/mgps/fragment/k4;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/fragment/k4;->Q()V

    .line 51
    .line 52
    .line 53
    return-void
.end method
