.class public Lcom/kongzue/dialogx/dialogs/n;
.super Lcom/kongzue/dialogx/interfaces/BaseDialog;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/dialogs/n$h;
    }
.end annotation


# static fields
.field public static L1:J = -0x1L

.field public static R1:J = -0x1L

.field public static V1:I = 0x0

.field public static a2:I = 0x0

.field public static b2:I = 0x7fffffff

.field public static c2:Lcom/kongzue/dialogx/interfaces/a0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/a0<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;"
        }
    .end annotation
.end field

.field public static final r1:I = -0x1

.field protected static v1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected M:Lcom/kongzue/dialogx/interfaces/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;"
        }
    .end annotation
.end field

.field protected N:Lcom/kongzue/dialogx/interfaces/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;"
        }
    .end annotation
.end field

.field protected O:Lcom/kongzue/dialogx/dialogs/n;

.field protected P:Lcom/kongzue/dialogx/dialogs/n$h;

.field protected Q:I

.field protected R:I

.field protected S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

.field protected T:Lcom/kongzue/dialogx/interfaces/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;"
        }
    .end annotation
.end field

.field protected U:Lcom/kongzue/dialogx/interfaces/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;"
        }
    .end annotation
.end field

.field protected V:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

.field protected W:F

.field protected X:Lcom/kongzue/dialogx/interfaces/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;"
        }
    .end annotation
.end field

.field protected Y:I

.field protected Z:Ljava/lang/CharSequence;

.field protected b1:Lcom/kongzue/dialogx/util/TextInfo;

.field protected f1:Lcom/kongzue/dialogx/util/TextInfo;

