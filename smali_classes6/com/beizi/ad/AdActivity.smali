.class public Lcom/beizi/ad/AdActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/ad/AdActivity$a;
    }
.end annotation


# static fields
.field public static a:Z

.field static b:Ljava/lang/Class;


# instance fields
.field private c:Lcom/beizi/ad/AdActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/beizi/ad/AdActivity;

    .line 2
    .line 3
    sput-object v0, Lcom/beizi/ad/AdActivity;->b:Ljava/lang/Class;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/AdActivity;->c:Lcom/beizi/ad/AdActivity$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/beizi/ad/AdActivity$a;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "ACTIVITY_TYPE"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "ACTIVITY_CAN_JUMP"

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "ACTIVITY_CAN_DOWNLOAD"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "deeplinkUrl"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "webDeepLink"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const-string v0, "BROWSER"

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    new-instance p1, Lcom/beizi/ad/internal/activity/a;

    .line 74
    .line 75
    move-object v3, p1

    .line 76
    move-object v4, p0

    .line 77
    invoke-direct/range {v3 .. v8}, Lcom/beizi/ad/internal/activity/a;-><init>(Landroid/app/Activity;ZZLjava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lcom/beizi/ad/AdActivity;->c:Lcom/beizi/ad/AdActivity$a;

    .line 81
    .line 82
    invoke-interface {p1}, Lcom/beizi/ad/AdActivity$a;->a()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const-string v0, "DOWNLOADBROWSER"

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    new-instance p1, Lcom/beizi/ad/internal/activity/a;

    .line 95
    .line 96
    move-object v3, p1

    .line 97
    move-object v4, p0

    .line 98
    invoke-direct/range {v3 .. v8}, Lcom/beizi/ad/internal/activity/a;-><init>(Landroid/app/Activity;ZZLjava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lcom/beizi/ad/AdActivity;->c:Lcom/beizi/ad/AdActivity$a;

    .line 102
    .line 103
    invoke-interface {p1}, Lcom/beizi/ad/AdActivity$a;->a()V

    .line 104
    .line 105
    .line 106
    new-instance p1, Ljava/lang/Thread;

    .line 107
    .line 108
    new-instance v0, Lcom/beizi/ad/AdActivity$1;

    .line 109
    .line 110
    invoke-direct {v0, p0}, Lcom/beizi/ad/AdActivity$1;-><init>(Lcom/beizi/ad/AdActivity;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 117
    .line 118
    .line 119
    :cond_2
    :goto_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 120
    .line 121
    .line 122
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_3

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->startSync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    .line 131
    :catch_0
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/AdActivity;->c:Lcom/beizi/ad/AdActivity$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/beizi/ad/AdActivity$a;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/AdActivity;->c:Lcom/beizi/ad/AdActivity$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/beizi/ad/AdActivity$a;->d()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/beizi/ad/internal/e/u;->c(Landroid/webkit/WebView;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/AdActivity;->c:Lcom/beizi/ad/AdActivity$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/beizi/ad/AdActivity$a;->d()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/beizi/ad/internal/e/u;->b(Landroid/webkit/WebView;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
