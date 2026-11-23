.class Lcom/join/mgps/activity/MGMainActivity$j;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MGMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


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
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$j;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_4

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x3

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lcom/join/mgps/dto/RecomeWifiDatabean;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$j;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/MGMainActivity;->startShowRecommendwifi(Lcom/join/mgps/dto/RecomeWifiDatabean;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lcom/join/mgps/dto/RecomeWifiDatabean;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$j;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/join/mgps/activity/MGMainActivity;->access$000(Lcom/join/mgps/activity/MGMainActivity;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$j;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->startShowRecommendwifi(Lcom/join/mgps/dto/RecomeWifiDatabean;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$j;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/join/mgps/activity/MGMainActivity;->access$100(Lcom/join/mgps/activity/MGMainActivity;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    sub-long/2addr v3, v5

    .line 52
    const-wide/16 v5, 0xbb8

    .line 53
    .line 54
    sub-long v3, v5, v3

    .line 55
    .line 56
    const-wide/16 v7, 0x0

    .line 57
    .line 58
    cmp-long v1, v3, v7

    .line 59
    .line 60
    if-lez v1, :cond_3

    .line 61
    .line 62
    cmp-long v1, v3, v5

    .line 63
    .line 64
    if-gez v1, :cond_3

    .line 65
    .line 66
    new-instance v0, Landroid/os/Message;

    .line 67
    .line 68
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 69
    .line 70
    .line 71
    iput v2, v0, Landroid/os/Message;->what:I

    .line 72
    .line 73
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    .line 75
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    .line 77
    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$j;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->startShowRecommendwifi(Lcom/join/mgps/dto/RecomeWifiDatabean;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$j;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 88
    .line 89
    invoke-static {p1, v1}, Lcom/join/mgps/activity/MGMainActivity;->access$002(Lcom/join/mgps/activity/MGMainActivity;Z)Z

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method
