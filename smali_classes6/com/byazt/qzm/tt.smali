.class public Lcom/byazt/qzm/tt;
.super Lcom/byazt/xj/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b6,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/qzm/tt$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/xj/ve<",
        "Lcom/byazt/qzm/NativeVideoView;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Z

.field public cf:Z

.field public ij:Lcom/byazt/qzm/tt$c;

.field public kz:Ljava/lang/String;

.field public mq:Lcom/byazt/ete/ic;

.field public vi:Lcom/byazt/jzl/uj;

.field public vp:Ljava/lang/String;

.field public yo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/xj/ve;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/qzm/tt;->cf:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic c(Lcom/byazt/qzm/tt;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/byazt/qzm/tt;->c:Z

    return p0
.end method

.method public static synthetic n(Lcom/byazt/qzm/tt;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    return-object p0
.end method

.method private r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/qzm/tt;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/qzm/tt;->kz:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/byazt/qzm/tt;->kz:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/ic;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/byazt/qzm/tt;->mq:Lcom/byazt/ete/ic;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/byazt/qzm/tt;->kz:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/byazt/qzm/tt;->mq:Lcom/byazt/ete/ic;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Lcom/byazt/ete/ic;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/byazt/ete/ic;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/byazt/qzm/tt;->mq:Lcom/byazt/ete/ic;

    .line 44
    .line 45
    new-instance v0, Lcom/byazt/jzl/uj;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/byazt/jzl/uj;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/byazt/qzm/tt;->vi:Lcom/byazt/jzl/uj;

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-static {v0}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/byazt/qzm/tt;->vi:Lcom/byazt/jzl/uj;

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    new-instance v0, Lcom/byazt/jzl/uj;

    .line 62
    .line 63
    invoke-direct {v0}, Lcom/byazt/jzl/uj;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/byazt/qzm/tt;->vi:Lcom/byazt/jzl/uj;

    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    new-instance v0, Lcom/byazt/ete/ic;

    .line 70
    .line 71
    invoke-direct {v0}, Lcom/byazt/ete/ic;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/byazt/qzm/tt;->mq:Lcom/byazt/ete/ic;

    .line 75
    .line 76
    new-instance v0, Lcom/byazt/jzl/uj;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/byazt/jzl/uj;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/byazt/qzm/tt;->vi:Lcom/byazt/jzl/uj;

    .line 82
    .line 83
    :cond_3
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/qzm/tt;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/qzm/tt;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/qzm/tt;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/qzm/tt;->c(Lcom/byazt/ua/c;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public synthetic c()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/qzm/tt;->sp()Lcom/byazt/qzm/NativeVideoView;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/byazt/ua/c;)V
    .locals 4

    .line 3
    invoke-virtual {p0}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/qzm/tt;->mq:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->id()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "image_mode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/byazt/qzm/tt;->mq:Lcom/byazt/ete/ic;

    invoke-virtual {v1, v0}, Lcom/byazt/ete/ic;->ic(I)V

    .line 7
    iget-object v1, p0, Lcom/byazt/qzm/tt;->mq:Lcom/byazt/ete/ic;

    new-instance v2, Lcom/byazt/ete/bx;

    invoke-virtual {p0}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/byazt/ete/bx;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/bx;)V

    const/16 v1, 0xa6

    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/byazt/qzm/tt;->mq:Lcom/byazt/ete/ic;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/byazt/ete/ic;->q(I)V

    .line 9
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    invoke-virtual {v0, v1}, Lcom/byazt/qzm/NativeVideoView;->setPlayerType(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byazt/qzm/NativeVideoView;->setPlayerType(I)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    move-result-object v0

    .line 12
    iget-boolean v1, p1, Lcom/byazt/ua/c;->uj:Z

    invoke-interface {v0, v1}, Lcom/byazt/dh/ve;->uj(Z)V

    .line 13
    iget-boolean v1, p1, Lcom/byazt/ua/c;->x:Z

    invoke-interface {v0, v1}, Lcom/byazt/dh/ve;->tt(Z)V

    .line 14
    iget-boolean v1, p1, Lcom/byazt/ua/c;->c:Z

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x0

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/byazt/dh/ve;->tt(J)V

    goto :goto_1

    .line 16
    :cond_2
    iget-wide v1, p1, Lcom/byazt/ua/c;->sp:J

    invoke-interface {v0, v1, v2}, Lcom/byazt/dh/ve;->tt(J)V

    .line 17
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast p1, Lcom/byazt/qzm/NativeVideoView;

    invoke-virtual {p1}, Lcom/byazt/qzm/NativeVideoView;->uj()V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 19
    invoke-super {p0, p1, p2}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "mate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "isLp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "coverSrc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 21
    :pswitch_0
    iput-object p2, p0, Lcom/byazt/qzm/tt;->kz:Ljava/lang/String;

    return-void

    .line 22
    :pswitch_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/qzm/tt;->c:Z

    .line 23
    iget-object p2, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 24
    check-cast p2, Lcom/byazt/qzm/NativeVideoView;

    invoke-virtual {p2, p1}, Lcom/byazt/qzm/NativeVideoView;->setLp(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_1
    return-void

    .line 25
    :pswitch_2
    iput-object p2, p0, Lcom/byazt/qzm/tt;->yo:Ljava/lang/String;

    return-void

    .line 26
    :pswitch_3
    iput-object p2, p0, Lcom/byazt/qzm/tt;->vp:Ljava/lang/String;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x14f7bd53 -> :sswitch_3
        0x1bde4 -> :sswitch_2
        0x31744e -> :sswitch_1
        0x330705 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/util/Map;)V
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

    .line 27
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 28
    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    invoke-virtual {v0, p1}, Lcom/byazt/qzm/NativeVideoView;->setExtraMap(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lcom/byazt/xj/ve;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method public kk()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/qzm/NativeVideoView;->x()V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/byazt/qzm/tt;->c:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 15
    .line 16
    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/byazt/qzm/NativeVideoView;->c(ZZ)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 25
    .line 26
    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/byazt/qzm/tt;->vp:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/byazt/un/NativeVideoTsView;->c(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    invoke-virtual {v0, p1}, Lcom/byazt/un/NativeVideoTsView;->setNeedNativeVideoPlayBtnVisible(Z)V

    :cond_0
    return-void
.end method

.method public os()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 14
    .line 15
    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isCompleted()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method public oz()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/qzm/tt;->os()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->my()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/qzm/tt;->v()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/byazt/qzm/tt;->kk()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/qzm/tt;->q()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/qzm/NativeVideoView;->S_()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public sp()Lcom/byazt/qzm/NativeVideoView;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/qzm/NativeVideoView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/qzm/NativeVideoView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/byazt/qzm/NativeVideoView;->c(Lcom/byazt/sa/uj;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public tt()V
    .locals 6

    .line 2
    invoke-super {p0}, Lcom/byazt/xj/ve;->tt()V

    .line 3
    invoke-direct {p0}, Lcom/byazt/qzm/tt;->r()V

    .line 4
    iget-object v0, p0, Lcom/byazt/qzm/tt;->vi:Lcom/byazt/jzl/uj;

    iget-object v1, p0, Lcom/byazt/qzm/tt;->yo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/byazt/jzl/uj;->setVideo_url(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/byazt/qzm/tt;->vi:Lcom/byazt/jzl/uj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/byazt/xj/ve;->u:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/byazt/xj/ve;->yp:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/jzl/uj;->setResolution(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/qzm/tt;->vi:Lcom/byazt/jzl/uj;

    iget-object v1, p0, Lcom/byazt/qzm/tt;->vp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/byazt/jzl/uj;->setCover_url(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/qzm/tt;->mq:Lcom/byazt/ete/ic;

    iget-object v1, p0, Lcom/byazt/qzm/tt;->vi:Lcom/byazt/jzl/uj;

    invoke-virtual {v0, v1}, Lcom/byazt/ete/ic;->c(Lcom/byazt/jzl/uj;)V

    .line 8
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    iget-object v1, p0, Lcom/byazt/qzm/tt;->mq:Lcom/byazt/ete/ic;

    invoke-virtual {v0, v1}, Lcom/byazt/un/NativeVideoTsView;->setMaterialMeta(Lcom/byazt/ete/ic;)V

    .line 9
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/qzm/NativeVideoView;->setIsAutoPlay(Z)V

    .line 10
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    iget-boolean v2, p0, Lcom/byazt/qzm/tt;->cf:Z

    invoke-virtual {v0, v2}, Lcom/byazt/un/NativeVideoTsView;->setIsQuiet(Z)V

    .line 11
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/byazt/un/NativeVideoTsView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    invoke-virtual {v0, v2}, Lcom/byazt/un/NativeVideoTsView;->setEnableAutoCheck(Z)V

    .line 13
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    iget-object v3, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    const/16 v4, 0x19

    iget-object v5, p0, Lcom/byazt/qzm/tt;->vp:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Lcom/byazt/un/NativeVideoTsView;->c(Landroid/content/Context;ILjava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/byazt/qzm/NativeVideoView;->c(JZZ)Z

    .line 15
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    iget-object v1, p0, Lcom/byazt/qzm/tt;->vp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/byazt/un/NativeVideoTsView;->c(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    new-instance v1, Lcom/byazt/qzm/tt$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/byazt/qzm/tt$c;-><init>(Lcom/byazt/qzm/tt;Lcom/byazt/qzm/tt$1;)V

    iput-object v1, p0, Lcom/byazt/qzm/tt;->ij:Lcom/byazt/qzm/tt$c;

    .line 18
    invoke-interface {v0, v1}, Lcom/byazt/dh/ve;->c(Lcom/byazt/dh/ve$c;)V

    :cond_0
    return-void
.end method

.method public tx()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/qzm/NativeVideoView;->n()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 11
    .line 12
    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/qzm/tt;->vp:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/un/NativeVideoTsView;->c(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public uj(Z)V
    .locals 1

    .line 2
    iput-boolean p1, p0, Lcom/byazt/qzm/tt;->cf:Z

    .line 3
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/dh/ve;->tt(Z)V

    :cond_0
    return-void
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 14
    .line 15
    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPlaying()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 14
    .line 15
    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/byazt/dh/ve;->my()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/qzm/tt;->cf:Z

    .line 27
    .line 28
    return v0
.end method
