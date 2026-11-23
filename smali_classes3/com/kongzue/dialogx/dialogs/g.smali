.class public Lcom/kongzue/dialogx/dialogs/g;
.super Lcom/kongzue/dialogx/interfaces/BaseDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/dialogs/g$e;
    }
.end annotation


# static fields
.field public static h2:I = -0x1

.field public static i2:I = -0x1

.field public static j2:I

.field public static k2:I

.field public static l2:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;


# instance fields
.field protected L1:Lcom/kongzue/dialogx/util/TextInfo;

.field protected M:Z

.field protected N:Lcom/kongzue/dialogx/interfaces/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;"
        }
    .end annotation
.end field

.field protected O:Lcom/kongzue/dialogx/dialogs/g;

.field protected P:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

.field protected Q:I

.field protected R:I

.field protected R1:Lcom/kongzue/dialogx/util/TextInfo;

.field protected S:Lcom/kongzue/dialogx/interfaces/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;"
        }
    .end annotation
.end field

.field protected T:Lcom/kongzue/dialogx/interfaces/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;"
        }
    .end annotation
.end field

.field protected U:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

.field protected V:Lcom/kongzue/dialogx/interfaces/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;"
        }
    .end annotation
.end field

.field protected V1:Lcom/kongzue/dialogx/util/TextInfo;

.field protected W:Lcom/kongzue/dialogx/interfaces/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;"
        }
    .end annotation
.end field

.field protected X:Ljava/lang/CharSequence;

.field protected Y:Ljava/lang/CharSequence;

.field protected Z:Ljava/lang/CharSequence;

.field protected a2:Lcom/kongzue/dialogx/util/j;

.field protected b1:Ljava/lang/CharSequence;

.field protected b2:Lcom/kongzue/dialogx/interfaces/a;

.field protected c2:Lcom/kongzue/dialogx/interfaces/a;

.field protected d2:Lcom/kongzue/dialogx/interfaces/a;

.field protected e2:I

.field protected f1:Ljava/lang/String;

.field protected f2:Lcom/kongzue/dialogx/dialogs/g$e;

.field protected g2:Z

.field protected i1:Ljava/lang/String;

.field protected l1:Ljava/lang/Integer;

.field protected p0:Ljava/lang/CharSequence;

.field protected p1:F

.field protected q1:Landroid/graphics/drawable/Drawable;

.field protected r1:Lcom/kongzue/dialogx/util/TextInfo;

