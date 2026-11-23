.class public Lcom/kongzue/dialogx/dialogs/CustomDialog;
.super Lcom/kongzue/dialogx/interfaces/BaseDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/dialogs/CustomDialog$f;,
        Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;
    }
.end annotation


# static fields
.field public static L1:I = -0x1

.field public static R1:I = 0x0

.field public static V1:I = 0x0

.field public static a2:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN; = null

.field public static v1:I = -0x1


# instance fields
.field protected M:Lcom/kongzue/dialogx/interfaces/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected N:Lcom/kongzue/dialogx/interfaces/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected O:Lcom/kongzue/dialogx/interfaces/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected P:Lcom/kongzue/dialogx/dialogs/CustomDialog;

.field protected Q:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

.field protected R:I

.field protected S:I

.field protected T:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

.field protected U:I

.field protected V:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

.field protected W:Z

.field protected X:Lcom/kongzue/dialogx/interfaces/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected Y:Lcom/kongzue/dialogx/interfaces/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected Z:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected b1:I

.field protected f1:I

.field protected i1:[I

.field protected l1:[I

.field protected p0:I

.field private p1:Landroid/view/ViewTreeObserver;

.field private q1:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field protected r1:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 3
    sget v0, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_enter:I

    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->R:I

    .line 4
    sget v0, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_exit:I

    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->S:I

    .line 5
    sget-object v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;->CENTER:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->T:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->U:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->W:Z

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p0:I

    .line 9
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->b1:I

    .line 10
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->f1:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 11
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    return-void
.end method

.method public constructor <init>(Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 13
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 14
    sget v0, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_enter:I

    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->R:I

    .line 15
    sget v0, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_exit:I

    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->S:I

    .line 16
    sget-object v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;->CENTER:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->T:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->U:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->W:Z

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p0:I

    .line 20
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->b1:I

    .line 21
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->f1:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 22
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 23
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public static A1()Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static B1(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->D2(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method static synthetic T0(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->H0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private T1()Landroid/view/animation/Animation;
    .locals 8

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->R:I

    .line 2
    .line 3
    sget v1, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_enter:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->S:I

    .line 8
    .line 9
    sget v2, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_exit:I

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$e;->a:[I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->T:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    aget v0, v0, v1

    .line 28
    .line 29
    packed-switch v0, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    :pswitch_0
    goto :goto_0

    .line 33
    :pswitch_1
    sget v0, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_bottom_enter:I

    .line 34
    .line 35
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->R:I

    .line 36
    .line 37
    sget v0, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_bottom_exit:I

    .line 38
    .line 39
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->S:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_2
    sget v0, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_right_enter:I

    .line 43
    .line 44
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->R:I

    .line 45
    .line 46
    sget v0, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_right_exit:I

    .line 47
    .line 48
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->S:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_3
    sget v0, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_left_enter:I

    .line 52
    .line 53
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->R:I

    .line 54
    .line 55
    sget v0, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_left_exit:I

    .line 56
    .line 57
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->S:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_4
    sget v0, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_top_enter:I

    .line 61
    .line 62
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->R:I

    .line 63
    .line 64
    sget v0, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_top_exit:I

    .line 65
    .line 66
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->S:I

    .line 67
    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->R:I

    .line 73
    .line 74
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 79
    .line 80
    const/high16 v2, 0x40000000    # 2.0f

    .line 81
    .line 82
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_0
    sget v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->R1:I

    .line 90
    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    move v1, v0

    .line 94
    :cond_1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->R:I

    .line 95
    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    move v1, v0

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :goto_1
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    .line 108
    .line 109
    .line 110
    move-result-wide v1

    .line 111
    sget v3, Lcom/kongzue/dialogx/dialogs/CustomDialog;->v1:I

    .line 112
    .line 113
    if-ltz v3, :cond_3

    .line 114
    .line 115
    int-to-long v1, v3

    .line 116
    :cond_3
    iget-wide v3, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 117
    .line 118
    const-wide/16 v5, 0x0

    .line 119
    .line 120
    cmp-long v7, v3, v5

    .line 121
    .line 122
    if-ltz v7, :cond_4

    .line 123
    .line 124
    move-wide v1, v3

    .line 125
    :cond_4
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 126
    .line 127
    .line 128
    return-object v0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic U0(Lcom/kongzue/dialogx/dialogs/CustomDialog;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic V0(Lcom/kongzue/dialogx/dialogs/CustomDialog;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic W0(Lcom/kongzue/dialogx/dialogs/CustomDialog;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic X0(Lcom/kongzue/dialogx/dialogs/CustomDialog;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Y0(Lcom/kongzue/dialogx/dialogs/CustomDialog;)Landroid/view/ViewTreeObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p1:Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Z0(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p1:Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic a1(Lcom/kongzue/dialogx/dialogs/CustomDialog;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->q1:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->q1:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c1(Lcom/kongzue/dialogx/dialogs/CustomDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->m2(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e1(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static e3(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->c3()Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic f1(Lcom/kongzue/dialogx/dialogs/CustomDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D:Z

    .line 2
    .line 3
    return p0
.end method

.method public static f3(Lcom/kongzue/dialogx/interfaces/r;Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;",
            ")",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->T:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->c3()Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method static synthetic g1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic h1(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic j1(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E0(Ljava/lang/Runnable;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k1(Lcom/kongzue/dialogx/dialogs/CustomDialog;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->T1()Landroid/view/animation/Animation;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic l1(Lcom/kongzue/dialogx/dialogs/CustomDialog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic m1(Lcom/kongzue/dialogx/dialogs/CustomDialog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private m2(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic n1(Lcom/kongzue/dialogx/dialogs/CustomDialog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic o1(Lcom/kongzue/dialogx/dialogs/CustomDialog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic p1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q1(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic s1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u1(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v1(Lcom/kongzue/dialogx/dialogs/CustomDialog;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public A0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->q1:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p1:Landroid/view/ViewTreeObserver;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-direct {p0, v1, v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->m2(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->q1:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 52
    .line 53
    invoke-direct {p0, v0, v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->m2(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->q1:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p1:Landroid/view/ViewTreeObserver;

    .line 60
    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 70
    .line 71
    :cond_3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 92
    .line 93
    .line 94
    :cond_4
    const-wide/16 v0, 0x0

    .line 95
    .line 96
    iput-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 97
    .line 98
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_custom:I

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 105
    .line 106
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Q:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 110
    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_5
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public A2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public B2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->W:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public C1(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public C2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;->TRUE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;->FALSE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 7
    .line 8
    :goto_0
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->V:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public D1()Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public D2(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public E1()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog$b;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public E2(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->k:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->k:Ljava/util/Map;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->k:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public bridge synthetic F0(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E2(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public F1()Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->T:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

    .line 2
    .line 3
    return-object v0
.end method

.method public F2(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->g:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 2
    .line 3
    return-object p0
.end method

.method public G1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p0:I

    .line 2
    .line 3
    return v0
.end method

.method public G2(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->N:Lcom/kongzue/dialogx/interfaces/f;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/interfaces/f;->b(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method

.method public H1()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public H2(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Y:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic I0(Z)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->I2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public I1()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public I2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public J1(I)I
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    aget p1, p1, v0

    .line 5
    .line 6
    return p1
.end method

.method public J2(J)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-object p0
.end method

.method public K1(I)I
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget p1, p1, v0

    .line 5
    .line 6
    return p1
.end method

.method public K2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->R:I

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic L0(I)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->a3(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public L1(I)I
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    aget p1, p1, v0

    .line 5
    .line 6
    return p1
.end method

.method public L2(J)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic M0()Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->c3()Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public M1(I)I
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    aget p1, p1, v0

    .line 5
    .line 6
    return p1
.end method

.method public M2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->S:I

    .line 2
    .line 3
    return-object p0
.end method

.method public N1()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public N2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->I2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Q:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 2
    .line 3
    return-object v0
.end method

.method public O2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->f1:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public P1()Lcom/kongzue/dialogx/interfaces/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->N:Lcom/kongzue/dialogx/interfaces/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$c;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog$c;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object v0
.end method

.method public P2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->U:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method protected Q0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public Q1()Lcom/kongzue/dialogx/interfaces/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Y:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public Q2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->z:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public R1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public R2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->y:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public S1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->R:I

    .line 2
    .line 3
    return v0
.end method

.method public S2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->B:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public T2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->A:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public U1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public U2(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O:Lcom/kongzue/dialogx/interfaces/p;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public V1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->S:I

    .line 2
    .line 3
    return v0
.end method

.method public V2(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->X:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
    return-object p0
.end method

.method public W1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->f1:I

    .line 2
    .line 3
    return v0
.end method

.method public W2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    filled-new-array {p1, p1, p1, p1}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public X1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->U:I

    .line 2
    .line 3
    return v0
.end method

.method public X2(IIII)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    filled-new-array {p1, p2, p3, p4}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public Y1()Lcom/kongzue/dialogx/interfaces/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O:Lcom/kongzue/dialogx/interfaces/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public Y2(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public Z1()Lcom/kongzue/dialogx/interfaces/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->X:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public Z2(Lcom/kongzue/dialogx/DialogX$THEME;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->t:Lcom/kongzue/dialogx/DialogX$THEME;

    .line 2
    .line 3
    return-object p0
.end method

.method public a2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->b1:I

    .line 2
    .line 3
    return v0
.end method

.method public a3(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    int-to-float p1, p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public b2()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->r1:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public b3(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->b1:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public c2()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->r1:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->c()Lcom/kongzue/dialogx/interfaces/g;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 25
    .line 26
    invoke-virtual {v0, p0, v1}, Lcom/kongzue/dialogx/interfaces/g;->a(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$d;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog$d;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e(Landroid/view/animation/Animation;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-static {v0, v1, v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E0(Ljava/lang/Runnable;J)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public c3()Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->r1:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->c()Lcom/kongzue/dialogx/interfaces/g;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 54
    .line 55
    invoke-virtual {v0, p0, v2}, Lcom/kongzue/dialogx/interfaces/g;->b(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->T1()Landroid/view/animation/Animation;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-object p0

    .line 89
    :cond_1
    invoke-super {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->e()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_custom:I

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 105
    .line 106
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Q:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 110
    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 127
    .line 128
    .line 129
    :goto_1
    return-object p0
.end method

.method public d2(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p0:I

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method public d3(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->e()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_custom:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 17
    .line 18
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Q:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N0(Landroid/app/Activity;Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N0(Landroid/app/Activity;Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-object p0
.end method

.method public e2()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->g0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public f0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->V:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v3, Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;->TRUE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 8
    .line 9
    if-ne v0, v3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    return v1

    .line 14
    :cond_1
    sget-object v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->a2:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    sget-object v3, Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;->TRUE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 19
    .line 20
    if-ne v0, v3, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const/4 v1, 0x0

    .line 24
    :goto_1
    return v1

    .line 25
    :cond_3
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q:Z

    .line 26
    .line 27
    return v0
.end method

.method public f2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->W:Z

    .line 2
    .line 3
    return v0
.end method

.method public g2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m:Lcom/kongzue/dialogx/interfaces/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected h2(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected i2([I)V
    .locals 0

    .line 1
    return-void
.end method

.method public j2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->l:Lcom/kongzue/dialogx/interfaces/i;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m0()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->l:Lcom/kongzue/dialogx/interfaces/i;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1, p0}, Lcom/kongzue/dialogx/interfaces/i;->run(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method protected k2(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    return-void
.end method

.method public l2()Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->clean()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "("

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ")"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public n2(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public o2(Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->T:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public p2(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->i1:[I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->N2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public q2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p0:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x4

    .line 10
    new-array p1, p1, [I

    .line 11
    .line 12
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->i1:[I

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->i1:[I

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->N2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public r2(Landroid/view/View;I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p0:I

    .line 5
    .line 6
    const/4 p2, 0x4

    .line 7
    new-array p2, p2, [I

    .line 8
    .line 9
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->i1:[I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->N2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public s2(Landroid/view/View;IIIII)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    filled-new-array {p3, p4, p5, p6}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->r2(Landroid/view/View;I)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public t2(II)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->R:I

    .line 2
    .line 3
    iput p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->S:I

    .line 4
    .line 5
    return-object p0
.end method

.method public u2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->I2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public v2(IIII)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    filled-new-array {p1, p2, p3, p4}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method protected w1()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Z:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/View;

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method

.method public w2([I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public x0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$a;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog$a;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Z:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Z:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Z:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    :goto_0
    return-object p0
.end method

.method public x2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public y1(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->f(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public y2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public z1()Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->a3(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public z2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method
