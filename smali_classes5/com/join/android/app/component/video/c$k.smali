.class Lcom/join/android/app/component/video/c$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/video/StandardVideoView$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/c;->p(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/video/c;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/c;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/video/c$k;->a:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onCoverShowChange "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, "  "

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/join/android/app/component/video/c$k;->a:Lcom/join/android/app/component/video/c;

    .line 20
    .line 21
    iget-object v3, v3, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v3, "MyListViewVideoHelper"

    .line 35
    .line 36
    invoke-static {v3, v0}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/android/app/component/video/c$k;->a:Lcom/join/android/app/component/video/c;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v4, 0x2

    .line 50
    if-eq v0, v4, :cond_0

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/android/app/component/video/c$k;->a:Lcom/join/android/app/component/video/c;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {v3, p1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/android/app/component/video/c$k;->a:Lcom/join/android/app/component/video/c;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/join/android/app/component/video/c$k;->a:Lcom/join/android/app/component/video/c;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/c$k;->a:Lcom/join/android/app/component/video/c;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/component/video/c$k;->a:Lcom/join/android/app/component/video/c;

    .line 120
    .line 121
    iget-object v0, p1, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 122
    .line 123
    invoke-static {p1, v0}, Lcom/join/android/app/component/video/c;->c(Lcom/join/android/app/component/video/c;Landroid/view/View;)V

    .line 124
    .line 125
    .line 126
    :goto_0
    return-void
.end method
