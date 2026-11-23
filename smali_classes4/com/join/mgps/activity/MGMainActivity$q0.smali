.class Lcom/join/mgps/activity/MGMainActivity$q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->handleShortCutGameIntent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$gameId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$q0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/MGMainActivity$q0;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/MGMainActivity$q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainActivity$q0;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$q0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->access$702(Lcom/join/mgps/activity/MGMainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$q0;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$q0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, ""

    .line 20
    .line 21
    invoke-static {v1, v0, v2}, Lcom/join/mgps/Util/UtilsMy;->p4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroid/os/Handler;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/join/mgps/activity/g7;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/g7;-><init>(Lcom/join/mgps/activity/MGMainActivity$q0;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v2, 0x5dc

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$q0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-static {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->access$502(Lcom/join/mgps/activity/MGMainActivity;Z)Z

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$q0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    invoke-static {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->access$602(Lcom/join/mgps/activity/MGMainActivity;I)I

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$q0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$600(Lcom/join/mgps/activity/MGMainActivity;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$q0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 62
    .line 63
    const-string v1, "\u6e38\u620f\u4e0d\u5b58\u5728\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d\u3002"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->showToast(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method
