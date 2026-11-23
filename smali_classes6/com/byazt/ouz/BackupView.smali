.class public abstract Lcom/byazt/ouz/BackupView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xv/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x85c
    }
.end annotation


# instance fields
.field public a:I

.field public c:Landroid/content/Context;

.field public da:Z

.field public i:Z

.field public n:Ljava/lang/String;

.field public sl:Ljava/lang/String;

.field public sp:I

.field public t:Lcom/byazt/ua/c;

.field public tt:Lcom/byazt/ete/ic;

.field public u:Lcom/byazt/un/NativeVideoTsView;

.field public uj:Landroid/app/Dialog;

.field public ve:Lcom/byazt/dyf/tt;

.field public x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "embeded_ad"

    .line 5
    .line 6
    iput-object p1, p0, Lcom/byazt/ouz/BackupView;->n:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/byazt/ouz/BackupView;->i:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/byazt/ouz/BackupView;->da:Z

    .line 12
    .line 13
    new-instance p1, Lcom/byazt/ua/c;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/byazt/ua/c;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/byazt/ouz/BackupView;->t:Lcom/byazt/ua/c;

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/byazt/ouz/BackupView;->tt()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->n:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "splash_ad"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->n:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "cache_splash_ad"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    return v0
.end method

.method private tt()V
    .locals 1

    const-string v0, "tt_express_backup_fl_tag_26"

    .line 1
    invoke-virtual {p0, v0}, Lcom/byazt/ouz/BackupView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private uj()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->w()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v2, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    invoke-virtual {v0}, Lcom/byazt/jzl/uj;->getVideo_url()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    return v1

    .line 35
    :cond_3
    return v2
.end method

.method private ve()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/ouz/BackupView;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/ouz/BackupView;->uj()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    return v0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    return v0
.end method


# virtual methods
.method public b_(I)V
    .locals 0

    return-void
.end method

