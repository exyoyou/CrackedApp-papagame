.class public Lcom/aggmoread/sdk/z/a/r/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/r/d$p;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Z

.field private a:Landroid/app/Activity;

.field private b:Lcom/aggmoread/sdk/z/a/t/c$b;

.field private c:Lcom/aggmoread/sdk/z/a/t/f;

.field private d:Lcom/aggmoread/sdk/z/a/t/b;

.field private e:Z

.field private f:Lcom/aggmoread/sdk/z/a/m/m;

.field private g:Landroid/os/CountDownTimer;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/ViewGroup;

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Z

.field private s:Z

.field private final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private x:J

.field private y:Lcom/aggmoread/sdk/z/a/t/d;

.field private z:Lcom/aggmoread/sdk/z/a/s/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->e:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->r:Z

    iput-boolean v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->s:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->x:J

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->K:Z

    return-void
.end method

.method private A()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->p:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private B()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->j:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/aggmoread/sdk/z/a/r/d$n;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/r/d$n;-><init>(Lcom/aggmoread/sdk/z/a/r/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->A:Landroid/widget/ImageView;

    new-instance v1, Lcom/aggmoread/sdk/z/a/r/d$o;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/r/d$o;-><init>(Lcom/aggmoread/sdk/z/a/r/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->M()V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private D()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->f:Lcom/aggmoread/sdk/z/a/m/m;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->K:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/m/m;->e()V

    :cond_0
    return-void
.end method

.method private F()V
    .locals 7

    const-string v0, "ApiRewardVideoViewTAG"

    const-string v1, "startTimeOutCountDown"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->g:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    new-instance v0, Lcom/aggmoread/sdk/z/a/r/d$f;

    const-wide/16 v3, 0x3a98

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/aggmoread/sdk/z/a/r/d$f;-><init>(Lcom/aggmoread/sdk/z/a/r/d;JJ)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->g:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private G()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->f:Lcom/aggmoread/sdk/z/a/m/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/m/m;->f()V

    :cond_0
    return-void
.end method

.method private H()V
    .locals 2

    const-string v0, "ApiRewardVideoViewTAG"

    const-string v1, "stopTimeOutCountDown"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->g:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->g:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private I()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->f:Lcom/aggmoread/sdk/z/a/m/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/m/m;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->f:Lcom/aggmoread/sdk/z/a/m/m;

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private J()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->q:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private K()V
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->C:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->C:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->n:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->l:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_3
    return-void
.end method

.method private L()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->r:Z

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->m:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->o:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->b:Lcom/aggmoread/sdk/z/a/t/c$b;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lcom/aggmoread/sdk/z/a/t/c$b;->a(Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method private M()V
    .locals 2

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->A:Landroid/widget/ImageView;

    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAe1JREFUWEftlj1oVEEUhb9T2QexkQSxE8UmoE0QG0ljG/wBRQhooRb+lCoK2ihqIYhgoaJiEAtL2SadiGCn2ETsYiF2Wsox9zELw8t7mQ2bvLXYgYXdnTf3fHvuz6wY8dKI9RkDjB1YtwO2LwLngT/AG0nXhynkdQHYvgdcyAS/SNrTCYDtk8CzJHYKeBrvtWLBpgPY3gt8BLYAVyTdsu0uAT4A+4EXkk6EcGcAth8BZ4BlSdv7ducAtg8CT4Dnkq7VU2J7DngNXJZ0N99flT/bO1by23/NAzPpwFZJv1oA4vnvae++pOiUamXi8fFGvWuaAD4DuzPKZWBO0vucvJ6CmtBjSadL4lUNNdhVFRfwFngHvJT0u+25vAtqggvA0XRu1S/vx2sFKLVXWxHWIBptL9XAQO31XwJsaAqAA8CSpB9Nk24zizBabSITXZB0bK0iTHNgcaPa8BJwGJgCdqagPUmzbW1oezpuxsIguh13SXEO1ESOAHeASeCmpKtNg6gpRYN+V7zJbB8CeingcUmv0oQbqFtKIEWAJHYOeJCCzUrqdXYZZZYHQID8BfYBn6pR2sX/gQwiUhEp+QrsAn5K2layea39gVKQAUQxRlFGccZ6KOlsZwAZSLRnuP9tGPEqhcMGGPb8GGDkDvwD88z/ISmS/mAAAAAASUVORK5CYII="

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->A:Landroid/widget/ImageView;

    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAqNJREFUWEftlk2ITlEYx3//lZVEYhBJUT43JjYSRWMhFkKIRA2FBVKzIB+RGrIRMRvUiKLIhmZDTSRMSWSDrAb5SBoLCz3uM513Ol736503vZv31K3bvfec53f+z/95zhUNHmpwfJoATQVqVsDM9gF7gJ/ATUlH6jFyTQBmdgbYGwV8JWlONYCZzQBOA2+Bo5K+Z0GWBjCzLcCVsNBW4LLfK5EgBWA88DE8fx4gbqdBlAIws3nAE2AEcFDSCTOzLAB/bmarglpLQuB1km5UQ5QFeAwsBLolbQ4BcgEqgczsJNCRBVEIYGYXgB1Av6RJ0cL/AJjZTqCl2phm5qnzFPZJao1VSMvf1CS/lWs7sChMGCvpawHAfcAlv5UAt0v6EtSaADwDJvpmJHVV1kkDeAnMjij7gbWSHsXkaR4ws1nAMWAN8FTSggjYy/Uw0CtpcR7AoLSAu/YecFXSQIrTMz1gZt3AJmCppAdBhflBhTeSphcCpJVXkQLRbr1MLwHnJe0KAKOBb8CApJGNABgFeEP6JKnlfwOkpWAu8ALokdRWCAC4UTxfH9I62DBM2A5c9BYt6UAegJfamCjodUkbypjQzCpl2Ot1L+l95AsvQzdiq6S+PID9iVtXAlOAaeHDv2QLpspqRMuAbZJ+pJRgV6KoN7WhkdsJzWw9cAqYDByXdChatGwrrtT/O2C1JO8z5QDCTpe7ccKMjZKuZSlQVaaec79c9l/AikpPqAkgBNsNnA0T2yT15J2GZubt2P3g4yHQKelOmpkLD6NIcgdwkN+At9hBI2X8D3hLPpecoHcldaYFzjRh3sdm5qnwlLwGZgKfJY3Lm1P0rrQCIRVuRjelm9PHUKstCpT1viaAKB1enq6+//PVNYYFUFfEqslNgIYr8Ad+qj8wE2M/IAAAAABJRU5ErkJggg=="

    :goto_0
    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/m/j;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->e:Z

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/t/f;->b(Z)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/r/d;Lcom/aggmoread/sdk/z/a/m/m;)Lcom/aggmoread/sdk/z/a/m/m;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d;->f:Lcom/aggmoread/sdk/z/a/m/m;

    return-object p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/r/d;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->K()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->b()V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->q()V

    :cond_1
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->I()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->b:Lcom/aggmoread/sdk/z/a/t/c$b;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->s:Z

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/t/c$b;->c()V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/t/c$b;->b()V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(J)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->i:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "%s\u540e\u53ef\u9886\u53d6\u5956\u52b1"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d;->p:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d;->p:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 6
    new-instance v0, Lcom/aggmoread/sdk/z/a/r/d$e;

    invoke-direct {v0, p0, p1}, Lcom/aggmoread/sdk/z/a/r/d$e;-><init>(Lcom/aggmoread/sdk/z/a/r/d;Landroid/widget/ImageView;)V

    invoke-direct {p0, p2, v0}, Lcom/aggmoread/sdk/z/a/r/d;->a(Ljava/lang/String;Lcom/aggmoread/sdk/z/a/r/d$p;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/r/d;J)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/a/r/d;->b(J)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/aggmoread/sdk/z/a/r/d$p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aggmoread/sdk/z/a/r/d$p<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aggmoread/sdk/z/a/r/d$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/aggmoread/sdk/z/a/r/d$d;-><init>(Lcom/aggmoread/sdk/z/a/r/d;Ljava/lang/String;Lcom/aggmoread/sdk/z/a/r/d$p;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/r/d;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/r/d;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    return-object p0
.end method

.method private b(J)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->m()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d;->j:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/r/d;J)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/a/r/d;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/r/d;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/r/d;->s:Z

    return p1
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/s/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/r/d;->z:Lcom/aggmoread/sdk/z/a/s/a;

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->y:Lcom/aggmoread/sdk/z/a/t/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/r/d;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/r/d;->K:Z

    return p1
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/m/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/r/d;->f:Lcom/aggmoread/sdk/z/a/m/m;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->y:Lcom/aggmoread/sdk/z/a/t/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->y:Lcom/aggmoread/sdk/z/a/t/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/d;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method static synthetic e(Lcom/aggmoread/sdk/z/a/r/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/r/d;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic f(Lcom/aggmoread/sdk/z/a/r/d;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/r/d;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->y:Lcom/aggmoread/sdk/z/a/t/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/d;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->y:Lcom/aggmoread/sdk/z/a/t/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/d;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method static synthetic g(Lcom/aggmoread/sdk/z/a/r/d;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/aggmoread/sdk/z/a/r/d;->r:Z

    return p0
.end method

.method static synthetic h(Lcom/aggmoread/sdk/z/a/r/d;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->y:Lcom/aggmoread/sdk/z/a/t/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private i()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->y:Lcom/aggmoread/sdk/z/a/t/d;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/t/d;->n:Landroid/graphics/Bitmap;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic i(Lcom/aggmoread/sdk/z/a/r/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->L()V

    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->y:Lcom/aggmoread/sdk/z/a/t/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method static synthetic j(Lcom/aggmoread/sdk/z/a/r/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->I()V

    return-void
.end method

.method private k()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->y:Lcom/aggmoread/sdk/z/a/t/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/d;->h()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static synthetic k(Lcom/aggmoread/sdk/z/a/r/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->F()V

    return-void
.end method

.method static synthetic l(Lcom/aggmoread/sdk/z/a/r/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->G()V

    return-void
.end method

.method private m()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->y:Lcom/aggmoread/sdk/z/a/t/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/d;->i()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic m(Lcom/aggmoread/sdk/z/a/r/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->J()V

    return-void
.end method

.method private n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->y:Lcom/aggmoread/sdk/z/a/t/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/d;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method static synthetic n(Lcom/aggmoread/sdk/z/a/r/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->D()V

    return-void
.end method

.method private o()Landroid/view/View;
    .locals 15

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x50

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    invoke-static {v4, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-static {v4, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-static {v4, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v7, 0x402e000000000000L    # 15.0

    invoke-static {v4, v7, v8}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v7, "#ffffff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    iget-object v9, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-static {v9, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-static {v8, v6, v5, v9, v9}, Lcom/aggmoread/sdk/z/a/m/b;->a(IFIII)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v8, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->B:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->B:Landroid/widget/ImageView;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    iget-object v11, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v12, 0x4054000000000000L    # 80.0

    invoke-static {v11, v12, v13}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v11

    iget-object v14, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-static {v14, v12, v13}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->B:Landroid/widget/ImageView;

    const-string v10, "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"

    invoke-static {v8, v10}, Lcom/aggmoread/sdk/z/a/m/j;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const-string v10, "#707070"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v8, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v10, 0x21

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    iget-object v10, p0, Lcom/aggmoread/sdk/z/a/r/d;->B:Landroid/widget/ImageView;

    invoke-virtual {v10, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->B:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v8, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v10, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v11, 0x4020000000000000L    # 8.0

    invoke-static {v10, v11, v12}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v10

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v4, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->E:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v10, p0, Lcom/aggmoread/sdk/z/a/r/d;->E:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v10, p0, Lcom/aggmoread/sdk/z/a/r/d;->E:Landroid/widget/TextView;

    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v10, p0, Lcom/aggmoread/sdk/z/a/r/d;->E:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v10, p0, Lcom/aggmoread/sdk/z/a/r/d;->E:Landroid/widget/TextView;

    const-string v11, "#515151"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, p0, Lcom/aggmoread/sdk/z/a/r/d;->E:Landroid/widget/TextView;

    const-string v11, "Title"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/aggmoread/sdk/z/a/r/d;->E:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->E:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v4, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->F:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v10, p0, Lcom/aggmoread/sdk/z/a/r/d;->F:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v10, p0, Lcom/aggmoread/sdk/z/a/r/d;->F:Landroid/widget/TextView;

    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v10, p0, Lcom/aggmoread/sdk/z/a/r/d;->F:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/r/d;->F:Landroid/widget/TextView;

    const-string v10, "#8a8a8a"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/r/d;->F:Landroid/widget/TextView;

    const-string v10, "Desc"

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/r/d;->F:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->F:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    invoke-static {v2, v10, v11}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v2

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u67e5\u770b\u8be6\u60c5"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const-string v2, "#0a81fc"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    invoke-static {v3, v4, v5}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v3

    invoke-static {v2, v6, v3, v9, v9}, Lcom/aggmoread/sdk/z/a/m/b;->a(IFIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic o(Lcom/aggmoread/sdk/z/a/r/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->v()V

    return-void
.end method

.method private p()Landroid/view/ViewGroup;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-static {v1, v2, v3}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/aggmoread/sdk/z/a/r/d;->C:Landroid/widget/ImageView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/r/d;->C:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/r/d;->C:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v6, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v3, 0xd8

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v3, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/aggmoread/sdk/z/a/r/d;->D:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v7, 0x4038000000000000L    # 24.0

    invoke-static {v6, v7, v8}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v6

    iget-object v9, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-static {v9, v7, v8}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xb

    invoke-virtual {v3, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v6, p0, Lcom/aggmoread/sdk/z/a/r/d;->D:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/r/d;->D:Landroid/widget/ImageView;

    const-string v6, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAmZJREFUWEfVlzloFmEQhp+30FIQQVAUBK9ORLQQDyKS1IKaWkjpFQUbU6igQbTQJJYGe2PAq9LCI9opqJ0HaCEKKe3ldT+ZHzabvRIDiwvbfNc8O/POzLei40cd2+f/ArC9ExgA+oG1wJrw4E/gB3APmJH0oa1nW3nA9j7gNHC4cPA34DewsTA+DYxJmmkCaQSwfQU4Hwe9A14Bb4HnkhIAttcBu+M9CGyL9ROSTtVB1ALYTsb2xAHXgcuSftUdaHs1cAs4Guu+SNpctacSwPZnYFNsHJD0tMmd+XnbKWQ3Y+y1pL1l+0sBbI8DJ9MGSY1havCIY35U0khx7bzDQ3AvY+GwpLGFfHlxre2UMU9ifH9RmGUAKZWS2qckDfYOtN2XCa8vc8jFhi8eBu73BBoivQacA6YlHcnvnwNgO6n3PZDyuF/SbA4gGb5QBCvE/W6I71Ie1PYK4EUGth3YJelNb18R4Hgo+Eam9rMl7uwZmOOd+MrKuZifAE4AI5JGqwCeJTcDg5Kmylxte56hsrES+GPAnagfB6oAPgJbgPWSvlfFOm8w1qScn+eVQng2AF+BT5K2VgGkIjMrqZf/lXrLQaQ1tcZzOkoAqyQlTfx9ihroHGAxIVgGHGrygu1WIViwCG0vBx5Fm64Mhe1WIlxUGtpeCTwEUr0vhbDdKg3rCtEQcLvGQGrJDzKQHcAZSb1GlNp1u0IUBaO0FMfckKTJmvRM6XU1S+NJSY9z6m9XisNIuv1014wCort2nHNbdxeSHER3V7IcRHeX0hxEd9fyQkfr5seksiUuwcQ/3XiXwH73P6d/AMNtZjBWZp4QAAAAAElFTkSuQmCC"

    invoke-static {v3, v6}, Lcom/aggmoread/sdk/z/a/m/j;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/r/d;->D:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    invoke-static {v8, v9, v10}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-static {v8, v9, v10}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v8, 0xd

    invoke-virtual {v6, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->G:Landroid/widget/ImageView;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    iget-object v10, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v11, 0x4050000000000000L    # 64.0

    invoke-static {v10, v11, v12}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v10

    iget-object v13, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-static {v13, v11, v12}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->G:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->G:Landroid/widget/ImageView;

    const-string v9, "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"

    invoke-static {v8, v9}, Lcom/aggmoread/sdk/z/a/m/j;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->G:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->H:Landroid/widget/TextView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v9, p0, Lcom/aggmoread/sdk/z/a/r/d;->H:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->H:Landroid/widget/TextView;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->H:Landroid/widget/TextView;

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->H:Landroid/widget/TextView;

    const-string v10, "#ffffff"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->H:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v8, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->I:Landroid/widget/TextView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v7, p0, Lcom/aggmoread/sdk/z/a/r/d;->I:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/aggmoread/sdk/z/a/r/d;->I:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v7, p0, Lcom/aggmoread/sdk/z/a/r/d;->I:Landroid/widget/TextView;

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v7, p0, Lcom/aggmoread/sdk/z/a/r/d;->I:Landroid/widget/TextView;

    const-string v8, "#BFBDBD"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Lcom/aggmoread/sdk/z/a/r/d;->I:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/aggmoread/sdk/z/a/r/d;->J:Landroid/widget/TextView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->J:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->J:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->J:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->J:Landroid/widget/TextView;

    const-string v1, "\u7acb\u5373\u67e5\u770b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->J:Landroid/widget/TextView;

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "#0a81fc"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v7, 0x403e000000000000L    # 30.0

    invoke-static {v1, v7, v8}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v4, v1, v6, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(IFIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->J:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->J:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method static synthetic p(Lcom/aggmoread/sdk/z/a/r/d;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/aggmoread/sdk/z/a/r/d;->e:Z

    return p0
.end method

.method private q()Landroid/view/View;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v1, 0x4020000000000000L    # 8.0

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    invoke-static {v4, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    invoke-static {v4, v7, v8}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v7, 0x4044000000000000L    # 40.0

    invoke-static {v2, v7, v8}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v2

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    invoke-static {v0, v4, v2, v7, v7}, Lcom/aggmoread/sdk/z/a/m/b;->a(IFIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v4, "iVBORw0KGgoAAAANSUhEUgAAACMAAAAgCAYAAACYTcH3AAAAAXNSR0IArs4c6QAAAoZJREFUWEftljtoU2EUx38n98akD5qhFAS1vgVBoQ/TFrRNOzhUUKuCixW1g1u3Tk5dHBwU8TE4KahLhyIIDlW0Jm2hiYo66qiIUDXWtkmaxz0S04c3t4mli4L3wOHyfedx//d/vnO+K5QR1UEPsafXQUKgm4BxLK5KW3ikXNyiTaOh86C3gI/AB5QRaQ0PloqVsmDed/uIz6UcPqL9EozcKBsbDd0GPVvk81BawkfWBuZZZzVV1syKwarHpDXyYCWbTrZfROSC8yP4JMHwhj+C0ckDu6R17N3vjvq4qQ3J3cQihdeTxlexFdPcvODzGq+nSxpHv9tiYqFuVB/92lOF+fkY6fkUllWL6U0SqOqT5sjbpVK+aq+TpshUfm0rk8Y6+rDoxUMUlXHi8Q7UGrB9iWm8JBDYg+IDeYNoxGZXbQTZTzrzhLnZHahusdmrqw/hW1cPBFHZJy3PGxbtjjOjk+3XEOlfSjA9nSGX8xZRG6cm8A3TqALWO2hPJodIJk869isqIK/L0ist4fsOMBrtbECsMyingDpbonQaEgmwLHv+QGAKw7D7JpIxUsmgzdHrhcpKMIxifBN49C4zxj3pGp0V7el9AdKM34JAdln9ag/M5pdZEAtyUtDdCdiYA1kgOJuBsQBkPGBoQTNeMAWKccwY8N2EabPwVBDtOV301nINW2Q7/BX2zto3L9UXgK5BXDAl54xbphLU/HNnZsg2VwzTv+pGOP55Ozvn7HPmyrYomXz/r0JyWdsl7JzA5wa+ALWrSAVHJ8D/w+46fBAyjuG2cjrVE3Ln8nDp68AFU+DGLdPSAXLPTKnWdJlxmckz4E7gPAvu3VSqG/43ZqaBmr/xP/MTU9yfSEAUaIgAAAAASUVORK5CYII="

    invoke-static {v2, v4}, Lcom/aggmoread/sdk/z/a/m/j;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-static {v7, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v7

    iget-object v8, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-static {v8, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v5

    invoke-direct {v4, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x10

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aggmoread/sdk/z/a/r/d;->i:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v4, v6, v7}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/r/d;->i:Landroid/widget/TextView;

    const-string v4, "Xs\u540e\u53ef\u9886\u53d6\u5956\u52b1"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/r/d;->i:Landroid/widget/TextView;

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/r/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-static {v3, v6, v7}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v3

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u5df2\u9886\u53d6\u5956\u52b1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "#E3E1E1"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->m:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/aggmoread/sdk/z/a/r/d;->o:Landroid/view/View;

    return-object v1
.end method

.method static synthetic q(Lcom/aggmoread/sdk/z/a/r/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->M()V

    return-void
.end method

.method static synthetic r(Lcom/aggmoread/sdk/z/a/r/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/r/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private r()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->d:Lcom/aggmoread/sdk/z/a/t/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/t/a;->a(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->d:Lcom/aggmoread/sdk/z/a/t/b;

    const-string v2, "\u7d20\u6750\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v2}, Lcom/aggmoread/sdk/z/a/t/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->d:Lcom/aggmoread/sdk/z/a/t/b;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/t/b;->c(Z)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->d:Lcom/aggmoread/sdk/z/a/t/b;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/t/a;->setEnabled(Z)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->d:Lcom/aggmoread/sdk/z/a/t/b;

    new-instance v1, Lcom/aggmoread/sdk/z/a/r/d$h;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/r/d$h;-><init>(Lcom/aggmoread/sdk/z/a/r/d;)V

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/t/a;->a(Lcom/aggmoread/sdk/z/a/t/a$h;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->d:Lcom/aggmoread/sdk/z/a/t/b;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/t/f;->a(Lcom/aggmoread/sdk/z/a/t/a;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/t/f;->e(Z)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/t/f;->a(F)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    sget-object v1, Lcom/aggmoread/sdk/z/a/t/f$i;->h:Lcom/aggmoread/sdk/z/a/t/f$i;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/t/f;->a(Lcom/aggmoread/sdk/z/a/t/f$i;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    new-instance v1, Lcom/aggmoread/sdk/z/a/r/d$i;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/r/d$i;-><init>(Lcom/aggmoread/sdk/z/a/r/d;)V

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/t/f;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    new-instance v1, Lcom/aggmoread/sdk/z/a/r/d$j;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/r/d$j;-><init>(Lcom/aggmoread/sdk/z/a/r/d;)V

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/t/f;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    new-instance v1, Lcom/aggmoread/sdk/z/a/r/d$k;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/r/d$k;-><init>(Lcom/aggmoread/sdk/z/a/r/d;)V

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/t/f;->a(Lcom/aggmoread/sdk/z/a/t/f$j;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    new-instance v1, Lcom/aggmoread/sdk/z/a/r/d$l;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/r/d$l;-><init>(Lcom/aggmoread/sdk/z/a/r/d;)V

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/t/f;->a(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method private s()Landroid/view/View;
    .locals 12

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    invoke-static {v3, v4, v5}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v3

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    invoke-static {v4, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    invoke-static {v5, v6, v7}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v5

    add-int/2addr v4, v3

    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/aggmoread/sdk/z/a/r/d;->A:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/r/d;->A:Landroid/widget/ImageView;

    const-string v4, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAqNJREFUWEftlk2ITlEYx3//lZVEYhBJUT43JjYSRWMhFkKIRA2FBVKzIB+RGrIRMRvUiKLIhmZDTSRMSWSDrAb5SBoLCz3uM513Ol736503vZv31K3bvfec53f+z/95zhUNHmpwfJoATQVqVsDM9gF7gJ/ATUlH6jFyTQBmdgbYGwV8JWlONYCZzQBOA2+Bo5K+Z0GWBjCzLcCVsNBW4LLfK5EgBWA88DE8fx4gbqdBlAIws3nAE2AEcFDSCTOzLAB/bmarglpLQuB1km5UQ5QFeAwsBLolbQ4BcgEqgczsJNCRBVEIYGYXgB1Av6RJ0cL/AJjZTqCl2phm5qnzFPZJao1VSMvf1CS/lWs7sChMGCvpawHAfcAlv5UAt0v6EtSaADwDJvpmJHVV1kkDeAnMjij7gbWSHsXkaR4ws1nAMWAN8FTSggjYy/Uw0CtpcR7AoLSAu/YecFXSQIrTMz1gZt3AJmCppAdBhflBhTeSphcCpJVXkQLRbr1MLwHnJe0KAKOBb8CApJGNABgFeEP6JKnlfwOkpWAu8ALokdRWCAC4UTxfH9I62DBM2A5c9BYt6UAegJfamCjodUkbypjQzCpl2Ot1L+l95AsvQzdiq6S+PID9iVtXAlOAaeHDv2QLpspqRMuAbZJ+pJRgV6KoN7WhkdsJzWw9cAqYDByXdChatGwrrtT/O2C1JO8z5QDCTpe7ccKMjZKuZSlQVaaec79c9l/AikpPqAkgBNsNnA0T2yT15J2GZubt2P3g4yHQKelOmpkLD6NIcgdwkN+At9hBI2X8D3hLPpecoHcldaYFzjRh3sdm5qnwlLwGZgKfJY3Lm1P0rrQCIRVuRjelm9PHUKstCpT1viaAKB1enq6+//PVNYYFUFfEqslNgIYr8Ad+qj8wE2M/IAAAAABJRU5ErkJggg=="

    invoke-static {v3, v4}, Lcom/aggmoread/sdk/z/a/m/j;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->A:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x15

    invoke-virtual {v4, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v6, 0xf

    invoke-virtual {v4, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/aggmoread/sdk/z/a/r/d;->h:Landroid/widget/TextView;

    const-string v7, "60s"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/aggmoread/sdk/z/a/r/d;->h:Landroid/widget/TextView;

    const/high16 v7, 0x41700000    # 15.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v6, p0, Lcom/aggmoread/sdk/z/a/r/d;->h:Landroid/widget/TextView;

    const-string v8, "#ffffff"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v9, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    invoke-static {v9, v10, v11}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v9, p0, Lcom/aggmoread/sdk/z/a/r/d;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v6, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/aggmoread/sdk/z/a/r/d;->j:Landroid/widget/TextView;

    const-string v9, "\u8df3\u8fc7"

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/aggmoread/sdk/z/a/r/d;->j:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v6, p0, Lcom/aggmoread/sdk/z/a/r/d;->j:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/aggmoread/sdk/z/a/r/d;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0x7f

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/aggmoread/sdk/z/a/t/f;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/aggmoread/sdk/z/a/t/f;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {v1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/aggmoread/sdk/z/a/t/b;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/aggmoread/sdk/z/a/t/b;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/aggmoread/sdk/z/a/r/d;->d:Lcom/aggmoread/sdk/z/a/t/b;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/r/d;->d:Lcom/aggmoread/sdk/z/a/t/b;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic s(Lcom/aggmoread/sdk/z/a/r/d;)Landroid/widget/ImageView;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/r/d;->C:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic t(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/r/d;->b:Lcom/aggmoread/sdk/z/a/t/c$b;

    return-object p0
.end method

.method private t()V
    .locals 4

    .line 2
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->k:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/aggmoread/sdk/z/a/s/a;->a(Landroid/view/View;Lcom/aggmoread/sdk/z/a/s/a$a;)Lcom/aggmoread/sdk/z/a/s/a;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->z:Lcom/aggmoread/sdk/z/a/s/a;

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->k:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->l:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->s()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->l:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->q()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->p:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->l:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->o()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->l:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->p()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->n:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->k:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic u(Lcom/aggmoread/sdk/z/a/r/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->a()V

    return-void
.end method

.method private u()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->y:Lcom/aggmoread/sdk/z/a/t/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/d;->k()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private v()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->b:Lcom/aggmoread/sdk/z/a/t/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aggmoread/sdk/z/a/r/d;->x:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->b:Lcom/aggmoread/sdk/z/a/t/c$b;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/aggmoread/sdk/z/a/t/c$b;->a(Landroid/app/Activity;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->x:J

    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/aggmoread/sdk/z/a/r/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->x()V

    return-void
.end method

.method static synthetic w(Lcom/aggmoread/sdk/z/a/r/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->H()V

    return-void
.end method

.method static synthetic x(Lcom/aggmoread/sdk/z/a/r/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/r/d;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private x()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->f:Lcom/aggmoread/sdk/z/a/m/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/m/m;->d()V

    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->B:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->B:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/aggmoread/sdk/z/a/r/d;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->E:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->F:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->q:Landroid/view/View;

    new-instance v1, Lcom/aggmoread/sdk/z/a/r/d$m;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/r/d$m;-><init>(Lcom/aggmoread/sdk/z/a/r/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private z()V
    .locals 4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->n:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->G:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/aggmoread/sdk/z/a/r/d;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->H:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->I:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->n:Landroid/view/ViewGroup;

    new-instance v1, Lcom/aggmoread/sdk/z/a/r/d$a;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/r/d$a;-><init>(Lcom/aggmoread/sdk/z/a/r/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d;->C:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/aggmoread/sdk/z/a/r/d$b;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/r/d$b;-><init>(Lcom/aggmoread/sdk/z/a/r/d;)V

    invoke-direct {p0, v0, v1}, Lcom/aggmoread/sdk/z/a/r/d;->a(Ljava/lang/String;Lcom/aggmoread/sdk/z/a/r/d$p;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->D:Landroid/widget/ImageView;

    new-instance v1, Lcom/aggmoread/sdk/z/a/r/d$c;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/r/d$c;-><init>(Lcom/aggmoread/sdk/z/a/r/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public C()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->p()V

    :cond_0
    return-void
.end method

.method public E()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    new-instance v1, Lcom/aggmoread/sdk/z/a/r/d$g;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/r/d$g;-><init>(Lcom/aggmoread/sdk/z/a/r/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d;->a:Landroid/app/Activity;

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/t/c$b;)V
    .locals 2

    .line 8
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d;->b:Lcom/aggmoread/sdk/z/a/t/c$b;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->r()V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->y()V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->B()V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->A()V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->z()V

    :cond_0
    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/t/d;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d;->y:Lcom/aggmoread/sdk/z/a/t/d;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/r/d;->e:Z

    return-void
.end method

.method public b()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->a()V

    return-void
.end method

.method public l()Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/d;->t()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->k:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d;->c:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->b()V

    :cond_0
    return-void
.end method
