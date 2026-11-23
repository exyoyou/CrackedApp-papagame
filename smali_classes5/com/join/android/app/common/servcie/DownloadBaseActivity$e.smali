.class Lcom/join/android/app/common/servcie/DownloadBaseActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/servcie/DownloadBaseActivity;->retryOnSomeTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/common/servcie/DownloadBaseActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V
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
    iput-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$e;->b:Lcom/join/android/app/common/servcie/DownloadBaseActivity;

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
    invoke-static {}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->access$200()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lcom/join/android/app/common/utils/m;->l()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$e;->b:Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->access$400(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)Landroid/os/Handler;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$e;->b:Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->access$400(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)Landroid/os/Handler;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 43
    .line 44
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method
