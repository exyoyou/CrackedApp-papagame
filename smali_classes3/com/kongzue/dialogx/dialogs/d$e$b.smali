.class Lcom/kongzue/dialogx/dialogs/d$e$b;
.super Lcom/kongzue/dialogx/interfaces/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/d$e;->k()Lcom/kongzue/dialogx/interfaces/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kongzue/dialogx/interfaces/g<",
        "Lcom/kongzue/dialogx/dialogs/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/dialogs/d$e;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/d$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$b;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/d;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/d$e$b;->c(Lcom/kongzue/dialogx/dialogs/d;Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/d;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/d$e$b;->d(Lcom/kongzue/dialogx/dialogs/d;Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lcom/kongzue/dialogx/dialogs/d;Landroid/view/ViewGroup;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$b;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/d$e;->n()J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e$b;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v2, v1, [F

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    aput v4, v2, v3

    .line 20
    .line 21
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/d$e$b;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/d$e;->d:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    int-to-float v3, v3

    .line 30
    const/4 v4, 0x1

    .line 31
    aput v3, v2, v4

    .line 32
    .line 33
    const-string v3, "y"

    .line 34
    .line 35
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 43
    .line 44
    .line 45
    new-array v0, v1, [F

    .line 46
    .line 47
    fill-array-data v0, :array_0

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 55
    .line 56
    .line 57
    new-instance p1, Lcom/kongzue/dialogx/dialogs/d$e$b$a;

    .line 58
    .line 59
    invoke-direct {p1, p0}, Lcom/kongzue/dialogx/dialogs/d$e$b$a;-><init>(Lcom/kongzue/dialogx/dialogs/d$e$b;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public d(Lcom/kongzue/dialogx/dialogs/d;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$b;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/d$e;->d(Lcom/kongzue/dialogx/dialogs/d$e;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$b;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 7
    .line 8
    iget-object p2, p1, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getSafeHeight()F

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e$b;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 15
    .line 16
    iget v1, v0, Lcom/kongzue/dialogx/dialogs/d$e;->i:I

    .line 17
    .line 18
    int-to-float v1, v1

    .line 19
    sub-float/2addr p2, v1

    .line 20
    iput p2, p1, Lcom/kongzue/dialogx/dialogs/d$e;->h:F

    .line 21
    .line 22
    iget p1, v0, Lcom/kongzue/dialogx/dialogs/d$e;->h:F

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    cmpg-float p1, p1, p2

    .line 26
    .line 27
    if-gez p1, :cond_0

    .line 28
    .line 29
    iput p2, v0, Lcom/kongzue/dialogx/dialogs/d$e;->h:F

    .line 30
    .line 31
    :cond_0
    iget-object p1, v0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/d$e$b;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 38
    .line 39
    iget p2, p2, Lcom/kongzue/dialogx/dialogs/d$e;->h:F

    .line 40
    .line 41
    float-to-int p2, p2

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-static {v0, p1, p2, v1}, Lcom/kongzue/dialogx/dialogs/d$e;->g(Lcom/kongzue/dialogx/dialogs/d$e;IIZ)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
