.class Lcom/join/android/app/component/video/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/video/StandardVideoView$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/c;->D(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/android/app/component/video/c;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$playTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/c$c;->c:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/android/app/component/video/c$c;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/android/app/component/video/c$c;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "standardVideoView"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/video/c$c;->c:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->z()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/android/app/component/video/c$l;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/join/android/app/component/video/c$l;->d:Lcom/join/mgps/Util/IntentDateBean;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isInPlayingState()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/android/app/component/video/c$c;->a:Landroid/content/Context;

    .line 31
    .line 32
    check-cast v1, Lcom/BaseAppCompatActivity;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/android/app/component/video/j;->f(Lcom/join/android/app/component/video/StandardVideoView;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/join/android/app/component/video/c$c;->c:Lcom/join/android/app/component/video/c;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    iput-boolean v3, v2, Lcom/join/android/app/component/video/c;->e:Z

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v2, p1}, Lcom/papa/gsyvideoplayer/video/base/a;->z(Lv7/a;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-static {v1, p1, v2, v3, v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->startTActivity(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;ZLcom/join/mgps/dto/ExtBean;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v1, p0, Lcom/join/android/app/component/video/c$c;->a:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/component/video/c$c;->a:Landroid/content/Context;

    .line 72
    .line 73
    instance-of p1, p1, Lcom/join/mgps/activity/MGMainActivity;

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    const-string p1, "PapaMainAdapter"

    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/android/app/component/video/c$c;->b:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/android/app/component/video/c$c;->c:Lcom/join/android/app/component/video/c;

    .line 88
    .line 89
    iget-object v0, p1, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/join/android/app/component/video/c;->z()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lcom/join/android/app/component/video/c$l;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c$l;->f()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {p1, v0}, Lcom/join/android/app/component/video/c;->a(Lcom/join/android/app/component/video/c;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    :cond_2
    :goto_1
    return-void
.end method
