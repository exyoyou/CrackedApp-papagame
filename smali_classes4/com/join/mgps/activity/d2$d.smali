.class Lcom/join/mgps/activity/d2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/d2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/d2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/d2;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/d2$d;->b:Lcom/join/mgps/activity/d2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/d2$d;->b:Lcom/join/mgps/activity/d2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/d2;->V(Lcom/join/mgps/activity/d2;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/d2$d;->b:Lcom/join/mgps/activity/d2;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/d2$d;->b:Lcom/join/mgps/activity/d2;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/join/mgps/activity/d2;->X:Lcom/join/android/app/component/video/c;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/join/mgps/activity/d2;->n:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/join/android/app/component/video/c;->p(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/d2$d;->b:Lcom/join/mgps/activity/d2;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/activity/d2;->expListPoint()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
