.class Lcom/kongzue/dialogx/dialogs/d$e$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/d$e;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/dialogs/d$e;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/d$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$g;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e$g;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    add-float/2addr p1, v0

    .line 11
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e$g;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    sub-float/2addr v0, p1

    .line 21
    const v1, 0x37a7c5ac    # 2.0E-5f

    .line 22
    .line 23
    .line 24
    mul-float v0, v0, v1

    .line 25
    .line 26
    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    .line 28
    sub-float v0, v1, v0

    .line 29
    .line 30
    cmpl-float v2, v0, v1

    .line 31
    .line 32
    if-lez v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v1, v0

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e$g;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 37
    .line 38
    iget-object v2, v0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 39
    .line 40
    iget-boolean v2, v2, Lcom/kongzue/dialogx/dialogs/d;->P:Z

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d$e;->b:Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->setScale(F)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e$g;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/d$e;->b:Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/d;->F1()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    int-to-float v2, v2

    .line 60
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/d$e$g;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 61
    .line 62
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/kongzue/dialogx/dialogs/d;->B1()F

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/d$e$g;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 69
    .line 70
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 71
    .line 72
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    int-to-float v4, v4

    .line 77
    sub-float/2addr v4, p1

    .line 78
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$g;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 79
    .line 80
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    int-to-float p1, p1

    .line 87
    div-float/2addr v4, p1

    .line 88
    invoke-static {v0, v2, v3, v4}, Lcom/kongzue/dialogx/dialogs/d;->V0(Lcom/kongzue/dialogx/dialogs/d;FFF)F

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-virtual {v1, p1}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->setRadius(F)V

    .line 93
    .line 94
    .line 95
    :cond_1
    return-void
.end method