.field protected v1:Lcom/kongzue/dialogx/util/TextInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/g;->M:Z

    .line 3
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 4
    sget-object v0, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->U:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->l1:Ljava/lang/Integer;

    .line 6
    sget v0, Lcom/kongzue/dialogx/DialogX;->M:I

    int-to-float v0, v0

    iput v0, p0, Lcom/kongzue/dialogx/dialogs/g;->p1:F

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/g;->M:Z

    .line 42
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 43
    sget-object v0, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->U:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->l1:Ljava/lang/Integer;

    .line 45
    sget v0, Lcom/kongzue/dialogx/DialogX;->M:I

    int-to-float v0, v0

    iput v0, p0, Lcom/kongzue/dialogx/dialogs/g;->p1:F

    .line 46
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 47
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/g;->M:Z

    .line 33
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 34
    sget-object v0, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->U:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->l1:Ljava/lang/Integer;

    .line 36
    sget v0, Lcom/kongzue/dialogx/DialogX;->M:I

    int-to-float v0, v0

    iput v0, p0, Lcom/kongzue/dialogx/dialogs/g;->p1:F

    .line 37
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 38
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 39
    invoke-virtual {p0, p3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/g;->M:Z

    .line 60
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 61
    sget-object v0, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->U:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->l1:Ljava/lang/Integer;

    .line 63
    sget v0, Lcom/kongzue/dialogx/DialogX;->M:I

    int-to-float v0, v0

    iput v0, p0, Lcom/kongzue/dialogx/dialogs/g;->p1:F

    .line 64
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 65
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 66
    invoke-virtual {p0, p3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {p0, p4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/g;->M:Z

    .line 81
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 82
    sget-object v0, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->U:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->l1:Ljava/lang/Integer;

    .line 84
    sget v0, Lcom/kongzue/dialogx/DialogX;->M:I

    int-to-float v0, v0

    iput v0, p0, Lcom/kongzue/dialogx/dialogs/g;->p1:F

    .line 85
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 86
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p0, p3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {p0, p4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {p0, p5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/g;->M:Z

    .line 9
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 10
    sget-object v0, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->U:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->l1:Ljava/lang/Integer;

    .line 12
    sget v0, Lcom/kongzue/dialogx/DialogX;->M:I

    int-to-float v0, v0

    iput v0, p0, Lcom/kongzue/dialogx/dialogs/g;->p1:F

    .line 13
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/g;->M:Z

    .line 16
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 17
    sget-object v0, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->U:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->l1:Ljava/lang/Integer;

    .line 19
    sget v0, Lcom/kongzue/dialogx/DialogX;->M:I

    int-to-float v0, v0

    iput v0, p0, Lcom/kongzue/dialogx/dialogs/g;->p1:F

    .line 20
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 21
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/g;->M:Z

    .line 24
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 25
    sget-object v0, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->U:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->l1:Ljava/lang/Integer;

    .line 27
    sget v0, Lcom/kongzue/dialogx/DialogX;->M:I

    int-to-float v0, v0

    iput v0, p0, Lcom/kongzue/dialogx/dialogs/g;->p1:F

    .line 28
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 29
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 30
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/g;->M:Z

    .line 50
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 51
    sget-object v0, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->U:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->l1:Ljava/lang/Integer;

    .line 53
    sget v0, Lcom/kongzue/dialogx/DialogX;->M:I

    int-to-float v0, v0

    iput v0, p0, Lcom/kongzue/dialogx/dialogs/g;->p1:F

    .line 54
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 55
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 56
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 57
    iput-object p4, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/g;->M:Z

    .line 70
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 71
    sget-object v0, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->U:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->l1:Ljava/lang/Integer;

    .line 73
    sget v0, Lcom/kongzue/dialogx/DialogX;->M:I

    int-to-float v0, v0

    iput v0, p0, Lcom/kongzue/dialogx/dialogs/g;->p1:F

    .line 74
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 75
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 76
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 77
    iput-object p4, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 78
    iput-object p5, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic A1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic A2(Lcom/kongzue/dialogx/dialogs/g;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic B1(Lcom/kongzue/dialogx/dialogs/g;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic B2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic C1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic D1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic E1(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n0(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static E4(II)Lcom/kongzue/dialogx/dialogs/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/g;-><init>(II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic F1(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n0(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static F2()Lcom/kongzue/dialogx/dialogs/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static F4(III)Lcom/kongzue/dialogx/dialogs/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/g;-><init>(III)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic G1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static G2(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/g;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/g;->u4(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/g;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static G4(IIII)Lcom/kongzue/dialogx/dialogs/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/g;-><init>(IIII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic H1(Lcom/kongzue/dialogx/dialogs/g;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static H2(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/g;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/g;->I3(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/g;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static H4(IIIII)Lcom/kongzue/dialogx/dialogs/g;
    .locals 7

    .line 1
    new-instance v6, Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move v1, p0

    .line 5
    move v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/kongzue/dialogx/dialogs/g;-><init>(IIIII)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 13
    .line 14
    .line 15
    return-object v6
.end method

.method static synthetic I1(Lcom/kongzue/dialogx/dialogs/g;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static I4(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/g;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic J1(Lcom/kongzue/dialogx/dialogs/g;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static J4(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/g;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic K1(Lcom/kongzue/dialogx/dialogs/g;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static K4(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/g;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic L1(Lcom/kongzue/dialogx/dialogs/g;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static L4(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 7

    .line 1
    new-instance v6, Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/kongzue/dialogx/dialogs/g;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 13
    .line 14
    .line 15
    return-object v6
.end method

.method static synthetic M1(Lcom/kongzue/dialogx/dialogs/g;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic N1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic O1(Lcom/kongzue/dialogx/dialogs/g;I)I
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

.method static synthetic P1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Q1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic R1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic S1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic T0(Lcom/kongzue/dialogx/dialogs/g;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->H0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic T1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic U0(Lcom/kongzue/dialogx/dialogs/g;Landroid/view/View;)Ljava/util/List;
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

.method static synthetic U1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic V0(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic V1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic W0(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic W1(Lcom/kongzue/dialogx/dialogs/g;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic X0(Lcom/kongzue/dialogx/dialogs/g;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->G(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic X1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Y0(Lcom/kongzue/dialogx/dialogs/g;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic Y1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Z0(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Z1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic a1(Lcom/kongzue/dialogx/dialogs/g;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D(Ljava/lang/Float;)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic a2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d1(Lcom/kongzue/dialogx/dialogs/g;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f1(Lcom/kongzue/dialogx/dialogs/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->u:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g1(Lcom/kongzue/dialogx/dialogs/g;Landroid/widget/EditText;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->a0(Landroid/widget/EditText;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h1(Lcom/kongzue/dialogx/dialogs/g;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic h2(Lcom/kongzue/dialogx/dialogs/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i1(Lcom/kongzue/dialogx/dialogs/g;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j1(Lcom/kongzue/dialogx/dialogs/g;Landroid/widget/EditText;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->a0(Landroid/widget/EditText;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k1(Lcom/kongzue/dialogx/dialogs/g;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->Z(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l1(Lcom/kongzue/dialogx/dialogs/g;Landroid/widget/EditText;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->a0(Landroid/widget/EditText;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m1(Lcom/kongzue/dialogx/dialogs/g;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->Z(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n1(Lcom/kongzue/dialogx/dialogs/g;Landroid/widget/EditText;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->a0(Landroid/widget/EditText;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n2(Lcom/kongzue/dialogx/dialogs/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o1(Lcom/kongzue/dialogx/dialogs/g;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->Z(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o2(Lcom/kongzue/dialogx/dialogs/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p1(Lcom/kongzue/dialogx/dialogs/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic p2(Lcom/kongzue/dialogx/dialogs/g;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic q1(Lcom/kongzue/dialogx/dialogs/g;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic q2(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r1(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n0(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r2(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E0(Ljava/lang/Runnable;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s1(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n0(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t1(Lcom/kongzue/dialogx/dialogs/g;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u1(Lcom/kongzue/dialogx/dialogs/g;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v1(Lcom/kongzue/dialogx/dialogs/g;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic w1(Lcom/kongzue/dialogx/dialogs/g;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic w2(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x2(Lcom/kongzue/dialogx/dialogs/g;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic y1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic y2(Lcom/kongzue/dialogx/dialogs/g;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic z1(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic z2(Lcom/kongzue/dialogx/dialogs/g;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public A0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->h:Landroid/widget/RelativeLayout;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->h:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->g:Landroid/view/ViewGroup;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->g:Landroid/view/ViewGroup;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->d(Z)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_material:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_material_dark:I

    .line 73
    .line 74
    :cond_4
    :goto_0
    const-wide/16 v1, 0x0

    .line 75
    .line 76
    iput-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v1, Lcom/kongzue/dialogx/dialogs/g$e;

    .line 83
    .line 84
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/g$e;-><init>(Lcom/kongzue/dialogx/dialogs/g;Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/g;->f2:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_5
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public A3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public A4(Landroid/graphics/Bitmap;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->q1:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public B3(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public B4(Landroid/graphics/drawable/Drawable;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->q1:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public C2(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public C3(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public C4(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public D2(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->f(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public D3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public D4()Lcom/kongzue/dialogx/dialogs/g;
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
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/g;->g2:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g$e;->d()Lcom/kongzue/dialogx/interfaces/g;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/kongzue/dialogx/interfaces/g;->b(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-object p0

    .line 61
    :cond_1
    invoke-super {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->e()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-nez v0, :cond_5

    .line 69
    .line 70
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->d(Z)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_material:I

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_material_dark:I

    .line 92
    .line 93
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v1, Lcom/kongzue/dialogx/dialogs/g$e;

    .line 98
    .line 99
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/g$e;-><init>(Lcom/kongzue/dialogx/dialogs/g;Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/g;->f2:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    :goto_2
    return-object p0
.end method

.method public E2()Lcom/kongzue/dialogx/dialogs/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/g;->w4(I)Lcom/kongzue/dialogx/dialogs/g;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public E3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public bridge synthetic F0(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/g;->J3(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public F3(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public G3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public H3(Z)Lcom/kongzue/dialogx/dialogs/g;
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->P:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public bridge synthetic I0(Z)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/g;->N3(Z)Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public I2(I)Lcom/kongzue/dialogx/dialogs/g;
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

.method public I3(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->N:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public J2()Lcom/kongzue/dialogx/dialogs/g;
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

.method public J3(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/g;
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

.method public K2()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/g$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/g$b;-><init>(Lcom/kongzue/dialogx/dialogs/g;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public K3(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->g:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic L0(I)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/g;->w4(I)Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public L2()I
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

.method public L3(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->V:Lcom/kongzue/dialogx/interfaces/f;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/interfaces/f;->b(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method

.method public bridge synthetic M0()Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public M2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/g;->e2:I

    .line 2
    .line 3
    return v0
.end method

.method public M3(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->S:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public M4(Landroid/app/Activity;)V
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
    if-nez v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->d(Z)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_material:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_material_dark:I

    .line 32
    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lcom/kongzue/dialogx/dialogs/g$e;

    .line 38
    .line 39
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/g$e;-><init>(Lcom/kongzue/dialogx/dialogs/g;Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/g;->f2:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N0(Landroid/app/Activity;Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N0(Landroid/app/Activity;Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    return-void
.end method

.method public N2()Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->U:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 2
    .line 3
    return-object v0
.end method

.method public N3(Z)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public O2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public O3(J)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-object p0
.end method

.method public P2()Lcom/kongzue/dialogx/interfaces/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    check-cast v0, Lcom/kongzue/dialogx/interfaces/t;

    .line 4
    .line 5
    return-object v0
.end method

.method public P3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Q:I

    .line 2
    .line 3
    return-object p0
.end method

.method protected Q0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->K2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public Q2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public Q3(J)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-object p0
.end method

.method public R2()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->N:Lcom/kongzue/dialogx/interfaces/r;

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

.method public R3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/g;->R:I

    .line 2
    .line 3
    return-object p0
.end method

.method public S2()Lcom/kongzue/dialogx/dialogs/g$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->f2:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 2
    .line 3
    return-object v0
.end method

.method public S3(Z)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->d:I

    .line 2
    .line 3
    return-object p0
.end method

.method public T2()Lcom/kongzue/dialogx/interfaces/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->V:Lcom/kongzue/dialogx/interfaces/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kongzue/dialogx/dialogs/g$c;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/g$c;-><init>(Lcom/kongzue/dialogx/dialogs/g;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object v0
.end method

.method public T3(I)Lcom/kongzue/dialogx/dialogs/g;
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->l1:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public U2()Lcom/kongzue/dialogx/interfaces/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->S:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public U3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->z:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public V2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public V3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->y:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public W2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public W3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public X2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->f2:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const-string v0, ""

    .line 17
    .line 18
    return-object v0
.end method

.method public X3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public Y2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public Y3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public Z2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public Z3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->B:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public a3()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public a4(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->A:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public b3()Lcom/kongzue/dialogx/interfaces/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->b2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    check-cast v0, Lcom/kongzue/dialogx/interfaces/t;

    .line 4
    .line 5
    return-object v0
.end method

.method public b4(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public c3()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public c4(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->b2:Lcom/kongzue/dialogx/interfaces/a;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public d3()Lcom/kongzue/dialogx/interfaces/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->T:Lcom/kongzue/dialogx/interfaces/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public d4(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public e3()Lcom/kongzue/dialogx/interfaces/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->W:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public e4(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public f0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->P:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

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
    sget-object v0, Lcom/kongzue/dialogx/dialogs/g;->l2:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

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

.method public f3()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public f4(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->b2:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public g3()Lcom/kongzue/dialogx/interfaces/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->d2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    check-cast v0, Lcom/kongzue/dialogx/interfaces/t;

    .line 4
    .line 5
    return-object v0
.end method

.method public g4(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->K2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public h3()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public h4(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public i3()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/g;->p1:F

    .line 2
    .line 3
    return v0
.end method

.method public i4(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->T:Lcom/kongzue/dialogx/interfaces/p;

    .line 2
    .line 3
    return-object p0
.end method

.method public j3()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public j4(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->W:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
    return-object p0
.end method

.method public k3()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->q1:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public k4(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public l3()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public l4(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->d2:Lcom/kongzue/dialogx/interfaces/a;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public m3()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/g;->g2:Z

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

.method public m4(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->d2:Lcom/kongzue/dialogx/interfaces/a;

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

.method public n3()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/g;->g2:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g$e;->d()Lcom/kongzue/dialogx/interfaces/g;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/kongzue/dialogx/interfaces/g;->a(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/kongzue/dialogx/dialogs/g$d;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/g$d;-><init>(Lcom/kongzue/dialogx/dialogs/g;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/dialogs/g$e;->f(Landroid/view/animation/Animation;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    invoke-static {v0, v1, v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E0(Ljava/lang/Runnable;J)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public n4(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public o3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/g;->M:Z

    .line 2
    .line 3
    return v0
.end method

.method public o4(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->d2:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public p3(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m:Lcom/kongzue/dialogx/interfaces/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public p4(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->d2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method protected q3(Lcom/kongzue/dialogx/dialogs/g;)V
    .locals 0

    .line 1
    return-void
.end method

.method public q4(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public r3(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
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

.method public r4(F)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p1:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method protected s3(Lcom/kongzue/dialogx/dialogs/g;)V
    .locals 0

    .line 1
    return-void
.end method

.method public s4(I)Lcom/kongzue/dialogx/dialogs/g;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public t3()Lcom/kongzue/dialogx/dialogs/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->N:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->clean()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public t4(IIII)Lcom/kongzue/dialogx/dialogs/g;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public u3(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/g;"
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

.method public u4(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public v3(II)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Q:I

    .line 2
    .line 3
    iput p2, p0, Lcom/kongzue/dialogx/dialogs/g;->R:I

    .line 4
    .line 5
    return-object p0
.end method

.method public v4(Lcom/kongzue/dialogx/DialogX$THEME;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->t:Lcom/kongzue/dialogx/DialogX$THEME;

    .line 2
    .line 3
    return-object p0
.end method

.method public w3(I)Lcom/kongzue/dialogx/dialogs/g;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public w4(I)Lcom/kongzue/dialogx/dialogs/g;
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

.method public x0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

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
    new-instance v0, Lcom/kongzue/dialogx/dialogs/g$a;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/g$a;-><init>(Lcom/kongzue/dialogx/dialogs/g;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public x3(I)Lcom/kongzue/dialogx/dialogs/g;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public x4(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public y3(Z)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/g;->M:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public y4(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public z3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/g;->e2:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public z4(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->q1:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method