.method public c(Lcom/byazt/ouz/NativeExpressView;)Landroid/view/View;
    .locals 8

    .line 16
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->u:Lcom/byazt/un/NativeVideoTsView;

    if-eqz v0, :cond_0

    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/byazt/ouz/BackupView;->ve()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    :try_start_0
    iget-object v3, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    iget-object v5, p0, Lcom/byazt/ouz/BackupView;->n:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/byazt/ouz/BackupView;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)Lcom/byazt/un/NativeVideoTsView;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ouz/BackupView;->u:Lcom/byazt/un/NativeVideoTsView;

    .line 20
    new-instance v2, Lcom/byazt/ouz/BackupView$2;

    invoke-direct {v2, p0, p1}, Lcom/byazt/ouz/BackupView$2;-><init>(Lcom/byazt/ouz/BackupView;Lcom/byazt/ouz/NativeExpressView;)V

    invoke-virtual {v0, v2}, Lcom/byazt/un/NativeVideoTsView;->setAdCreativeClickListener(Lcom/byazt/un/NativeVideoTsView$c;)V

    .line 21
    iget-object p1, p0, Lcom/byazt/ouz/BackupView;->u:Lcom/byazt/un/NativeVideoTsView;

    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->sl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/byazt/un/NativeVideoTsView;->setVideoCacheUrl(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/byazt/ouz/BackupView;->u:Lcom/byazt/un/NativeVideoTsView;

    new-instance v0, Lcom/byazt/ouz/BackupView$3;

    invoke-direct {v0, p0}, Lcom/byazt/ouz/BackupView$3;-><init>(Lcom/byazt/ouz/BackupView;)V

    invoke-virtual {p1, v0}, Lcom/byazt/un/NativeVideoTsView;->setControllerStatusCallBack(Lcom/byazt/un/NativeVideoTsView$uj;)V

    .line 23
    iget-object p1, p0, Lcom/byazt/ouz/BackupView;->u:Lcom/byazt/un/NativeVideoTsView;

    iget-boolean v0, p0, Lcom/byazt/ouz/BackupView;->i:Z

    invoke-virtual {p1, v0}, Lcom/byazt/un/NativeVideoTsView;->setIsAutoPlay(Z)V

    .line 24
    iget-object p1, p0, Lcom/byazt/ouz/BackupView;->u:Lcom/byazt/un/NativeVideoTsView;

    iget-boolean v0, p0, Lcom/byazt/ouz/BackupView;->da:Z

    invoke-virtual {p1, v0}, Lcom/byazt/un/NativeVideoTsView;->setIsQuiet(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 25
    :catchall_0
    iput-object v1, p0, Lcom/byazt/ouz/BackupView;->u:Lcom/byazt/un/NativeVideoTsView;

    .line 26
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/byazt/ouz/BackupView;->ve()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/byazt/ouz/BackupView;->u:Lcom/byazt/un/NativeVideoTsView;

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v3, v4, v0, v2}, Lcom/byazt/un/NativeVideoTsView;->c(JZZ)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 27
    :cond_3
    iget-object p1, p0, Lcom/byazt/ouz/BackupView;->u:Lcom/byazt/un/NativeVideoTsView;

    return-object p1

    :cond_4
    :goto_1
    return-object v1
.end method

.method public c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)Lcom/byazt/un/NativeVideoTsView;
    .locals 7

    .line 28
    new-instance v6, Lcom/byazt/un/NativeVideoTsView;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/byazt/un/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V

    return-object v6
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->uj:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->ve:Lcom/byazt/dyf/tt;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/byazt/dyf/tt;->showDislikeDialog()V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->vp()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/byazt/ouz/BackupView;->i:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/byazt/ouz/BackupView;->c(Landroid/view/View;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public abstract c(Landroid/view/View;ILcom/byazt/ete/gr;)V
.end method

.method public c(Landroid/view/View;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    new-instance v0, Lcom/byazt/hkv/c;

    iget-object v1, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    iget-object v3, p0, Lcom/byazt/ouz/BackupView;->n:Ljava/lang/String;

    .line 7
    invoke-static {v3}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/hkv/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/byazt/hkv/tt;

    iget-object v1, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    iget-object v3, p0, Lcom/byazt/ouz/BackupView;->n:Ljava/lang/String;

    .line 9
    invoke-static {v3}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/hkv/tt;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 10
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance p1, Lcom/byazt/ouz/BackupView$1;

    invoke-direct {p1, p0, v0}, Lcom/byazt/ouz/BackupView$1;-><init>(Lcom/byazt/ouz/BackupView;Lcom/byazt/hkv/tt;)V

    .line 13
    const-class v1, Lcom/byazt/wdw/c;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/wdw/c;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0, p1}, Lcom/byazt/wdw/c;->c(Lcom/byazt/ouz/ve;)V

    if-eqz p2, :cond_2

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 15
    :goto_1
    invoke-virtual {v0, p1}, Lcom/byazt/wdw/c;->c(I)V

    :cond_3
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

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
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->op()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->op()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_1
    const-string v0, ""

    .line 40
    .line 41
    return-object v0
.end method

.method public getMeta()Lcom/byazt/ete/ic;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNameOrSource()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->an()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->an()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :cond_2
    return-object v1
.end method

.method public getRealHeight()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/ouz/BackupView;->sp:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    return v0
.end method

.method public getRealWidth()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/ouz/BackupView;->a:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    const-string v0, "tt_express_backup_fl_tag_26"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->an()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->an()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :cond_2
    const-string v0, ""

    .line 75
    .line 76
    return-object v0
.end method

.method public getVideoModel()Lcom/byazt/ua/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->t:Lcom/byazt/ua/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDislikeInner(Lcom/byazt/nc/sp;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/byazt/dyf/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/byazt/dyf/tt;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/ouz/BackupView;->ve:Lcom/byazt/dyf/tt;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setDislikeOuter(Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/BackupView;->uj:Landroid/app/Dialog;

    .line 2
    .line 3
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 1
    const-string p1, "tt_express_backup_fl_tag_26"

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setThemeChangeReceiver(Lcom/byazt/xv/ThemeStatusBroadcastReceiver;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Lcom/byazt/xv/ThemeStatusBroadcastReceiver;->c(Lcom/byazt/xv/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public tt(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->ab()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/byazt/ouz/BackupView;->da:Z

    .line 3
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/ogz/sl;->a(I)I

    move-result p1

    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/byazt/ouz/BackupView;->i:Z

    return-void

    :cond_1
    if-ne v2, p1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    const/4 v0, 0x2

    if-ne v0, p1, :cond_4

    .line 6
    iget-object p1, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/byazt/nr/rh;->n(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/byazt/nr/rh;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7
    :cond_3
    iput-boolean v2, p0, Lcom/byazt/ouz/BackupView;->i:Z

    return-void

    :cond_4
    const/4 v0, 0x5

    if-ne v0, p1, :cond_6

    .line 8
    iget-object p1, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/byazt/nr/rh;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    :cond_5
    iput-boolean v2, p0, Lcom/byazt/ouz/BackupView;->i:Z

    :cond_6
    return-void
.end method
