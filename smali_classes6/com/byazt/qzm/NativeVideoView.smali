.class public Lcom/byazt/qzm/NativeVideoView;
.super Lcom/byazt/un/NativeVideoTsView;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dh/ve$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b6,
        0x39f
    }
.end annotation


# instance fields
.field public c:I

.field public qy:Z

.field public rl:Lcom/byazt/sa/uj;

.field public tt:Lcom/byazt/qzm/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/un/NativeVideoTsView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/byazt/dh/ve;->c(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcom/byazt/un/NativeVideoTsView;->setNeedNativeVideoPlayBtnVisible(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/byazt/un/NativeVideoTsView;->setEnableBlur(Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public H_()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/un/NativeVideoTsView;->H_()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public I_()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/byazt/un/NativeVideoTsView;->I_()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public S_()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/qzm/NativeVideoView;->tt:Lcom/byazt/qzm/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/un/uj;->x()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;ZZZ)Lcom/byazt/dh/ve;
    .locals 9

    .line 1
    new-instance v8, Lcom/byazt/qzm/c;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/byazt/qzm/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;ZZZ)V

    move-object v0, p0

    iput-object v8, v0, Lcom/byazt/qzm/NativeVideoView;->tt:Lcom/byazt/qzm/c;

    return-object v8
.end method

.method public c(Lcom/byazt/sa/uj;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/byazt/qzm/NativeVideoView;->rl:Lcom/byazt/sa/uj;

    return-void
.end method

.method public c(ZZ)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->t()V

    .line 3
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->u:Landroid/widget/ImageView;

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-static {v0, p1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 5
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->sl:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-static {p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    return-void
.end method

.method public c(JZZ)Z
    .locals 7

    .line 6
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Lcom/byazt/un/uj;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->sp:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    iget-object v4, p0, Lcom/byazt/un/NativeVideoTsView;->z:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/byazt/un/uj;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V

    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->u()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->i:Z

    if-eqz p1, :cond_2

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->ve:Landroid/content/Context;

    iget-object p3, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-static {p3}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x19

    invoke-virtual {p0, p1, p4, p3}, Lcom/byazt/un/NativeVideoTsView;->c(Landroid/content/Context;ILjava/lang/String;)V

    :cond_2
    return p2
.end method

.method public n()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/un/NativeVideoTsView;->n()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qzm/NativeVideoView;->rl:Lcom/byazt/sa/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/byazt/sa/uj;->c(II)[I

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x0

    .line 10
    aget p2, p1, p2

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    aget p1, p1, v0

    .line 14
    .line 15
    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/un/NativeVideoTsView;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/byazt/qzm/NativeVideoView;->qy:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/16 v0, 0x8

    .line 10
    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/byazt/qzm/NativeVideoView;->n()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public setExtraMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/dh/ve;->tt(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setIsAutoPlay(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/un/NativeVideoTsView;->setIsAutoPlay(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setLp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/qzm/NativeVideoView;->qy:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPlayerType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/qzm/NativeVideoView;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public tt(JI)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/un/NativeVideoTsView;->tt(JI)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-static {p1, p2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public uj()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/byazt/qzm/NativeVideoView;->H_()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    instance-of v0, v0, Lcom/byazt/un/uj;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->nu()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 20
    .line 21
    check-cast v0, Lcom/byazt/un/uj;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/byazt/un/uj;->sv()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 27
    .line 28
    if-eqz v0, :cond_6

    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_6

    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->sp()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->z()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const-string v2, "NativeVideoAdView"

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 56
    .line 57
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->t:Landroid/widget/ImageView;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    const/16 v3, 0x8

    .line 65
    .line 66
    invoke-static {v0, v3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    const/4 v0, 0x4

    .line 78
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 79
    .line 80
    invoke-static {v0, v2}, Lcom/byazt/ete/xd;->c(ILcom/byazt/ete/ic;)Lcom/byazt/jzl/a;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setCid(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    .line 94
    .line 95
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setWidth(I)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setHeight(I)V

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setLogExtra(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 121
    .line 122
    iget v3, p0, Lcom/byazt/qzm/NativeVideoView;->c:I

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Lcom/byazt/ete/ic;->q(I)V

    .line 125
    .line 126
    .line 127
    iget v2, p0, Lcom/byazt/qzm/NativeVideoView;->c:I

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setPlayerType(I)V

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 133
    .line 134
    invoke-static {v2}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setAudio(Z)V

    .line 139
    .line 140
    .line 141
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 142
    .line 143
    invoke-interface {v2}, Lcom/byazt/dh/ve;->sl()J

    .line 144
    .line 145
    .line 146
    move-result-wide v2

    .line 147
    invoke-virtual {v0, v2, v3}, Lcom/byazt/jzl/a;->setCurrent(J)V

    .line 148
    .line 149
    .line 150
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 151
    .line 152
    invoke-interface {v2}, Lcom/byazt/dh/ve;->my()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setQuiet(Z)V

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 160
    .line 161
    check-cast v2, Lcom/byazt/un/uj;

    .line 162
    .line 163
    iget v3, p0, Lcom/byazt/qzm/NativeVideoView;->c:I

    .line 164
    .line 165
    invoke-virtual {v2, v3}, Lcom/byazt/un/uj;->uj(I)V

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 169
    .line 170
    check-cast v2, Lcom/byazt/un/uj;

    .line 171
    .line 172
    iget-object v3, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 173
    .line 174
    invoke-virtual {v2, v3}, Lcom/byazt/un/uj;->tt(Lcom/byazt/ete/ic;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v0}, Lcom/byazt/un/NativeVideoTsView;->c(Lcom/byazt/jzl/a;)Z

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 181
    .line 182
    invoke-interface {v0, v1}, Lcom/byazt/dh/ve;->ve(Z)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_3
    const-string v0, "attachTask materialMeta.getVideo() is null !!"

    .line 187
    .line 188
    invoke-static {v2, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 193
    .line 194
    invoke-interface {v0}, Lcom/byazt/dh/ve;->gt()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_5

    .line 199
    .line 200
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 201
    .line 202
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_5
    const-string v0, "attachTask.......mRlImgCover.....VISIBLE"

    .line 207
    .line 208
    invoke-static {v2, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->t()V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 215
    .line 216
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 217
    .line 218
    .line 219
    :cond_6
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qzm/NativeVideoView;->tt:Lcom/byazt/qzm/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/un/uj;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
