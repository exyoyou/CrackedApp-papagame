.class Lcom/kongzue/dialogx/interfaces/r$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/interfaces/r;-><init>(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/kongzue/dialogx/interfaces/r;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/interfaces/r;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/r$a;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    iput p2, p0, Lcom/kongzue/dialogx/interfaces/r$a;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/r$a;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/r$a;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 8
    .line 9
    invoke-static {}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->X()Landroid/app/Activity;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget v3, p0, Lcom/kongzue/dialogx/interfaces/r$a;->b:I

    .line 18
    .line 19
    new-instance v4, Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    invoke-static {}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->X()Landroid/app/Activity;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iput-object v2, v1, Lcom/kongzue/dialogx/interfaces/r;->customView:Landroid/view/View;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/r$a;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/kongzue/dialogx/interfaces/r;->access$000(Lcom/kongzue/dialogx/interfaces/r;)Ljava/lang/Runnable;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/r$a;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/kongzue/dialogx/interfaces/r;->access$000(Lcom/kongzue/dialogx/interfaces/r;)Ljava/lang/Runnable;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/r$a;->c:Lcom/kongzue/dialogx/interfaces/r;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-static {v1, v2}, Lcom/kongzue/dialogx/interfaces/r;->access$002(Lcom/kongzue/dialogx/interfaces/r;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 56
    .line 57
    .line 58
    :cond_0
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw v1
.end method
