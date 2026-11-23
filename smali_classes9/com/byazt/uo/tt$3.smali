.class public Lcom/byazt/uo/tt$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xl/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x5e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uo/tt;->ve(Lcom/byazt/gat/uj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/uo/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/uo/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/tt$3;->c:Lcom/byazt/uo/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 1
    :try_start_0
    new-instance p2, Lcom/byazt/ouz/SplashExpressBackupView;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/uo/tt$3;->c:Lcom/byazt/uo/tt;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/uo/tt;->uj(Lcom/byazt/uo/tt;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p2, v0}, Lcom/byazt/ouz/SplashExpressBackupView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/uo/tt$3;->c:Lcom/byazt/uo/tt;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/byazt/uo/c;->md:Lcom/byazt/uph/tt;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 17
    .line 18
    check-cast p1, Lcom/byazt/ouz/NativeExpressView;

    .line 19
    .line 20
    invoke-virtual {p2, v1, v0, p1}, Lcom/byazt/ouz/SplashExpressBackupView;->c(Lcom/byazt/uph/tt;Lcom/byazt/ete/ic;Lcom/byazt/ouz/NativeExpressView;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/byazt/ouz/SplashExpressBackupView;->getVideoController()Lcom/byazt/dh/ve;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    instance-of p1, p1, Lcom/byazt/un/uj;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/byazt/uo/tt$3;->c:Lcom/byazt/uo/tt;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/byazt/ouz/SplashExpressBackupView;->getVideoController()Lcom/byazt/dh/ve;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/byazt/un/uj;

    .line 38
    .line 39
    iput-object v0, p1, Lcom/byazt/uo/c;->eo:Lcom/byazt/un/uj;

    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/byazt/uo/tt$3;->c:Lcom/byazt/uo/tt;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lcom/byazt/ouz/SplashExpressBackupView;->setVideoAdListener(Lcom/byazt/dh/ve$ve;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/byazt/uo/tt$3;->c:Lcom/byazt/uo/tt;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/byazt/uo/c;->ve()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/byazt/uo/tt$3;->c:Lcom/byazt/uo/tt;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/byazt/cc/TsView;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :cond_1
    const/4 p1, 0x1

    .line 61
    return p1

    .line 62
    :catch_0
    const/4 p1, 0x0

    .line 63
    return p1
.end method
