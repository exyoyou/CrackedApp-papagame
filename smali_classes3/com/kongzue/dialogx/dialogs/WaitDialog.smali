.class public Lcom/kongzue/dialogx/dialogs/WaitDialog;
.super Lcom/kongzue/dialogx/interfaces/BaseDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/dialogs/WaitDialog$h;,
        Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;
    }
.end annotation


# static fields
.field public static L1:I = 0x0

.field public static R1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN; = null

.field public static q1:I = -0x1

.field public static r1:I = -0x1

.field public static v1:I


# instance fields
.field protected M:Z

.field protected N:Lcom/kongzue/dialogx/interfaces/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected O:I

.field protected P:I

.field protected Q:F

.field protected R:Lcom/kongzue/dialogx/interfaces/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected S:Lcom/kongzue/dialogx/interfaces/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected T:Ljava/lang/CharSequence;

.field protected U:J

.field protected V:F

.field protected W:I

.field protected X:Lcom/kongzue/dialogx/util/TextInfo;

.field protected Y:Ljava/lang/Integer;

.field protected Z:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

.field protected b1:Lcom/kongzue/dialogx/interfaces/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;"
        }
    .end annotation
.end field

.field private f1:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected i1:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog$h;",
            ">;"
        }
    .end annotation
.end field

.field protected l1:Ljava/util/Timer;

.field protected p0:Lcom/kongzue/dialogx/interfaces/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected p1:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->M:Z

    .line 6
    .line 7
    sget v0, Lcom/kongzue/dialogx/DialogX;->P:I

    .line 8
    .line 9
    int-to-float v0, v0

    .line 10
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Q:F

    .line 11
    .line 12
    const-wide/16 v0, 0x5dc

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->U:J

    .line 15
    .line 16
    const/high16 v0, -0x40800000    # -1.0f

    .line 17
    .line 18
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->V:F

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->W:I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y:Ljava/lang/Integer;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    invoke-static {}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->X()Landroid/app/Activity;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->b:Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->z:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q:Z

    .line 40
    .line 41
    return-void
.end method

