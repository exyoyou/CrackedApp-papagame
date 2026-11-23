.class public Lcom/byazt/ouz/gu$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xl/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x7fd
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/gu;->c(Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:Lcom/byazt/ouz/gu;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/gu;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/gu$5;->tt:Lcom/byazt/ouz/gu;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ouz/gu$5;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 1
    :try_start_0
    move-object p2, p1

    .line 2
    check-cast p2, Lcom/byazt/ouz/NativeExpressView;

    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/byazt/ouz/NativeExpressView;->my()V

    .line 5
    .line 6
    .line 7
    new-instance p2, Lcom/byazt/ouz/u;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p2, v0}, Lcom/byazt/ouz/u;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/ouz/gu$5;->c:Lcom/byazt/ete/ic;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/byazt/ouz/gu$5;->tt:Lcom/byazt/ouz/gu;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/byazt/btt/c;->c(Ljava/lang/Integer;Lcom/byazt/nc/yp;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/byazt/ouz/gu$5;->tt:Lcom/byazt/ouz/gu;

    .line 32
    .line 33
    iget-object v1, v0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 34
    .line 35
    check-cast p1, Lcom/byazt/ouz/NativeExpressView;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/byazt/ouz/gu;->x(Lcom/byazt/ouz/gu;)Lcom/byazt/pop/ve;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p2, v1, p1, v0}, Lcom/byazt/ouz/u;->c(Lcom/byazt/ete/ic;Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/pop/ve;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/byazt/ouz/gu$5;->tt:Lcom/byazt/ouz/gu;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/byazt/ouz/gu;->da(Lcom/byazt/ouz/gu;)Lcom/byazt/dyf/tt;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p2, p1}, Lcom/byazt/ouz/BackupView;->setDislikeInner(Lcom/byazt/nc/sp;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/byazt/ouz/gu$5;->tt:Lcom/byazt/ouz/gu;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/byazt/ouz/tt;->i:Landroid/app/Dialog;

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Lcom/byazt/ouz/BackupView;->setDislikeOuter(Landroid/app/Dialog;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/byazt/ouz/gu$5;->tt:Lcom/byazt/ouz/gu;

    .line 61
    .line 62
    iget-object v0, p1, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 63
    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Lcom/byazt/ouz/tt;->c(Lcom/byazt/vo/tt;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    iget-object p1, p0, Lcom/byazt/ouz/gu$5;->tt:Lcom/byazt/ouz/gu;

    .line 74
    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 76
    .line 77
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p1, Lcom/byazt/ouz/gu;->n:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    const/4 p1, 0x1

    .line 83
    return p1

    .line 84
    :catch_0
    const/4 p1, 0x0

    .line 85
    return p1
.end method
