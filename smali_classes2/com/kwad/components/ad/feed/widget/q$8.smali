.class final Lcom/kwad/components/ad/feed/widget/q$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/video/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/feed/widget/q;->getVideoPlayCallback()Lcom/kwad/components/core/video/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private eV:Z

.field final synthetic jt:Lcom/kwad/components/ad/feed/widget/q;


# direct methods
.method constructor <init>(Lcom/kwad/components/ad/feed/widget/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/kwad/components/ad/feed/widget/q$8;->eV:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final as()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->eV:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->eV:Z

    .line 7
    .line 8
    invoke-static {}, Lcom/kwad/components/core/p/a;->vL()Lcom/kwad/components/core/p/a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/kwad/components/ad/feed/widget/q;->aE(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/kwad/components/core/p/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JI)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->a(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/video/videoview/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/q;->p(Lcom/kwad/components/ad/feed/widget/q;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {v1, v2}, Lcom/kwad/components/ad/feed/widget/q;->c(Lcom/kwad/components/ad/feed/widget/q;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/videoview/a;->setVideoSoundEnable(Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final at()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->aF(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/kwad/sdk/core/adlog/c;->cu(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->d(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/core/webview/jshandler/be;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/16 v1, 0x9

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/jshandler/be;->cf(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->i(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/kwad/components/ad/feed/a/b;->cl()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->aw(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/ad/feed/widget/d;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->az(Lcom/kwad/components/ad/feed/widget/q;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 55
    .line 56
    new-instance v1, Lcom/kwad/components/ad/feed/widget/d;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 59
    .line 60
    invoke-static {v2}, Lcom/kwad/components/ad/feed/widget/q;->aG(Lcom/kwad/components/ad/feed/widget/q;)Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v1, v2}, Lcom/kwad/components/ad/feed/widget/d;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/kwad/components/ad/feed/widget/q;->a(Lcom/kwad/components/ad/feed/widget/q;Lcom/kwad/components/ad/feed/widget/d;)Lcom/kwad/components/ad/feed/widget/d;

    .line 68
    .line 69
    .line 70
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 71
    .line 72
    const/4 v1, -0x1

    .line 73
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/q;->aw(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/ad/feed/widget/d;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->aw(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/ad/feed/widget/d;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/kwad/components/ad/feed/widget/d;->cE()V

    .line 92
    .line 93
    .line 94
    :cond_0
    return-void
.end method

.method public final d(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/kwad/components/ad/feed/widget/q;->a(Lcom/kwad/components/ad/feed/widget/q;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onVideoPlayError(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->aH(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->aI(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, " "

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->au(Lcom/kwad/components/ad/feed/widget/q;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v6

    .line 49
    sub-long v6, p1, v6

    .line 50
    .line 51
    invoke-static/range {v1 .. v7}, Lcom/kwad/components/ad/feed/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IILjava/lang/String;Ljava/lang/String;J)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onVideoPlayStart()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/kwad/components/core/l/a;->tm()Lcom/kwad/components/core/l/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/q;->al(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/core/l/a$b;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/l/a;->a(Lcom/kwad/components/core/l/a$b;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->as(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x1

    .line 22
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->at(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->au(Lcom/kwad/components/ad/feed/widget/q;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v8

    .line 43
    sub-long/2addr v6, v8

    .line 44
    invoke-static/range {v1 .. v7}, Lcom/kwad/components/ad/feed/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IILjava/lang/String;Ljava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->av(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/kwad/sdk/core/adlog/c;->ct(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->d(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/core/webview/jshandler/be;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v1, 0x3

    .line 63
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/jshandler/be;->cf(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->aw(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/ad/feed/widget/d;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->aw(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/ad/feed/widget/d;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 85
    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->aw(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/ad/feed/widget/d;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroid/view/ViewGroup;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 101
    .line 102
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/q;->aw(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/ad/feed/widget/d;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->aw(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/ad/feed/widget/d;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/kwad/components/ad/feed/widget/d;->cF()V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 119
    .line 120
    const/4 v1, 0x0

    .line 121
    invoke-static {v0, v1}, Lcom/kwad/components/ad/feed/widget/q;->a(Lcom/kwad/components/ad/feed/widget/q;Lcom/kwad/components/ad/feed/widget/d;)Lcom/kwad/components/ad/feed/widget/d;

    .line 122
    .line 123
    .line 124
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->ax(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/ad/feed/widget/e;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-nez v0, :cond_1

    .line 131
    .line 132
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->ay(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->dw(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_1

    .line 143
    .line 144
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 145
    .line 146
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->az(Lcom/kwad/components/ad/feed/widget/q;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_1

    .line 151
    .line 152
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 153
    .line 154
    new-instance v1, Lcom/kwad/components/ad/feed/widget/e;

    .line 155
    .line 156
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 157
    .line 158
    invoke-static {v2}, Lcom/kwad/components/ad/feed/widget/q;->aA(Lcom/kwad/components/ad/feed/widget/q;)Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-direct {v1, v2}, Lcom/kwad/components/ad/feed/widget/e;-><init>(Landroid/content/Context;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v0, v1}, Lcom/kwad/components/ad/feed/widget/q;->a(Lcom/kwad/components/ad/feed/widget/q;Lcom/kwad/components/ad/feed/widget/e;)Lcom/kwad/components/ad/feed/widget/e;

    .line 166
    .line 167
    .line 168
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 169
    .line 170
    const/4 v1, -0x1

    .line 171
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 172
    .line 173
    .line 174
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 175
    .line 176
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/q;->i(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 181
    .line 182
    invoke-static {v2}, Lcom/kwad/components/ad/feed/widget/q;->ax(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/ad/feed/widget/e;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 190
    .line 191
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->ax(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/ad/feed/widget/e;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    new-instance v1, Lcom/kwad/components/ad/feed/widget/q$8$1;

    .line 196
    .line 197
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/feed/widget/q$8$1;-><init>(Lcom/kwad/components/ad/feed/widget/q$8;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/feed/widget/e;->setOnViewEventListener(Lcom/kwad/sdk/widget/d;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 204
    .line 205
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->ax(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/ad/feed/widget/e;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    new-instance v1, Lcom/kwad/components/ad/feed/widget/q$8$2;

    .line 210
    .line 211
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/feed/widget/q$8$2;-><init>(Lcom/kwad/components/ad/feed/widget/q$8;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/feed/widget/e;->a(Landroid/animation/AnimatorListenerAdapter;)V

    .line 215
    .line 216
    .line 217
    :cond_1
    return-void
.end method