.method static synthetic A1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static A3(Landroid/app/Activity;F)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->o2(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;->PROGRESSING:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->q3(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i3(F)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-object p0

    .line 29
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method static synthetic B1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static B3(Landroid/app/Activity;I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->o2(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;->NONE:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p3(ILcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-object p0

    .line 26
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method static synthetic C1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->H(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static C3(Landroid/app/Activity;IF)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->o2(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;->PROGRESSING:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p3(ILcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i3(F)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-object p0

    .line 29
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method static synthetic D1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static D3(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->o2(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;->NONE:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->r3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-object p0

    .line 26
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method static synthetic E1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static E3(Landroid/app/Activity;Ljava/lang/CharSequence;F)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->o2(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;->PROGRESSING:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->r3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i3(F)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-object p0

    .line 29
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method static synthetic F1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D:Z

    .line 2
    .line 3
    return p0
.end method

.method public static F3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 2

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->n2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;->NONE:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->r3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-object v0

    .line 26
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method static synthetic G1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D:Z

    .line 2
    .line 3
    return p1
.end method

.method public static G3(Ljava/lang/CharSequence;F)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 2

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->n2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;->PROGRESSING:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->r3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i3(F)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-object v0

    .line 29
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method static synthetic H1(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic I1(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E0(Ljava/lang/Runnable;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic J1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic K1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic L1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic M1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method protected static M3(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 2

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->n2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->r3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object v0

    .line 25
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method static synthetic N1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private N2(Lcom/kongzue/dialogx/dialogs/WaitDialog$h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i1:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eq v0, p1, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i1:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public static N3()Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 3

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->n2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    sget-object v2, Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;->NONE:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->r3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-object v0

    .line 27
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method static synthetic O1(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E0(Ljava/lang/Runnable;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic P1(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic R1(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N0(Landroid/app/Activity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic S1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic T0(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic T1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroid/view/View;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s(Landroid/view/View;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic U0(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic V0(Lcom/kongzue/dialogx/dialogs/WaitDialog;Lcom/kongzue/dialogx/dialogs/WaitDialog$h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->N2(Lcom/kongzue/dialogx/dialogs/WaitDialog$h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic W0(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->H0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic X0(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static X1()Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method static synthetic Y0(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Z0(Lcom/kongzue/dialogx/dialogs/WaitDialog;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p1
.end method

.method public static Z2(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->n2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->C2(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method static synthetic a1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->f1:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static a3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->n2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->D2(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method static synthetic b1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroid/view/View;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s(Landroid/view/View;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic c1(Lcom/kongzue/dialogx/dialogs/WaitDialog;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static c2()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->n2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->f2()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method static synthetic d1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static d2(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->n2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->g2(J)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method static synthetic e1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static e2(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->o2(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->f2()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method static synthetic f1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Ljava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E(Ljava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getType()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->z2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->W:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic h1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->H(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic j1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic k1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic n1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E:Z

    .line 2
    .line 3
    return p1
.end method

.method public static n2()Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->o2(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method static synthetic o1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static o2(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->X()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->d0(Landroid/app/Activity;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->Q()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 34
    .line 35
    instance-of v2, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m0()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-ne v2, p0, :cond_2

    .line 50
    .line 51
    check-cast v1, Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_3
    new-instance p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;-><init>()V

    .line 57
    .line 58
    .line 59
    return-object p0
.end method

.method static synthetic p1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static p2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->z2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T:Ljava/lang/CharSequence;

    .line 6
    .line 7
    return-object v0
.end method

.method static synthetic q1(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic w1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public static w3(F)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 2

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->n2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;->PROGRESSING:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->q3(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i3(F)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-object v0

    .line 29
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method static synthetic x1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method protected static x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static x3(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 2

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->n2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;->NONE:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p3(ILcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-object v0

    .line 26
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method static synthetic y1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static y3(IF)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 2

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->n2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;->PROGRESSING:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p3(ILcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i3(F)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-object v0

    .line 29
    :cond_1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method static synthetic z1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method protected static z2()Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->n2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method


# virtual methods
.method public A0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public A2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m:Lcom/kongzue/dialogx/interfaces/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public B2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;"
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

.method protected C2(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T:Ljava/lang/CharSequence;

    .line 6
    .line 7
    return-object p0
.end method

.method protected D2(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public E2()Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->N:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->clean()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public bridge synthetic F0(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->M2(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public F2(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;"
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

.method public G2(II)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->O:I

    .line 2
    .line 3
    iput p2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->P:I

    .line 4
    .line 5
    return-object p0
.end method

.method public H2(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method protected H3(ILcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->W:I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T:Ljava/lang/CharSequence;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p1:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public bridge synthetic I0(Z)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->R2(Z)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public I2(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method protected I3(Landroid/app/Activity;ILcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->W:I

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T:Ljava/lang/CharSequence;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p1:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->z3(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public J2(Z)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->M:Z

    .line 2
    .line 3
    return-object p0
.end method

.method protected J3(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->W:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T:Ljava/lang/CharSequence;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p1:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->z3(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public K2(Z)Lcom/kongzue/dialogx/dialogs/WaitDialog;
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Z:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method protected K3(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p1:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->W:I

    .line 11
    .line 12
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p1:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->h(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public bridge synthetic L0(I)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->o3(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public L2(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->N:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method protected L3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->W:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T:Ljava/lang/CharSequence;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p1:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public bridge synthetic M0()Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public M2(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
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

.method public O2(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->g:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 2
    .line 3
    return-object p0
.end method

.method public P2(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p0:Lcom/kongzue/dialogx/interfaces/f;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->z2()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/interfaces/f;->b(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object p0
.end method

.method protected Q0()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->c2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public Q2(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->R:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public R2(Z)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public S2(J)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-object p0
.end method

.method public T2(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->O:I

    .line 2
    .line 3
    return-object p0
.end method

.method public U1(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T:Ljava/lang/CharSequence;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    aput-object p1, v0, v1

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public U2(J)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-object p0
.end method

.method public V1(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->f(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public V2(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->P:I

    .line 2
    .line 3
    return-object p0
.end method

.method public W1()Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->o3(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public W2(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public X2(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->z:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method protected Y1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->l1:Ljava/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public Y2(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->y:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public Z1(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
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

.method public a2()Lcom/kongzue/dialogx/dialogs/WaitDialog;
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

.method public b2()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->k2()Lcom/kongzue/dialogx/interfaces/f;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/f;->a(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i1:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i1:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->f1:Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->f1:Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p0:Lcom/kongzue/dialogx/interfaces/f;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->b:Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public b3(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public c3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public d3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->X:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public e3(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->B:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public f0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Z:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

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
    sget-object v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->R1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

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
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->z:Z

    .line 26
    .line 27
    return v0
.end method

.method public f2()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 3
    .line 4
    new-instance v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$d;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$d;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public f3(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->A:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public g2(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Y1()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Timer;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->l1:Ljava/util/Timer;

    .line 10
    .line 11
    new-instance v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$e;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$e;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public g3(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->S:Lcom/kongzue/dialogx/interfaces/p;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->c2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public h2()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h3(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->b1:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
    return-object p0
.end method

.method public i0()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/DialogX;->e:Lcom/kongzue/dialogx/DialogX$THEME;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v1, Lcom/kongzue/dialogx/DialogX$THEME;->LIGHT:Lcom/kongzue/dialogx/DialogX$THEME;

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public i2()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->N:Lcom/kongzue/dialogx/interfaces/r;

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

.method public i3(F)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->V:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i1:Ljava/lang/ref/WeakReference;

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
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 12
    .line 13
    return-object v0
.end method

.method public j3(F)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Q:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public k2()Lcom/kongzue/dialogx/interfaces/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p0:Lcom/kongzue/dialogx/interfaces/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$f;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$f;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object v0
.end method

.method public k3(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public l2()Lcom/kongzue/dialogx/interfaces/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->R:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public l3(IIII)Lcom/kongzue/dialogx/dialogs/WaitDialog;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public m2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public m3(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
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

.method public n3(Lcom/kongzue/dialogx/DialogX$THEME;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->t:Lcom/kongzue/dialogx/DialogX$THEME;

    .line 2
    .line 3
    return-object p0
.end method

.method public o3(I)Lcom/kongzue/dialogx/dialogs/WaitDialog;
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

.method protected p3(ILcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->K3(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public q2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method protected q3(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->K3(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public r2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->X:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method protected r3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->T:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->K3(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->x0()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public s2()Lcom/kongzue/dialogx/interfaces/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->S:Lcom/kongzue/dialogx/interfaces/p;

    .line 2
    .line 3
    return-object v0
.end method

.method protected s3(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->U:J

    .line 2
    .line 3
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p1:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->K3(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public t2()Lcom/kongzue/dialogx/interfaces/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/WaitDialog;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->b1:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public t3(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->K3(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public u2()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->V:F

    .line 2
    .line 3
    return v0
.end method

.method protected u3(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->f1:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->H0(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public v2()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Q:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v1, v0, v1

    .line 5
    .line 6
    if-gez v1, :cond_0

    .line 7
    .line 8
    const/high16 v0, 0x41700000    # 15.0f

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o(F)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    :cond_0
    return v0
.end method

.method public v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->e()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$a;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method protected w2()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->f1:Ljava/lang/ref/WeakReference;

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
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/View;

    .line 12
    .line 13
    return-object v0
.end method

.method public x0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

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
    new-instance v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$c;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$c;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public y2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->M:Z

    .line 2
    .line 3
    return v0
.end method

.method public z3(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->e()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