.field protected i1:[I

.field protected l1:Ljava/util/Timer;

.field protected p0:Ljava/lang/CharSequence;

.field protected p1:J

.field protected q1:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 4
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 5
    sget v1, Lcom/kongzue/dialogx/DialogX;->R:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 6
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 7
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 8
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 27
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 28
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 30
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 31
    sget v1, Lcom/kongzue/dialogx/DialogX;->R:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 32
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 33
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 34
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 35
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 78
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 79
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 81
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 82
    sget v1, Lcom/kongzue/dialogx/DialogX;->R:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 83
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 84
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 85
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 86
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->p0:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .line 57
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 58
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 60
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 61
    sget v1, Lcom/kongzue/dialogx/DialogX;->R:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 62
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 63
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 64
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 65
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Y:I

    .line 66
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {p0, p3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->p0:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(IIILcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 132
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 134
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 135
    sget v1, Lcom/kongzue/dialogx/DialogX;->R:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 136
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 137
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 138
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 139
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Y:I

    .line 140
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {p0, p3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->p0:Ljava/lang/CharSequence;

    .line 142
    iput-object p4, p0, Lcom/kongzue/dialogx/dialogs/n;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(IILcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 155
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 157
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 158
    sget v1, Lcom/kongzue/dialogx/DialogX;->R:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 159
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 160
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 161
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 162
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    .line 163
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->p0:Ljava/lang/CharSequence;

    .line 164
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/n;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(ILcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 99
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 101
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 102
    sget v1, Lcom/kongzue/dialogx/DialogX;->R:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 103
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 104
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 105
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 106
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    .line 107
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/n;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 37
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 39
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 40
    sget v1, Lcom/kongzue/dialogx/DialogX;->R:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 41
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 42
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 43
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 44
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Y:I

    .line 45
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 109
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 111
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 112
    sget v1, Lcom/kongzue/dialogx/DialogX;->R:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 113
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 114
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 115
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 116
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Y:I

    .line 117
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    .line 118
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/n;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .line 46
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 47
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 49
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 50
    sget v1, Lcom/kongzue/dialogx/DialogX;->R:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 51
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 52
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 53
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 54
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Y:I

    .line 55
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    .line 56
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/n;->p0:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 120
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 122
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 123
    sget v1, Lcom/kongzue/dialogx/DialogX;->R:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 124
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 125
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 126
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 127
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Y:I

    .line 128
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    .line 129
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/n;->p0:Ljava/lang/CharSequence;

    .line 130
    iput-object p4, p0, Lcom/kongzue/dialogx/dialogs/n;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 10
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 12
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 13
    sget v1, Lcom/kongzue/dialogx/DialogX;->R:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 14
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 15
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 16
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 17
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 19
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 21
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 22
    sget v1, Lcom/kongzue/dialogx/DialogX;->R:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 23
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 24
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 25
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 26
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 89
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 91
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 92
    sget v1, Lcom/kongzue/dialogx/DialogX;->R:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 93
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 94
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 95
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 96
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    .line 97
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/n;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 69
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 71
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 72
    sget v1, Lcom/kongzue/dialogx/DialogX;->R:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 73
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 74
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 75
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 76
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    .line 77
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/n;->p0:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 144
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 146
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 147
    sget v1, Lcom/kongzue/dialogx/DialogX;->R:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 148
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 149
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 150
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 151
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    .line 152
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/n;->p0:Ljava/lang/CharSequence;

    .line 153
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/n;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method static synthetic A1(Lcom/kongzue/dialogx/dialogs/n;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static A3(ILjava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/n;-><init>(ILjava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->u3()Lcom/kongzue/dialogx/dialogs/n;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic B1(Lcom/kongzue/dialogx/dialogs/n;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static B3(ILjava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/n;-><init>(ILjava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->u3()Lcom/kongzue/dialogx/dialogs/n;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic C1(Lcom/kongzue/dialogx/dialogs/n;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method public static C3(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/n;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->u3()Lcom/kongzue/dialogx/dialogs/n;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic D1(Lcom/kongzue/dialogx/dialogs/n;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static D3(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/n;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->u3()Lcom/kongzue/dialogx/dialogs/n;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic E1(Lcom/kongzue/dialogx/dialogs/n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic F1(Lcom/kongzue/dialogx/dialogs/n;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static F3(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/n;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->u3()Lcom/kongzue/dialogx/dialogs/n;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic G1(Lcom/kongzue/dialogx/dialogs/n;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static G3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/n;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->u3()Lcom/kongzue/dialogx/dialogs/n;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic H1(Lcom/kongzue/dialogx/dialogs/n;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E:Z

    .line 2
    .line 3
    return p1
.end method

.method public static H3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/n;-><init>(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->u3()Lcom/kongzue/dialogx/dialogs/n;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic I1(Lcom/kongzue/dialogx/dialogs/n;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static I3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/n;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->u3()Lcom/kongzue/dialogx/dialogs/n;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic J1(Lcom/kongzue/dialogx/dialogs/n;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static J3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/n;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->u3()Lcom/kongzue/dialogx/dialogs/n;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic K1(Lcom/kongzue/dialogx/dialogs/n;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic L1(Lcom/kongzue/dialogx/dialogs/n;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static N3(I)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/dialogs/n;->v3(I)Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static O3(II)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/kongzue/dialogx/dialogs/n;->w3(II)Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static P3(ILjava/lang/String;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/kongzue/dialogx/dialogs/n;->A3(ILjava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static Q1()Lcom/kongzue/dialogx/dialogs/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/n;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static Q3(ILjava/lang/String;Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/n;->C3(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static R1(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/n;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/n;->q3(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/n;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static R3(Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/dialogs/n;->G3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static S1(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/n;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/n;->S2(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/n;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static S3(Ljava/lang/String;Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/kongzue/dialogx/dialogs/n;->I3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic T0(Lcom/kongzue/dialogx/dialogs/n;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->H0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private T3()V
    .locals 3

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/16 v1, 0x8

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    sget-object v1, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .line 39
    const/16 v2, 0x18

    .line 40
    .line 41
    if-lt v1, v2, :cond_2

    .line 42
    .line 43
    new-instance v1, Lcom/kongzue/dialogx/dialogs/m;

    .line 44
    .line 45
    invoke-direct {v1}, Lcom/kongzue/dialogx/dialogs/m;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/j;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/function/Predicate;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic U0(Lcom/kongzue/dialogx/dialogs/n;Landroid/view/View;)Ljava/util/List;
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

.method static synthetic V0(Lcom/kongzue/dialogx/dialogs/n;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private V1()I
    .locals 3

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    sget-object v2, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_2

    .line 15
    .line 16
    sget-object v2, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/kongzue/dialogx/dialogs/n;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-boolean v2, v2, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return v0
.end method

.method static synthetic W0(Lcom/kongzue/dialogx/dialogs/n;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->Z(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic X0(Lcom/kongzue/dialogx/dialogs/n;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Y0(Lcom/kongzue/dialogx/dialogs/n;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Z0(Lcom/kongzue/dialogx/dialogs/n;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic a1(Lcom/kongzue/dialogx/dialogs/n;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b1(Lcom/kongzue/dialogx/dialogs/n;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c1(Lcom/kongzue/dialogx/dialogs/n;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d1(Lcom/kongzue/dialogx/dialogs/n;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e1(Lcom/kongzue/dialogx/dialogs/n;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f1(Lcom/kongzue/dialogx/dialogs/n;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g1(Lcom/kongzue/dialogx/dialogs/n;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h1(Lcom/kongzue/dialogx/dialogs/n;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i1(Lcom/kongzue/dialogx/dialogs/n;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j1(Lcom/kongzue/dialogx/dialogs/n;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->Z(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k1(Lcom/kongzue/dialogx/dialogs/n;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l1(Lcom/kongzue/dialogx/dialogs/n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic m1(Lcom/kongzue/dialogx/dialogs/n;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic n1(Lcom/kongzue/dialogx/dialogs/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/n;->T3()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o1(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E0(Ljava/lang/Runnable;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic p1(Lcom/kongzue/dialogx/dialogs/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/n;->y2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q1(Lcom/kongzue/dialogx/dialogs/n;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic r1(Lcom/kongzue/dialogx/dialogs/n;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic s1(Lcom/kongzue/dialogx/dialogs/n;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic t1(Lcom/kongzue/dialogx/dialogs/n;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic u1(Lcom/kongzue/dialogx/dialogs/n;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic v1(Lcom/kongzue/dialogx/dialogs/n;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static v3(I)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/n;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->u3()Lcom/kongzue/dialogx/dialogs/n;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic w1(Lcom/kongzue/dialogx/dialogs/n;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static w3(II)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/n;-><init>(II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->u3()Lcom/kongzue/dialogx/dialogs/n;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic x1(Lcom/kongzue/dialogx/dialogs/n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p0
.end method

.method private x2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    new-instance v1, Lcom/kongzue/dialogx/dialogs/n$b;

    .line 37
    .line 38
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/n$b;-><init>(Lcom/kongzue/dialogx/dialogs/n;Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    nop

    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method public static x3(IIILcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/n;-><init>(IIILcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->u3()Lcom/kongzue/dialogx/dialogs/n;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic y1(Lcom/kongzue/dialogx/dialogs/n;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/n;->V1()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private y2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    new-instance v1, Lcom/kongzue/dialogx/dialogs/n$c;

    .line 37
    .line 38
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/n$c;-><init>(Lcom/kongzue/dialogx/dialogs/n;Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    nop

    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method public static y3(IILcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/n;-><init>(IILcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->u3()Lcom/kongzue/dialogx/dialogs/n;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic z1(Lcom/kongzue/dialogx/dialogs/n;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static z3(ILcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/n;-><init>(ILcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->u3()Lcom/kongzue/dialogx/dialogs/n;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public A0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->e:Landroid/widget/RelativeLayout;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->e:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    .line 33
    .line 34
    :cond_1
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->l:Z

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/lit8 v1, v1, -0x1

    .line 55
    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 v0, 0x0

    .line 64
    :goto_0
    if-eqz v0, :cond_6

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->W1()V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 71
    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 75
    .line 76
    sget-object v2, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 77
    .line 78
    invoke-direct {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-ge v1, v2, :cond_6

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Lcom/kongzue/dialogx/dialogs/n;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    sget v4, Lcom/kongzue/dialogx/dialogs/n;->b2:I

    .line 98
    .line 99
    if-ge v3, v4, :cond_4

    .line 100
    .line 101
    invoke-direct {v2}, Lcom/kongzue/dialogx/dialogs/n;->x2()V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    sget v4, Lcom/kongzue/dialogx/dialogs/n;->b2:I

    .line 110
    .line 111
    sub-int/2addr v3, v4

    .line 112
    if-gt v1, v3, :cond_5

    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/kongzue/dialogx/dialogs/n;->W1()V

    .line 115
    .line 116
    .line 117
    sget-object v3, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    invoke-direct {v2}, Lcom/kongzue/dialogx/dialogs/n;->x2()V

    .line 124
    .line 125
    .line 126
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_6
    :goto_3
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 130
    .line 131
    if-nez v0, :cond_7

    .line 132
    .line 133
    new-instance v0, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    sput-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 139
    .line 140
    :cond_7
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_8

    .line 150
    .line 151
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_poptip_material:I

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_8
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_poptip_material_dark:I

    .line 155
    .line 156
    :goto_4
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    if-eqz v1, :cond_12

    .line 163
    .line 164
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->g(Z)I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_9

    .line 179
    .line 180
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->g(Z)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    :cond_9
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 195
    .line 196
    if-nez v1, :cond_b

    .line 197
    .line 198
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 199
    .line 200
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->a()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    if-nez v1, :cond_a

    .line 209
    .line 210
    sget-object v1, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;->BOTTOM:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 211
    .line 212
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_a
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->a()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 226
    .line 227
    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->e(Z)I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    iget-object v2, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 242
    .line 243
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    invoke-virtual {v2, v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->f(Z)I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    iget v3, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 256
    .line 257
    if-nez v3, :cond_d

    .line 258
    .line 259
    sget v3, Lcom/kongzue/dialogx/dialogs/n;->V1:I

    .line 260
    .line 261
    if-nez v3, :cond_d

    .line 262
    .line 263
    if-eqz v1, :cond_c

    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_c
    sget v1, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_enter:I

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_d
    move v1, v3

    .line 270
    :goto_6
    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 271
    .line 272
    iget v1, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 273
    .line 274
    if-nez v1, :cond_f

    .line 275
    .line 276
    sget v1, Lcom/kongzue/dialogx/dialogs/n;->a2:I

    .line 277
    .line 278
    if-nez v1, :cond_f

    .line 279
    .line 280
    if-eqz v2, :cond_e

    .line 281
    .line 282
    goto :goto_7

    .line 283
    :cond_e
    sget v2, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_exit:I

    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_f
    move v2, v1

    .line 287
    :goto_7
    iput v2, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 288
    .line 289
    iget-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 290
    .line 291
    const-wide/16 v3, -0x1

    .line 292
    .line 293
    cmp-long v5, v1, v3

    .line 294
    .line 295
    if-nez v5, :cond_10

    .line 296
    .line 297
    sget-wide v1, Lcom/kongzue/dialogx/dialogs/n;->L1:J

    .line 298
    .line 299
    :cond_10
    iput-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 300
    .line 301
    iget-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 302
    .line 303
    cmp-long v5, v1, v3

    .line 304
    .line 305
    if-nez v5, :cond_11

    .line 306
    .line 307
    sget-wide v1, Lcom/kongzue/dialogx/dialogs/n;->R1:J

    .line 308
    .line 309
    :cond_11
    iput-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 310
    .line 311
    :cond_12
    const-wide/16 v1, 0x0

    .line 312
    .line 313
    iput-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 314
    .line 315
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    new-instance v1, Lcom/kongzue/dialogx/dialogs/n$h;

    .line 320
    .line 321
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/n$h;-><init>(Lcom/kongzue/dialogx/dialogs/n;Landroid/view/View;)V

    .line 322
    .line 323
    .line 324
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->P:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 325
    .line 326
    if-eqz v0, :cond_13

    .line 327
    .line 328
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 329
    .line 330
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    :cond_13
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 334
    .line 335
    .line 336
    return-void
.end method

.method public A2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m:Lcom/kongzue/dialogx/interfaces/i;

    .line 2
    .line 3
    return-object p0
.end method

.method protected B2(Lcom/kongzue/dialogx/dialogs/n;)V
    .locals 0

    .line 1
    return-void
.end method

.method public C2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
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

.method protected D2(Lcom/kongzue/dialogx/dialogs/n;)V
    .locals 0

    .line 1
    return-void
.end method

.method public E2()Lcom/kongzue/dialogx/dialogs/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->clean()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public E3(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 6

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
    if-nez v0, :cond_12

    .line 9
    .line 10
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->l:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->W1()V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    .line 52
    sget-object v1, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-ge v1, v2, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/kongzue/dialogx/dialogs/n;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    sget v4, Lcom/kongzue/dialogx/dialogs/n;->b2:I

    .line 75
    .line 76
    if-ge v3, v4, :cond_2

    .line 77
    .line 78
    invoke-direct {v2}, Lcom/kongzue/dialogx/dialogs/n;->x2()V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    sget v4, Lcom/kongzue/dialogx/dialogs/n;->b2:I

    .line 87
    .line 88
    sub-int/2addr v3, v4

    .line 89
    if-gt v1, v3, :cond_3

    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/kongzue/dialogx/dialogs/n;->W1()V

    .line 92
    .line 93
    .line 94
    sget-object v3, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-direct {v2}, Lcom/kongzue/dialogx/dialogs/n;->x2()V

    .line 101
    .line 102
    .line 103
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    :goto_3
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 107
    .line 108
    if-nez v0, :cond_5

    .line 109
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    sput-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 116
    .line 117
    :cond_5
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_poptip_material:I

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_6
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_poptip_material_dark:I

    .line 132
    .line 133
    :goto_4
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-eqz v1, :cond_10

    .line 140
    .line 141
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->g(Z)I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_7

    .line 156
    .line 157
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->g(Z)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    :cond_7
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 172
    .line 173
    if-nez v1, :cond_9

    .line 174
    .line 175
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 176
    .line 177
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->a()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-nez v1, :cond_8

    .line 186
    .line 187
    sget-object v1, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;->BOTTOM:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 188
    .line 189
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_8
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->a()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 203
    .line 204
    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 205
    .line 206
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->e(Z)I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    iget-object v2, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 219
    .line 220
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    invoke-virtual {v2, v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->f(Z)I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    iget v3, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 233
    .line 234
    if-nez v3, :cond_b

    .line 235
    .line 236
    sget v3, Lcom/kongzue/dialogx/dialogs/n;->V1:I

    .line 237
    .line 238
    if-nez v3, :cond_b

    .line 239
    .line 240
    if-eqz v1, :cond_a

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_a
    sget v1, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_enter:I

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_b
    move v1, v3

    .line 247
    :goto_6
    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 248
    .line 249
    iget v1, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 250
    .line 251
    if-nez v1, :cond_d

    .line 252
    .line 253
    sget v1, Lcom/kongzue/dialogx/dialogs/n;->a2:I

    .line 254
    .line 255
    if-nez v1, :cond_d

    .line 256
    .line 257
    if-eqz v2, :cond_c

    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_c
    sget v2, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_exit:I

    .line 261
    .line 262
    goto :goto_7

    .line 263
    :cond_d
    move v2, v1

    .line 264
    :goto_7
    iput v2, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 265
    .line 266
    iget-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 267
    .line 268
    const-wide/16 v3, -0x1

    .line 269
    .line 270
    cmp-long v5, v1, v3

    .line 271
    .line 272
    if-nez v5, :cond_e

    .line 273
    .line 274
    sget-wide v1, Lcom/kongzue/dialogx/dialogs/n;->L1:J

    .line 275
    .line 276
    :cond_e
    iput-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 277
    .line 278
    iget-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 279
    .line 280
    cmp-long v5, v1, v3

    .line 281
    .line 282
    if-nez v5, :cond_f

    .line 283
    .line 284
    sget-wide v1, Lcom/kongzue/dialogx/dialogs/n;->R1:J

    .line 285
    .line 286
    :cond_f
    iput-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 287
    .line 288
    :cond_10
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    new-instance v1, Lcom/kongzue/dialogx/dialogs/n$h;

    .line 293
    .line 294
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/n$h;-><init>(Lcom/kongzue/dialogx/dialogs/n;Landroid/view/View;)V

    .line 295
    .line 296
    .line 297
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->P:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 298
    .line 299
    if-eqz v0, :cond_11

    .line 300
    .line 301
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    :cond_11
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N0(Landroid/app/Activity;Landroid/view/View;)V

    .line 307
    .line 308
    .line 309
    goto :goto_8

    .line 310
    :cond_12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N0(Landroid/app/Activity;Landroid/view/View;)V

    .line 315
    .line 316
    .line 317
    :goto_8
    return-object p0
.end method

.method public bridge synthetic F0(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/n;->T2(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public F2()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/dialogs/n;->p1:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/kongzue/dialogx/dialogs/n;->N1(J)Lcom/kongzue/dialogx/dialogs/n;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public G2(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
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

.method public H2(Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/n$h;->c(Lcom/kongzue/dialogx/dialogs/n$h;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method public I2(II)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 2
    .line 3
    iput p2, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 4
    .line 5
    return-object p0
.end method

.method public J2(Z)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/n;->t3(Z)Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public K2(I)Lcom/kongzue/dialogx/dialogs/n;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public K3()Lcom/kongzue/dialogx/dialogs/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->z2()Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic L0(I)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/n;->s3(I)Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public L2(I)Lcom/kongzue/dialogx/dialogs/n;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public L3()Lcom/kongzue/dialogx/dialogs/n;
    .locals 2

    .line 1
    const-wide/16 v0, 0xdac

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/kongzue/dialogx/dialogs/n;->N1(J)Lcom/kongzue/dialogx/dialogs/n;

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->u3()Lcom/kongzue/dialogx/dialogs/n;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public bridge synthetic M0()Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->u3()Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public M1(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public M2(I)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->p0:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public M3()Lcom/kongzue/dialogx/dialogs/n;
    .locals 2

    .line 1
    const-wide/16 v0, 0x7d0

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/kongzue/dialogx/dialogs/n;->N1(J)Lcom/kongzue/dialogx/dialogs/n;

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->u3()Lcom/kongzue/dialogx/dialogs/n;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public N1(J)Lcom/kongzue/dialogx/dialogs/n;
    .locals 3

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/dialogs/n;->p1:J

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->l1:Ljava/util/Timer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    cmp-long v2, p1, v0

    .line 13
    .line 14
    if-gez v2, :cond_1

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    new-instance v0, Ljava/util/Timer;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->l1:Ljava/util/Timer;

    .line 23
    .line 24
    new-instance v1, Lcom/kongzue/dialogx/dialogs/n$a;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/n$a;-><init>(Lcom/kongzue/dialogx/dialogs/n;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method public N2(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->p0:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/n;->T:Lcom/kongzue/dialogx/interfaces/t;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public O1(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->f(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public O2(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->T:Lcom/kongzue/dialogx/interfaces/t;

    .line 2
    .line 3
    return-object p0
.end method

.method public P1()Lcom/kongzue/dialogx/dialogs/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/n;->s3(I)Lcom/kongzue/dialogx/dialogs/n;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public P2(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->p0:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method protected Q0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->W1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public Q2(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->p0:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/n;->T:Lcom/kongzue/dialogx/interfaces/t;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public R2(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public S2(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public T1(I)Lcom/kongzue/dialogx/dialogs/n;
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

.method public T2(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/n;
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

.method public U1()Lcom/kongzue/dialogx/dialogs/n;
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

.method public U2(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->g:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 2
    .line 3
    return-object p0
.end method

.method public V2(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->N:Lcom/kongzue/dialogx/interfaces/f;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/interfaces/f;->b(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method

.method public W1()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/n$e;-><init>(Lcom/kongzue/dialogx/dialogs/n;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public W2(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->X:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public X1()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 2
    .line 3
    return-object v0
.end method

.method public X2(J)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-object p0
.end method

.method public Y1()I
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

.method public Y2(I)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 2
    .line 3
    return-object p0
.end method

.method public Z1()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->p0:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public Z2(J)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-object p0
.end method

.method public a2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->f1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public a3(I)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 2
    .line 3
    return-object p0
.end method

.method public b2()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->M:Lcom/kongzue/dialogx/interfaces/r;

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

.method public b3(Z)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->d:I

    .line 2
    .line 3
    return-object p0
.end method

.method public c2()Lcom/kongzue/dialogx/dialogs/n$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->P:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 2
    .line 3
    return-object v0
.end method

.method public c3(I)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Y:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public d2()Lcom/kongzue/dialogx/interfaces/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->N:Lcom/kongzue/dialogx/interfaces/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n$f;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/n$f;-><init>(Lcom/kongzue/dialogx/dialogs/n;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object v0
.end method

.method public d3(IIII)Lcom/kongzue/dialogx/dialogs/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    aput p2, v0, p1

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    aput p3, v0, p1

    .line 11
    .line 12
    const/4 p1, 0x3

    .line 13
    aput p4, v0, p1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public e2()Lcom/kongzue/dialogx/interfaces/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->X:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public e3(I)Lcom/kongzue/dialogx/dialogs/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public f0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public f2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public f3(I)Lcom/kongzue/dialogx/dialogs/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public g2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public g3(I)Lcom/kongzue/dialogx/dialogs/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->W1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public h2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Y:I

    .line 2
    .line 3
    return v0
.end method

.method public h3(I)Lcom/kongzue/dialogx/dialogs/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method protected i()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public i2()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public i3(I)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public j2()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public j3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public k2()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public k3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->b1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public l2()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->i1:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public l3(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->T:Lcom/kongzue/dialogx/interfaces/t;

    .line 2
    .line 3
    return-object p0
.end method

.method public m2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->Z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public m3(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/n;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->U:Lcom/kongzue/dialogx/interfaces/t;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 4
    .line 5
    .line 6
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

.method public n2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->b1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public n3(F)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public o2()Lcom/kongzue/dialogx/interfaces/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->T:Lcom/kongzue/dialogx/interfaces/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public o3(I)Lcom/kongzue/dialogx/dialogs/n;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public p2()Lcom/kongzue/dialogx/interfaces/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/n;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->U:Lcom/kongzue/dialogx/interfaces/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public p3(IIII)Lcom/kongzue/dialogx/dialogs/n;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public q2()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/n;->W:F

    .line 2
    .line 3
    return v0
.end method

.method public q3(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public r2()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public r3(Lcom/kongzue/dialogx/DialogX$THEME;)Lcom/kongzue/dialogx/dialogs/n;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->t:Lcom/kongzue/dialogx/DialogX$THEME;

    .line 2
    .line 3
    return-object p0
.end method

.method public s2()Lcom/kongzue/dialogx/dialogs/n;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/n;->t3(Z)Lcom/kongzue/dialogx/dialogs/n;

    .line 3
    .line 4
    .line 5
    sget v0, Lcom/kongzue/dialogx/R$mipmap;->ico_dialogx_error:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->b()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->b()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :cond_0
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/n;->c3(I)Lcom/kongzue/dialogx/dialogs/n;

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method public s3(I)Lcom/kongzue/dialogx/dialogs/n;
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

.method public t2()Lcom/kongzue/dialogx/dialogs/n;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/n;->t3(Z)Lcom/kongzue/dialogx/dialogs/n;

    .line 3
    .line 4
    .line 5
    sget v0, Lcom/kongzue/dialogx/R$mipmap;->ico_dialogx_success:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->c()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->c()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :cond_0
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/n;->c3(I)Lcom/kongzue/dialogx/dialogs/n;

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method public t3(Z)Lcom/kongzue/dialogx/dialogs/n;
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n;->V:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->x0()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public u2()Lcom/kongzue/dialogx/dialogs/n;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/n;->t3(Z)Lcom/kongzue/dialogx/dialogs/n;

    .line 3
    .line 4
    .line 5
    sget v0, Lcom/kongzue/dialogx/R$mipmap;->ico_dialogx_warning:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->d()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->d()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :cond_0
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/n;->c3(I)Lcom/kongzue/dialogx/dialogs/n;

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method public u3()Lcom/kongzue/dialogx/dialogs/n;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-super {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->e()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_13

    .line 28
    .line 29
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->l:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    add-int/lit8 v1, v1, -0x1

    .line 50
    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/kongzue/dialogx/dialogs/n;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    :goto_0
    if-eqz v0, :cond_5

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->W1()V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_2
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    .line 71
    sget-object v2, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 72
    .line 73
    invoke-direct {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-ge v1, v2, :cond_5

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Lcom/kongzue/dialogx/dialogs/n;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    sget v4, Lcom/kongzue/dialogx/dialogs/n;->b2:I

    .line 93
    .line 94
    if-ge v3, v4, :cond_3

    .line 95
    .line 96
    invoke-direct {v2}, Lcom/kongzue/dialogx/dialogs/n;->x2()V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    sget v4, Lcom/kongzue/dialogx/dialogs/n;->b2:I

    .line 105
    .line 106
    sub-int/2addr v3, v4

    .line 107
    if-gt v1, v3, :cond_4

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/kongzue/dialogx/dialogs/n;->W1()V

    .line 110
    .line 111
    .line 112
    sget-object v3, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    invoke-direct {v2}, Lcom/kongzue/dialogx/dialogs/n;->x2()V

    .line 119
    .line 120
    .line 121
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    :goto_3
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 125
    .line 126
    if-nez v0, :cond_6

    .line 127
    .line 128
    new-instance v0, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .line 132
    .line 133
    sput-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 134
    .line 135
    :cond_6
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 136
    .line 137
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_poptip_material:I

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_7
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_poptip_material_dark:I

    .line 150
    .line 151
    :goto_4
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    if-eqz v1, :cond_11

    .line 158
    .line 159
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->g(Z)I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_8

    .line 174
    .line 175
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->g(Z)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    :cond_8
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 190
    .line 191
    if-nez v1, :cond_a

    .line 192
    .line 193
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->a()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    if-nez v1, :cond_9

    .line 204
    .line 205
    sget-object v1, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;->BOTTOM:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 206
    .line 207
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_9
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->a()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 221
    .line 222
    :cond_a
    :goto_5
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 223
    .line 224
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->e(Z)I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    iget-object v2, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 237
    .line 238
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    invoke-virtual {v2, v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->f(Z)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    iget v3, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 251
    .line 252
    if-nez v3, :cond_c

    .line 253
    .line 254
    sget v3, Lcom/kongzue/dialogx/dialogs/n;->V1:I

    .line 255
    .line 256
    if-nez v3, :cond_c

    .line 257
    .line 258
    if-eqz v1, :cond_b

    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_b
    sget v1, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_enter:I

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_c
    move v1, v3

    .line 265
    :goto_6
    iput v1, p0, Lcom/kongzue/dialogx/dialogs/n;->Q:I

    .line 266
    .line 267
    iget v1, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 268
    .line 269
    if-nez v1, :cond_e

    .line 270
    .line 271
    sget v1, Lcom/kongzue/dialogx/dialogs/n;->a2:I

    .line 272
    .line 273
    if-nez v1, :cond_e

    .line 274
    .line 275
    if-eqz v2, :cond_d

    .line 276
    .line 277
    goto :goto_7

    .line 278
    :cond_d
    sget v2, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_exit:I

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_e
    move v2, v1

    .line 282
    :goto_7
    iput v2, p0, Lcom/kongzue/dialogx/dialogs/n;->R:I

    .line 283
    .line 284
    iget-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 285
    .line 286
    const-wide/16 v3, -0x1

    .line 287
    .line 288
    cmp-long v5, v1, v3

    .line 289
    .line 290
    if-nez v5, :cond_f

    .line 291
    .line 292
    sget-wide v1, Lcom/kongzue/dialogx/dialogs/n;->L1:J

    .line 293
    .line 294
    :cond_f
    iput-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 295
    .line 296
    iget-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 297
    .line 298
    cmp-long v5, v1, v3

    .line 299
    .line 300
    if-nez v5, :cond_10

    .line 301
    .line 302
    sget-wide v1, Lcom/kongzue/dialogx/dialogs/n;->R1:J

    .line 303
    .line 304
    :cond_10
    iput-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 305
    .line 306
    :cond_11
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    new-instance v1, Lcom/kongzue/dialogx/dialogs/n$h;

    .line 311
    .line 312
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/n$h;-><init>(Lcom/kongzue/dialogx/dialogs/n;Landroid/view/View;)V

    .line 313
    .line 314
    .line 315
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->P:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 316
    .line 317
    if-eqz v0, :cond_12

    .line 318
    .line 319
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    :cond_12
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 325
    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_13
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 333
    .line 334
    .line 335
    :goto_8
    return-object p0
.end method

.method public v2()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->w2()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public w2()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->V:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->h()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n;->V:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 29
    .line 30
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;->TRUE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0
.end method

.method public x0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

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
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n$d;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/n$d;-><init>(Lcom/kongzue/dialogx/dialogs/n;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public z2()Lcom/kongzue/dialogx/dialogs/n;
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/kongzue/dialogx/dialogs/n;->N1(J)Lcom/kongzue/dialogx/dialogs/n;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
