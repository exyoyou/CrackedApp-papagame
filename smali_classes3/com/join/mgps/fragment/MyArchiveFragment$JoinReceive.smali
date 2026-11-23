.class Lcom/join/mgps/fragment/MyArchiveFragment$JoinReceive;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/MyArchiveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JoinReceive"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/MyArchiveFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$JoinReceive;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$JoinReceive;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->D:Z

    .line 5
    .line 6
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->c:Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$JoinReceive;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->C:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
