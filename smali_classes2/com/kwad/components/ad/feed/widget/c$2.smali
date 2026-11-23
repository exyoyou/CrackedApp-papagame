.class final Lcom/kwad/components/ad/feed/widget/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/video/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/feed/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic it:Lcom/kwad/components/ad/feed/widget/c;


# direct methods
.method constructor <init>(Lcom/kwad/components/ad/feed/widget/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final as()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/c;->i(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/sdk/core/video/videoview/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/c;->g(Lcom/kwad/components/ad/feed/widget/c;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v1, v2}, Lcom/kwad/components/ad/feed/widget/c;->a(Lcom/kwad/components/ad/feed/widget/c;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/videoview/a;->setVideoSoundEnable(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final at()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/kwad/components/ad/feed/a/b;->cl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/c;->j(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/ad/feed/widget/d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 16
    .line 17
    new-instance v1, Lcom/kwad/components/ad/feed/widget/d;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Lcom/kwad/components/ad/feed/widget/d;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/kwad/components/ad/feed/widget/c;->a(Lcom/kwad/components/ad/feed/widget/c;Lcom/kwad/components/ad/feed/widget/d;)Lcom/kwad/components/ad/feed/widget/d;

    .line 29
    .line 30
    .line 31
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/c;->j(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/ad/feed/widget/d;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/c;->j(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/ad/feed/widget/d;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/kwad/components/ad/feed/widget/d;->cE()V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/c;->n(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/core/video/e;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v0, v0, Lcom/kwad/components/core/video/a;->amo:Landroid/view/ViewGroup;

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/kwad/components/ad/feed/widget/c;->cC()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/c;->n(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/core/video/e;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v0, v0, Lcom/kwad/components/core/video/a;->amo:Landroid/view/ViewGroup;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/view/ViewGroup;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 88
    .line 89
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/c;->n(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/core/video/e;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v1, v1, Lcom/kwad/components/core/video/a;->amo:Landroid/view/ViewGroup;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 99
    .line 100
    iget-object v1, v0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/c;->n(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/core/video/e;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v0, v0, Lcom/kwad/components/core/video/a;->amo:Landroid/view/ViewGroup;

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/c;->o(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/kwad/sdk/core/adlog/c;->cu(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final d(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/kwad/components/ad/feed/widget/c;->a(Lcom/kwad/components/ad/feed/widget/c;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onVideoPlayError(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/c;->p(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/c;->q(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/sdk/core/response/model/AdInfo;

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
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 44
    .line 45
    iget-wide v6, v0, Lcom/kwad/components/ad/feed/widget/a;->hP:J

    .line 46
    .line 47
    sub-long v6, p1, v6

    .line 48
    .line 49
    invoke-static/range {v1 .. v7}, Lcom/kwad/components/ad/feed/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IILjava/lang/String;Ljava/lang/String;J)V

    .line 50
    .line 51
    .line 52
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
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/c;->f(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/core/l/a$b;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/l/a;->a(Lcom/kwad/components/core/l/a$b;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/c;->j(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/ad/feed/widget/d;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/c;->j(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/ad/feed/widget/d;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/c;->j(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/ad/feed/widget/d;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/view/ViewGroup;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/c;->j(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/ad/feed/widget/d;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/c;->j(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/components/ad/feed/widget/d;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/kwad/components/ad/feed/widget/d;->cF()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-static {v0, v1}, Lcom/kwad/components/ad/feed/widget/c;->a(Lcom/kwad/components/ad/feed/widget/c;Lcom/kwad/components/ad/feed/widget/d;)Lcom/kwad/components/ad/feed/widget/d;

    .line 70
    .line 71
    .line 72
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/c;->k(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/4 v2, 0x1

    .line 79
    const/4 v3, 0x1

    .line 80
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/c;->l(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    const/4 v5, 0x0

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 96
    .line 97
    iget-wide v8, v0, Lcom/kwad/components/ad/feed/widget/a;->hP:J

    .line 98
    .line 99
    sub-long/2addr v6, v8

    .line 100
    invoke-static/range {v1 .. v7}, Lcom/kwad/components/ad/feed/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IILjava/lang/String;Ljava/lang/String;J)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c$2;->it:Lcom/kwad/components/ad/feed/widget/c;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/c;->m(Lcom/kwad/components/ad/feed/widget/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/kwad/sdk/core/adlog/c;->ct(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
