.class Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$a;->b:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

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
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$a;->b:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->access$100(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$a;->b:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->access$000(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->e(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$a;->b:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->access$200(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$a;->b:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->access$000(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$a;->b:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 39
    .line 40
    iget-object v1, v0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->rvCheck:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->access$000(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$a;->b:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->progress:Landroid/widget/ProgressBar;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->access$000(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$a;->b:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->access$008(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)I

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$a;->b:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->access$000(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget-object v1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$a;->b:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->access$100(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-ge v0, v1, :cond_0

    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$a;->b:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->handler:Landroid/os/Handler;

    .line 86
    .line 87
    const-wide/16 v1, 0x15e

    .line 88
    .line 89
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$a;->b:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->access$300(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$a;->b:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->access$300(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void
.end method
