.class public Lcom/aggmoread/sdk/z/a/l/d;
.super Lcom/aggmoread/sdk/z/a/b;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/l/c;
.implements Lcom/aggmoread/sdk/z/a/l/e;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/aggmoread/sdk/z/a/u/d$e;


# static fields
.field static final i:Ljava/lang/String; = "d"


# instance fields
.field private a:Lcom/aggmoread/sdk/z/a/g/c$a$b;

.field private b:Lcom/aggmoread/sdk/z/a/l/f;

.field private c:Lcom/aggmoread/sdk/z/a/g/c;

.field private d:Z

.field private volatile e:I

.field private f:Lcom/aggmoread/sdk/z/a/u/d;

.field private g:Lcom/aggmoread/sdk/z/a/t/f;

.field private volatile h:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/g/c$a$b;)V
    .locals 2

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->d:Z

    iput v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->e:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->h:J

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/l/d;->a:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/l/d;->c:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/i/e;->k()Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/l/d;)Lcom/aggmoread/sdk/z/a/u/d;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/l/d;->f:Lcom/aggmoread/sdk/z/a/u/d;

    return-object p0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 5
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e()Z
    .locals 5

    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/h/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->e:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aggmoread/sdk/z/a/l/d;->h:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->d:Z

    return v0
.end method

.method private g()V
    .locals 3

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->f:Lcom/aggmoread/sdk/z/a/u/d;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->b:Lcom/aggmoread/sdk/z/a/l/f;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/l/f;->onADExposed()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->a:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/g/c$a$b;->q:Ljava/util/List;

    const-string v1, "onAdExposure"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->d:Z

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->f:Lcom/aggmoread/sdk/z/a/u/d;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/l/d;->c:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/aggmoread/sdk/z/a/i/e;)Lcom/aggmoread/sdk/z/a/u/q;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->f:Lcom/aggmoread/sdk/z/a/u/d;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/u/d;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/util/List;Lcom/aggmoread/sdk/z/a/l/f;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/aggmoread/sdk/z/a/l/f;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/aggmoread/sdk/z/a/l/d;->b:Lcom/aggmoread/sdk/z/a/l/f;

    if-eqz p2, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindView enter, view = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , clickableViews size = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "JHAIMPTAG"

    invoke-static {v1, p3}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/aggmoread/sdk/z/a/l/d;->a(Ljava/util/ArrayList;)V

    instance-of p2, p1, Lcom/aggmoread/sdk/z/a/u/d;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/aggmoread/sdk/z/a/u/d;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/l/d;->f:Lcom/aggmoread/sdk/z/a/u/d;

    invoke-virtual {p2, p0}, Lcom/aggmoread/sdk/z/a/u/d;->a(Lcom/aggmoread/sdk/z/a/u/d$e;)V

    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/l/d;->f:Lcom/aggmoread/sdk/z/a/u/d;

    iget-object p3, p0, Lcom/aggmoread/sdk/z/a/l/d;->c:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-virtual {p3}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/aggmoread/sdk/z/a/i/e;->m()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/aggmoread/sdk/z/a/u/d;->a(I)V

    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/l/d;->f:Lcom/aggmoread/sdk/z/a/u/d;

    invoke-virtual {p2, v0}, Lcom/aggmoread/sdk/z/a/u/d;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/l/d;->g()V

    return-object p1

    :cond_1
    new-instance p2, Lcom/aggmoread/sdk/z/a/u/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/aggmoread/sdk/z/a/u/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of v1, p3, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/l/d;->f:Lcom/aggmoread/sdk/z/a/u/d;

    invoke-virtual {p2, p0}, Lcom/aggmoread/sdk/z/a/u/d;->a(Lcom/aggmoread/sdk/z/a/u/d$e;)V

    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/l/d;->f:Lcom/aggmoread/sdk/z/a/u/d;

    iget-object p3, p0, Lcom/aggmoread/sdk/z/a/l/d;->c:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-virtual {p3}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/aggmoread/sdk/z/a/i/e;->m()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/aggmoread/sdk/z/a/u/d;->a(I)V

    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/l/d;->f:Lcom/aggmoread/sdk/z/a/u/d;

    invoke-virtual {p2, v0}, Lcom/aggmoread/sdk/z/a/u/d;->a(Ljava/util/List;)V

    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/l/d;->f:Lcom/aggmoread/sdk/z/a/u/d;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/l/d;->f:Lcom/aggmoread/sdk/z/a/u/d;

    return-object p1
.end method

