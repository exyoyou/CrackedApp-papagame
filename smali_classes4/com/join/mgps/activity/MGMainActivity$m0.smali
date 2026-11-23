.class Lcom/join/mgps/activity/MGMainActivity$m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MGMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$m0;->b:Lcom/join/mgps/activity/MGMainActivity;

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
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/MApplication;->r1:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$m0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->access$2800(Lcom/join/mgps/activity/MGMainActivity;Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$m0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainActivity;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Lcom/join/mgps/activity/MGMainActivity;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$m0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainActivity;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->preloginRunnable:Lcom/join/mgps/activity/MGMainActivity$u0;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method
