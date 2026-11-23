.class public Lcom/byazt/ouz/gu$1;
.super Lcom/byazt/ouz/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x261
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ouz/gu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ouz/gu;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/gu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/ouz/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;FF)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    iget-object v1, v0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/byazt/ouz/gu;->uj(Lcom/byazt/ouz/gu;)Lcom/byazt/sy/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    iget-object v1, v0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    invoke-static {v0}, Lcom/byazt/ouz/gu;->uj(Lcom/byazt/ouz/gu;)Lcom/byazt/sy/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/sy/n;->c()Lcom/byazt/sy/sp;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/byazt/ouz/NativeExpressView;->setEasyPlayableSender(Lcom/byazt/sy/sp;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    invoke-static {v0}, Lcom/byazt/ouz/gu;->uj(Lcom/byazt/ouz/gu;)Lcom/byazt/sy/n;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    iget-object v1, v1, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    invoke-virtual {v1}, Lcom/byazt/ouz/NativeExpressView;->getEasyPlayableLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    iget-object v2, v2, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    invoke-virtual {v2}, Lcom/byazt/ouz/NativeExpressView;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/byazt/sy/n;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    invoke-static {v0}, Lcom/byazt/ouz/gu;->tt(Lcom/byazt/ouz/gu;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    iget-object v0, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    invoke-static {v0}, Lcom/byazt/ouz/gu;->tt(Lcom/byazt/ouz/gu;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    invoke-static {p1}, Lcom/byazt/ouz/gu;->tt(Lcom/byazt/ouz/gu;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    invoke-static {v0}, Lcom/byazt/ouz/gu;->n(Lcom/byazt/ouz/gu;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v2, p2

    float-to-int v3, p3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object p1, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    invoke-static {p1}, Lcom/byazt/ouz/gu;->c(Lcom/byazt/ouz/gu;)Lcom/byazt/ouz/c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    invoke-static {p1}, Lcom/byazt/ouz/gu;->c(Lcom/byazt/ouz/gu;)Lcom/byazt/ouz/c;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    invoke-static {v0}, Lcom/byazt/ouz/gu;->tt(Lcom/byazt/ouz/gu;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/byazt/ouz/c;->c(Landroid/view/View;FF)V

    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    invoke-static {p1}, Lcom/byazt/ouz/gu;->c(Lcom/byazt/ouz/gu;)Lcom/byazt/ouz/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    invoke-static {p1}, Lcom/byazt/ouz/gu;->c(Lcom/byazt/ouz/gu;)Lcom/byazt/ouz/c;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    invoke-static {v0}, Lcom/byazt/ouz/gu;->tt(Lcom/byazt/ouz/gu;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/byazt/ouz/c;->c(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    invoke-static {p1}, Lcom/byazt/ouz/gu;->c(Lcom/byazt/ouz/gu;)Lcom/byazt/ouz/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    invoke-static {p1}, Lcom/byazt/ouz/gu;->c(Lcom/byazt/ouz/gu;)Lcom/byazt/ouz/c;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    invoke-static {v0}, Lcom/byazt/ouz/gu;->tt(Lcom/byazt/ouz/gu;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/byazt/ouz/c;->c(Landroid/view/View;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public tt(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->oq()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ouz/gu;->c(Lcom/byazt/ouz/gu;)Lcom/byazt/ouz/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/byazt/ouz/gu;->ve(Lcom/byazt/ouz/gu;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/byazt/ouz/gu;->c(Lcom/byazt/ouz/gu;)Lcom/byazt/ouz/c;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/byazt/ouz/gu;->tt(Lcom/byazt/ouz/gu;)Landroid/view/ViewGroup;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0, p2}, Lcom/byazt/ouz/c;->tt(Landroid/view/View;I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    .line 56
    .line 57
    iget-object p2, p2, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->yv()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_1

    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    invoke-static {}, Lcom/byazt/yxu/c;->c()Lcom/byazt/yxu/c;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    iget-object v0, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/byazt/ouz/gu;->tt:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p2, v0, p1}, Lcom/byazt/yxu/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object p1, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/byazt/ouz/gu;->uj(Lcom/byazt/ouz/gu;)Lcom/byazt/sy/n;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    iget-object p1, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/byazt/ouz/gu;->uj(Lcom/byazt/ouz/gu;)Lcom/byazt/sy/n;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/byazt/sy/n;->c()Lcom/byazt/sy/sp;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_2

    .line 101
    .line 102
    iget-object p1, p0, Lcom/byazt/ouz/gu$1;->c:Lcom/byazt/ouz/gu;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/byazt/ouz/gu;->uj(Lcom/byazt/ouz/gu;)Lcom/byazt/sy/n;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/byazt/sy/n;->c()Lcom/byazt/sy/sp;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p1}, Lcom/byazt/sy/sp;->uj()V

    .line 113
    .line 114
    .line 115
    :cond_2
    return-void
.end method