.method public a(I)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowVisibilityChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JHAIMPTAG"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->d:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/l/d;->g()V

    :cond_0
    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/u/m;Lcom/aggmoread/sdk/z/a/t/e;Lcom/aggmoread/sdk/z/a/l/e$a;)V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->f:Lcom/aggmoread/sdk/z/a/u/d;

    const-string v1, "JHAIMPTAG"

    if-nez v0, :cond_0

    const-string p1, "container shouldn\'t be null!"

    :goto_0
    invoke-static {v1, p1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "media view shouldn\'t be null!"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "media view should be visible!"

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/l/d;->isVideoAd()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "The native ad doesn\'t contain video!"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->f:Lcom/aggmoread/sdk/z/a/u/d;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "The media view not in container !"

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/h/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/p/e;->c(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/u/m;->b()Lcom/aggmoread/sdk/z/a/t/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/u/m;->a()Lcom/aggmoread/sdk/z/a/t/a;

    move-result-object p1

    instance-of v4, p1, Lcom/aggmoread/sdk/z/a/t/b;

    if-eqz v4, :cond_9

    if-nez p2, :cond_6

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/l/d;->c:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-virtual {v4}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/l/d;->c:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/a/i/e;->p()Lcom/aggmoread/sdk/z/a/t/e;

    move-result-object p2

    :cond_6
    if-eqz p2, :cond_9

    move-object v4, p1

    check-cast v4, Lcom/aggmoread/sdk/z/a/t/b;

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/a/t/e;->d()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/aggmoread/sdk/z/a/t/b;->c(Z)V

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/a/t/e;->c()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/aggmoread/sdk/z/a/t/b;->b(Z)V

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/a/t/e;->b()Z

    move-result v4

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/a/t/e;->a()I

    move-result v5

    if-eq v5, v3, :cond_8

    const/4 v3, 0x2

    if-eq v5, v3, :cond_7

    move v2, v0

    :cond_7
    move v3, v4

    goto :goto_2

    :cond_8
    move v3, v4

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    move v2, v0

    :goto_2
    new-instance v0, Lcom/aggmoread/sdk/z/a/l/d$a;

    invoke-direct {v0, p0, p2}, Lcom/aggmoread/sdk/z/a/l/d$a;-><init>(Lcom/aggmoread/sdk/z/a/l/d;Lcom/aggmoread/sdk/z/a/t/e;)V

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/a/t/a;->a(Lcom/aggmoread/sdk/z/a/t/a$g;)V

    if-eqz v1, :cond_c

    iput-object v1, p0, Lcom/aggmoread/sdk/z/a/l/d;->g:Lcom/aggmoread/sdk/z/a/t/f;

    if-eqz v3, :cond_a

    const/4 p2, 0x0

    goto :goto_3

    :cond_a
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v1, p2}, Lcom/aggmoread/sdk/z/a/t/f;->a(F)V

    new-instance p2, Lcom/aggmoread/sdk/z/a/l/d$b;

    invoke-direct {p2, p0, p3}, Lcom/aggmoread/sdk/z/a/l/d$b;-><init>(Lcom/aggmoread/sdk/z/a/l/d;Lcom/aggmoread/sdk/z/a/l/e$a;)V

    invoke-virtual {v1, p2}, Lcom/aggmoread/sdk/z/a/t/f;->a(Lcom/aggmoread/sdk/z/a/t/f$j;)V

    new-instance p2, Lcom/aggmoread/sdk/z/a/l/d$c;

    invoke-direct {p2, p0, p3}, Lcom/aggmoread/sdk/z/a/l/d$c;-><init>(Lcom/aggmoread/sdk/z/a/l/d;Lcom/aggmoread/sdk/z/a/l/e$a;)V

    invoke-virtual {v1, p2}, Lcom/aggmoread/sdk/z/a/t/f;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance p2, Lcom/aggmoread/sdk/z/a/l/d$d;

    invoke-direct {p2, p0, p3}, Lcom/aggmoread/sdk/z/a/l/d$d;-><init>(Lcom/aggmoread/sdk/z/a/l/d;Lcom/aggmoread/sdk/z/a/l/e$a;)V

    invoke-virtual {v1, p2}, Lcom/aggmoread/sdk/z/a/t/f;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance p2, Lcom/aggmoread/sdk/z/a/l/d$e;

    invoke-direct {p2, p0, p3}, Lcom/aggmoread/sdk/z/a/l/d$e;-><init>(Lcom/aggmoread/sdk/z/a/l/d;Lcom/aggmoread/sdk/z/a/l/e$a;)V

    invoke-virtual {v1, p2}, Lcom/aggmoread/sdk/z/a/t/f;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/l/d;->a:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->q()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c

    invoke-virtual {v1, p2}, Lcom/aggmoread/sdk/z/a/t/f;->a(Ljava/lang/String;)V

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/t/f;->d()V

    goto :goto_4

    :cond_b
    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/l/d;->a:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    iget-object p2, p2, Lcom/aggmoread/sdk/z/a/g/c$a$b;->w:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Lcom/aggmoread/sdk/z/a/t/a;->a(Landroid/graphics/Bitmap;)V

    :cond_c
    :goto_4
    return-void
.end method

.method public b()Lcom/aggmoread/sdk/z/a/g/a;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->a:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/g/c$a$b;->v:Lcom/aggmoread/sdk/z/a/g/a;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->a:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->n()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 3

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/l/d;->g()V

    sget-object v0, Lcom/aggmoread/sdk/z/a/l/d;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchDraw enter , SdkHelper.isShown(nativeAdViewExt) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/l/d;->f:Lcom/aggmoread/sdk/z/a/u/d;

    invoke-static {v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->a:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->p()I

    move-result v0

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->a:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->a:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->m()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->a:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->n()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->a:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/g/c$a$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->g:Lcom/aggmoread/sdk/z/a/t/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->f()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoDuration()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->g:Lcom/aggmoread/sdk/z/a/t/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->e()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAppAd()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->a:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->t()Z

    move-result v0

    return v0
.end method

.method public isVideoAd()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->a:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/l/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "abort click , reason: hasExporsed = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->d:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , isClicked = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JHAIMPTAG"

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->h:J

    iget v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->e:I

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->b:Lcom/aggmoread/sdk/z/a/l/f;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/l/f;->onADClicked()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->f:Lcom/aggmoread/sdk/z/a/u/d;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/u/d;->c:Lcom/aggmoread/sdk/z/a/g/d;

    sget-object v1, Lcom/aggmoread/sdk/z/a/l/d;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feedsListFrameLayout2 juHeApiAdUrlDefine = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v0, Lcom/aggmoread/sdk/z/a/g/d;->a:I

    int-to-float v2, v2

    iget v3, v0, Lcom/aggmoread/sdk/z/a/g/d;->e:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, v0, Lcom/aggmoread/sdk/z/a/g/d;->b:I

    int-to-float v3, v3

    iget v4, v0, Lcom/aggmoread/sdk/z/a/g/d;->f:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action e x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " ,y = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/l/d;->a:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/a/g/c$a$b;->r:Ljava/util/List;

    const-string v2, "onAdClick"

    invoke-static {v2, v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;Lcom/aggmoread/sdk/z/a/g/d;)Ljava/util/List;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/l/d;->c:Lcom/aggmoread/sdk/z/a/g/c;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/l/d;->a:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/l/d;->b:Lcom/aggmoread/sdk/z/a/l/f;

    invoke-static {p1, v1, v2, v0, v3}, Lcom/aggmoread/sdk/z/a/m/l;->a(Landroid/view/View;Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/g/c$a$b;Lcom/aggmoread/sdk/z/a/g/d;Lcom/aggmoread/sdk/z/a/i/h;)V

    return-void
.end method

.method public onScrollChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/l/d;->g()V

    return-void
.end method

.method public pauseVideo()V
    .locals 2

    const-string v0, "JHAIMPTAG"

    const-string v1, "pauseVideo"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->g:Lcom/aggmoread/sdk/z/a/t/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->b()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    const-string v0, "JHAIMPTAG"

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/l/d;->resumeVideo()V

    return-void
.end method

.method public resumeVideo()V
    .locals 2

    const-string v0, "JHAIMPTAG"

    const-string v1, "resumeVideo"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->g:Lcom/aggmoread/sdk/z/a/t/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->g:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->d()V

    :cond_0
    return-void
.end method

.method public startVideo()V
    .locals 2

    const-string v0, "JHAIMPTAG"

    const-string v1, "startVideo"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->g:Lcom/aggmoread/sdk/z/a/t/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->d()V

    :cond_0
    return-void
.end method

.method public stopVideo()V
    .locals 2

    const-string v0, "JHAIMPTAG"

    const-string v1, "stopVideo"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/l/d;->g:Lcom/aggmoread/sdk/z/a/t/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->q()V

    :cond_0
    return-void
.end method
