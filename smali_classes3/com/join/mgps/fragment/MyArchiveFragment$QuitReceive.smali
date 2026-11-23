.class Lcom/join/mgps/fragment/MyArchiveFragment$QuitReceive;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/MyArchiveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuitReceive"
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
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$QuitReceive;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

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
    .locals 1
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
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$QuitReceive;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->D:Z

    .line 5
    .line 6
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->c:Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$QuitReceive;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$QuitReceive;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-ge p1, v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$QuitReceive;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    .line 39
    .line 40
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/CloudListDataBean;->setIsCheck(I)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$QuitReceive;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->d:Landroid/widget/ImageView;

    .line 49
    .line 50
    const p2, 0x7f08018e

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$QuitReceive;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->e:Landroid/widget/TextView;

    .line 59
    .line 60
    const-string p2, "\u5df2\u9009\u62e90\u4e2a\u5b58\u6863"

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$QuitReceive;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->C:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-void
.end method
