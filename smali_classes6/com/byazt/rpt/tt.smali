.class public Lcom/byazt/rpt/tt;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x137,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/rpt/tt$c;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public c:Lcom/byazt/hkv/tt;

.field public da:Z

.field public i:J

.field public n:Landroid/widget/TextView;

.field public final sp:Ljava/lang/String;

.field public final tt:Lcom/byazt/nr/d;

.field public uj:Landroid/widget/TextView;

.field public ve:Landroid/content/Context;

.field public final x:Lcom/byazt/rpt/tt$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/rpt/tt$c;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/nr/d;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/rpt/tt;->tt:Lcom/byazt/nr/d;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/byazt/rpt/tt;->da:Z

    .line 17
    .line 18
    iput-object p1, p0, Lcom/byazt/rpt/tt;->ve:Landroid/content/Context;

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/byazt/rpt/tt;->ve:Landroid/content/Context;

    .line 27
    .line 28
    :cond_0
    invoke-static {p2}, Lcom/byazt/ete/to;->a(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/byazt/rpt/tt;->sp:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/byazt/rpt/tt;->x:Lcom/byazt/rpt/tt$c;

    .line 35
    .line 36
    invoke-static {p2}, Lcom/byazt/ete/to;->n(Lcom/byazt/ete/ic;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 p3, 0x3

    .line 41
    if-ne p1, p3, :cond_1

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/byazt/rpt/tt;->da:Z

    .line 45
    .line 46
    const-wide/16 p1, 0x5

    .line 47
    .line 48
    iput-wide p1, p0, Lcom/byazt/rpt/tt;->i:J

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-static {p2}, Lcom/byazt/ete/to;->x(Lcom/byazt/ete/ic;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    int-to-long p1, p1

    .line 56
    iput-wide p1, p0, Lcom/byazt/rpt/tt;->i:J

    .line 57
    .line 58
    return-void
.end method

.method public static synthetic c(Lcom/byazt/rpt/tt;)Lcom/byazt/rpt/tt$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/rpt/tt;->x:Lcom/byazt/rpt/tt$c;

    return-object p0
.end method

.method private c()V
    .locals 3

    const v0, 0x7e06ff72

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/rpt/tt;->uj:Landroid/widget/TextView;

    const v0, 0x7e06feb6

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/rpt/tt;->n:Landroid/widget/TextView;

    const v0, 0x7e06ff79

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/rpt/tt;->a:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/byazt/rpt/tt;->x:Lcom/byazt/rpt/tt$c;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/rpt/tt;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/byazt/rpt/tt;->c:Lcom/byazt/hkv/tt;

    const-string v2, "goLiveListener"

    invoke-static {v0, v1, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/rpt/tt;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/byazt/rpt/tt$1;

    invoke-direct {v1, p0}, Lcom/byazt/rpt/tt$1;-><init>(Lcom/byazt/rpt/tt;)V

    const-string v2, "cancelTv"

    invoke-static {v0, v1, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/hkv/tt;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/byazt/rpt/tt;->c:Lcom/byazt/hkv/tt;

    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x65

    .line 4
    .line 5
    if-ne p1, v0, :cond_3

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/byazt/rpt/tt;->i:J

    .line 8
    .line 9
    const-wide/16 v3, 0x1

    .line 10
    .line 11
    sub-long/2addr v1, v3

    .line 12
    iput-wide v1, p0, Lcom/byazt/rpt/tt;->i:J

    .line 13
    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    cmp-long p1, v1, v3

    .line 17
    .line 18
    if-gtz p1, :cond_1

    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/byazt/rpt/tt;->da:Z

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/byazt/rpt/tt;->x:Lcom/byazt/rpt/tt$c;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-interface {p1, p0}, Lcom/byazt/rpt/tt$c;->tt(Landroid/app/Dialog;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/byazt/rpt/tt;->x:Lcom/byazt/rpt/tt$c;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-interface {p1, p0}, Lcom/byazt/rpt/tt$c;->c(Landroid/app/Dialog;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-boolean p1, p0, Lcom/byazt/rpt/tt;->da:Z

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/byazt/rpt/tt;->a:Landroid/widget/TextView;

    .line 44
    .line 45
    const-string v1, "\u6b8b\u5fcd\u62d2\u7edd"

    .line 46
    .line 47
    invoke-static {p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/4 v1, 0x1

    .line 56
    new-array v1, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    aput-object p1, v1, v2

    .line 60
    .line 61
    const-string p1, "\u6b8b\u5fcd\u62d2\u7edd(%1$s)"

    .line 62
    .line 63
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v1, p0, Lcom/byazt/rpt/tt;->a:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-static {v1, p1}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object p1, p0, Lcom/byazt/rpt/tt;->tt:Lcom/byazt/nr/d;

    .line 73
    .line 74
    const-wide/16 v1, 0x3e8

    .line 75
    .line 76
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/rpt/tt;->ve:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/byazt/vfu/a;->qp(Landroid/content/Context;)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/byazt/rpt/tt;->c()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/byazt/rpt/tt;->tt:Lcom/byazt/nr/d;

    .line 21
    .line 22
    const/16 v0, 0x65

    .line 23
    .line 24
    const-wide/16 v1, 0x3e8

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x65

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/rpt/tt;->tt:Lcom/byazt/nr/d;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/byazt/rpt/tt;->tt:Lcom/byazt/nr/d;

    .line 14
    .line 15
    const-wide/16 v1, 0x3e8

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/byazt/rpt/tt;->tt:Lcom/byazt/nr/d;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/rpt/tt;->uj:Landroid/widget/TextView;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/rpt/tt;->sp:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
