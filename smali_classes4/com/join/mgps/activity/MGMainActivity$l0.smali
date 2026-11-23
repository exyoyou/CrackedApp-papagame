.class Lcom/join/mgps/activity/MGMainActivity$l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/activity/MGMainActivity$u0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MGMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private b:Z

.field final synthetic c:Lcom/join/mgps/activity/MGMainActivity;


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
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$l0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/MGMainActivity$l0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/MGMainActivity$l0;->b:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$l0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$2410(Lcom/join/mgps/activity/MGMainActivity;)I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$l0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$l0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/join/mgps/activity/MGMainActivity;->access$2500(Lcom/join/mgps/activity/MGMainActivity;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    sub-long/2addr v0, v2

    .line 30
    const-wide/16 v2, 0x5dc

    .line 31
    .line 32
    cmp-long v4, v0, v2

    .line 33
    .line 34
    if-gez v4, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$l0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/join/mgps/activity/MGMainActivity;->access$2600(Lcom/join/mgps/activity/MGMainActivity;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    sub-long/2addr v0, v2

    .line 48
    const-wide/32 v2, 0xea60

    .line 49
    .line 50
    .line 51
    cmp-long v4, v0, v2

    .line 52
    .line 53
    if-gez v4, :cond_2

    .line 54
    .line 55
    sget-boolean v0, Lcom/MApplication;->r1:Z

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$l0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$l0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 82
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v1

    .line 87
    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/MGMainActivity;->access$2502(Lcom/join/mgps/activity/MGMainActivity;J)J

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lcom/MApplication;->s()Lcom/netease/nis/quicklogin/QuickLogin;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v1, Lcom/join/mgps/activity/MGMainActivity$l0$a;

    .line 95
    .line 96
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGMainActivity$l0$a;-><init>(Lcom/join/mgps/activity/MGMainActivity$l0;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchMobileNumber(Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$l0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 103
    .line 104
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainActivity;->mHandler:Landroid/os/Handler;

    .line 105
    .line 106
    if-nez v1, :cond_4

    .line 107
    .line 108
    new-instance v1, Landroid/os/Handler;

    .line 109
    .line 110
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v1, v0, Lcom/join/mgps/activity/MGMainActivity;->mHandler:Landroid/os/Handler;

    .line 114
    .line 115
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$l0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 116
    .line 117
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainActivity;->mHandler:Landroid/os/Handler;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->rePreloginRunnable:Ljava/lang/Runnable;

    .line 120
    .line 121
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$l0;->c:Lcom/join/mgps/activity/MGMainActivity;

    .line 125
    .line 126
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainActivity;->mHandler:Landroid/os/Handler;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->rePreloginRunnable:Ljava/lang/Runnable;

    .line 129
    .line 130
    const-wide/32 v2, 0x83d60

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public u(Z)Lcom/join/mgps/activity/MGMainActivity$u0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goToLogin"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/MGMainActivity$l0;->b:Z

    .line 2
    .line 3
    return-object p0
.end method
