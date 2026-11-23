.class public Lcom/kongzue/dialogx/dialogs/a;
.super Lcom/kongzue/dialogx/interfaces/BaseDialog;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/dialogs/a$e;
    }
.end annotation


# static fields
.field public static h2:I = -0x1

.field public static i2:I = -0x1

.field public static j2:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;


# instance fields
.field protected L1:Lcom/kongzue/dialogx/util/TextInfo;

.field protected M:Lcom/kongzue/dialogx/interfaces/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;"
        }
    .end annotation
.end field

.field protected N:Ljava/lang/CharSequence;

.field protected O:Ljava/lang/CharSequence;

.field protected P:Ljava/lang/CharSequence;

.field protected Q:Ljava/lang/CharSequence;

.field protected R:Ljava/lang/CharSequence;

.field protected R1:Lcom/kongzue/dialogx/util/TextInfo;

.field protected S:Z

.field protected T:Z

.field protected U:Ljava/lang/Integer;

.field protected V:Lcom/kongzue/dialogx/interfaces/a;

.field protected V1:Lcom/kongzue/dialogx/util/TextInfo;

.field protected W:Lcom/kongzue/dialogx/interfaces/a;

.field protected X:Lcom/kongzue/dialogx/interfaces/a;

.field protected Y:Lcom/kongzue/dialogx/interfaces/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;"
        }
    .end annotation
.end field

.field protected Z:Lcom/kongzue/dialogx/interfaces/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;"
        }
    .end annotation
.end field

.field protected a2:Lcom/kongzue/dialogx/util/TextInfo;

.field protected b1:Z

.field protected b2:F

.field protected c2:Lcom/kongzue/dialogx/interfaces/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;"
        }
    .end annotation
.end field

.field protected d2:Lcom/kongzue/dialogx/dialogs/a;

.field protected e2:Lcom/kongzue/dialogx/dialogs/a$e;

.field protected f1:F

.field protected f2:Z

.field protected g2:Z

.field protected i1:Landroid/graphics/drawable/Drawable;

.field protected l1:Lcom/kongzue/dialogx/interfaces/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;"
        }
    .end annotation
.end field

.field protected p0:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

.field protected p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

.field protected q1:Z

.field protected r1:Lcom/kongzue/dialogx/util/TextInfo;

.field protected v1:Lcom/kongzue/dialogx/util/TextInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 5
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 6
    sget v1, Lcom/kongzue/dialogx/DialogX;->N:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 7
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 8
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 9
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 10
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 11
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 13
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    const/4 v1, 0x0

    .line 75
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 77
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 78
    sget v1, Lcom/kongzue/dialogx/DialogX;->N:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 79
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 80
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 81
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 82
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 83
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 85
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 86
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 154
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    const/4 v1, 0x0

    .line 156
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    const/4 v1, 0x0

    .line 157
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 158
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 159
    sget v1, Lcom/kongzue/dialogx/DialogX;->N:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 160
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 161
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 162
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 163
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 164
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 166
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 167
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 168
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 169
    invoke-virtual {p0, p3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    .line 120
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    const/4 v1, 0x0

    .line 122
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 124
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 125
    sget v1, Lcom/kongzue/dialogx/DialogX;->N:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 126
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 127
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 128
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 129
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 130
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 132
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 133
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 134
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 135
    invoke-virtual {p0, p3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 136
    invoke-virtual {p0, p4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(IIIILcom/kongzue/dialogx/interfaces/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)V"
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    const/4 v1, 0x0

    .line 222
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    const/4 v1, 0x0

    .line 223
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 224
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 225
    sget v1, Lcom/kongzue/dialogx/DialogX;->N:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 226
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 227
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 228
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 229
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 230
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v0, 0x0

    .line 231
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 232
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 233
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 234
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 235
    invoke-virtual {p0, p3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 236
    invoke-virtual {p0, p4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 237
    iput-object p5, p0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(IIILcom/kongzue/dialogx/interfaces/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    const/4 v1, 0x0

    .line 188
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    const/4 v1, 0x0

    .line 189
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 190
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 191
    sget v1, Lcom/kongzue/dialogx/DialogX;->N:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 192
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 193
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 194
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 195
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 196
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 198
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 199
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 200
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 201
    invoke-virtual {p0, p3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 202
    iput-object p4, p0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(IILcom/kongzue/dialogx/interfaces/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    const/4 v1, 0x0

    .line 106
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    const/4 v1, 0x0

    .line 107
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 108
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 109
    sget v1, Lcom/kongzue/dialogx/DialogX;->N:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 110
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 111
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 112
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 113
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 114
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 116
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 117
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 118
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 119
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(ILcom/kongzue/dialogx/interfaces/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 47
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 48
    sget v1, Lcom/kongzue/dialogx/DialogX;->N:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 49
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 50
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 51
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 52
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 53
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 55
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 56
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 57
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 18
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 19
    sget v1, Lcom/kongzue/dialogx/DialogX;->N:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 20
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 21
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 22
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 23
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 24
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 26
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 27
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 32
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 33
    sget v1, Lcom/kongzue/dialogx/DialogX;->N:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 34
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 35
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 36
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 37
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 38
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 40
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 41
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 42
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    const/4 v1, 0x0

    .line 60
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 62
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 63
    sget v1, Lcom/kongzue/dialogx/DialogX;->N:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 64
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 65
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 66
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 67
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 68
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 70
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 71
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 72
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    const/4 v1, 0x0

    .line 90
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 92
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 93
    sget v1, Lcom/kongzue/dialogx/DialogX;->N:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 94
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 95
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 96
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 97
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 98
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 100
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 101
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 102
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 103
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .line 170
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    const/4 v1, 0x0

    .line 172
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    const/4 v1, 0x0

    .line 173
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 174
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 175
    sget v1, Lcom/kongzue/dialogx/DialogX;->N:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 176
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 177
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 178
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 179
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 180
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v0, 0x0

    .line 181
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 182
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 183
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 184
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 185
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)V"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    const/4 v1, 0x0

    .line 205
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    const/4 v1, 0x0

    .line 206
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 207
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 208
    sget v1, Lcom/kongzue/dialogx/DialogX;->N:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 209
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 210
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 211
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 212
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 213
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 215
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 216
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 217
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 218
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 219
    iput-object p4, p0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .line 137
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    const/4 v1, 0x0

    .line 139
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    const/4 v1, 0x0

    .line 140
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 141
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 142
    sget v1, Lcom/kongzue/dialogx/DialogX;->N:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 143
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 144
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 145
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 146
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 147
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 149
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 150
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 151
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 152
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 153
    iput-object p4, p0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)V"
        }
    .end annotation

    .line 238
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    const/4 v1, 0x0

    .line 240
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    const/4 v1, 0x0

    .line 241
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 242
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 243
    sget v1, Lcom/kongzue/dialogx/DialogX;->N:I

    int-to-float v1, v1

    iput v1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 244
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->NONE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 245
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 246
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 247
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 248
    new-instance v1, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v1}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v0, 0x0

    .line 249
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 250
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 251
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 252
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 253
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 254
    iput-object p4, p0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 255
    iput-object p5, p0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method static synthetic A1(Lcom/kongzue/dialogx/dialogs/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic B1(Lcom/kongzue/dialogx/dialogs/a;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic C1(Lcom/kongzue/dialogx/dialogs/a;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic D1(Lcom/kongzue/dialogx/dialogs/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic E1(Lcom/kongzue/dialogx/dialogs/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic F1(Lcom/kongzue/dialogx/dialogs/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic G1(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic H1(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E0(Ljava/lang/Runnable;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic I1(Lcom/kongzue/dialogx/dialogs/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic J1(Lcom/kongzue/dialogx/dialogs/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic K1(Lcom/kongzue/dialogx/dialogs/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic L1(Lcom/kongzue/dialogx/dialogs/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic M1(Lcom/kongzue/dialogx/dialogs/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic N1(Lcom/kongzue/dialogx/dialogs/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic O1(Lcom/kongzue/dialogx/dialogs/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic P1(Lcom/kongzue/dialogx/dialogs/a;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q1(Lcom/kongzue/dialogx/dialogs/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic R1(Lcom/kongzue/dialogx/dialogs/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic S1(Lcom/kongzue/dialogx/dialogs/a;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static S3(II)Lcom/kongzue/dialogx/dialogs/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/a;-><init>(II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic T0(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->H0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static T3(III)Lcom/kongzue/dialogx/dialogs/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/a;-><init>(III)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic U0(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)Ljava/util/List;
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

.method public static U3(IIII)Lcom/kongzue/dialogx/dialogs/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/a;-><init>(IIII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic V0(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->Z(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static V3(IIIILcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/kongzue/dialogx/dialogs/a;

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
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/kongzue/dialogx/dialogs/a;-><init>(IIIILcom/kongzue/dialogx/interfaces/r;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 13
    .line 14
    .line 15
    return-object v6
.end method

.method static synthetic W0(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->Z(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static W1()Lcom/kongzue/dialogx/dialogs/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static W3(IIILcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/a;-><init>(IIILcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic X0(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->Z(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static X1(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/a;->I3(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/a;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static X3(IILcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/a;-><init>(IILcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic Y0(Lcom/kongzue/dialogx/dialogs/a;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static Y1(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/a;->Z2(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/a;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static Y3(ILcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/a;-><init>(ILcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic Z0(Lcom/kongzue/dialogx/dialogs/a;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static Z3(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/a;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic a1(Lcom/kongzue/dialogx/dialogs/a;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static a4(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/a;-><init>(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic b1(Lcom/kongzue/dialogx/dialogs/a;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static b4(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic c1(Lcom/kongzue/dialogx/dialogs/a;Ljava/lang/Integer;)Ljava/lang/Integer;
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

.method public static c4(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic d1(Lcom/kongzue/dialogx/dialogs/a;Ljava/lang/Integer;)Ljava/lang/Integer;
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

.method static synthetic e1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f1(Lcom/kongzue/dialogx/dialogs/a;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g1(Lcom/kongzue/dialogx/dialogs/a;Ljava/lang/Float;)Ljava/lang/Float;
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

.method static synthetic h1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic k1(Lcom/kongzue/dialogx/dialogs/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l1(Lcom/kongzue/dialogx/dialogs/a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m1(Lcom/kongzue/dialogx/dialogs/a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n1(Lcom/kongzue/dialogx/dialogs/a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o1(Lcom/kongzue/dialogx/dialogs/a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p1(Lcom/kongzue/dialogx/dialogs/a;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic q1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic r1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s1(Lcom/kongzue/dialogx/dialogs/a;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic w1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x1(Lcom/kongzue/dialogx/dialogs/a;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic y1(Lcom/kongzue/dialogx/dialogs/a;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic z1(Lcom/kongzue/dialogx/dialogs/a;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->m:Landroid/widget/RelativeLayout;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->m:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->l:Landroid/view/ViewGroup;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->l:Landroid/view/ViewGroup;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_bottom_material:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_bottom_material_dark:I

    .line 61
    .line 62
    :goto_0
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->b(Z)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    :cond_4
    const-wide/16 v1, 0x0

    .line 85
    .line 86
    iput-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v1, Lcom/kongzue/dialogx/dialogs/a$e;

    .line 93
    .line 94
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/a$e;-><init>(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->e2:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public A2()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->f2:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->g2:Z

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

.method public A3(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->X:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public B2()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->g2:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->f2:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a$e;->f()Lcom/kongzue/dialogx/interfaces/g;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/kongzue/dialogx/interfaces/g;->a(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a$d;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/a$d;-><init>(Lcom/kongzue/dialogx/dialogs/a;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/a$e;->h()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    invoke-static {v0, v1, v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E0(Ljava/lang/Runnable;J)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public B3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->R:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public C2()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->k()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    :cond_1
    return v1
.end method

.method public C3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->R:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->X:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public D2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 2
    .line 3
    return v0
.end method

.method public D3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public E2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 2
    .line 3
    return v0
.end method

.method public E3(F)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic F0(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/a;->a3(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public F2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m:Lcom/kongzue/dialogx/interfaces/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public F3(I)Lcom/kongzue/dialogx/dialogs/a;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method protected G2(Lcom/kongzue/dialogx/dialogs/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public G3(IIII)Lcom/kongzue/dialogx/dialogs/a;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public H2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
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

.method public H3(Z)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic I0(Z)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/a;->e3(Z)Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected I2(Lcom/kongzue/dialogx/dialogs/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public I3(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public J2()Lcom/kongzue/dialogx/dialogs/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->clean()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public J3(Lcom/kongzue/dialogx/DialogX$THEME;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->t:Lcom/kongzue/dialogx/DialogX$THEME;

    .line 2
    .line 3
    return-object p0
.end method

.method public K2(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
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

.method public K3(I)Lcom/kongzue/dialogx/dialogs/a;
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

.method public bridge synthetic L0(I)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/a;->K3(I)Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public L2(Z)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public L3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic M0()Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public M2(I)Lcom/kongzue/dialogx/dialogs/a;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public M3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public N2(I)Lcom/kongzue/dialogx/dialogs/a;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public N3(I)Lcom/kongzue/dialogx/dialogs/a;
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->i1:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public O2(Z)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public O3(Landroid/graphics/Bitmap;)Lcom/kongzue/dialogx/dialogs/a;
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
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->i1:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public P2(F)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 2
    .line 3
    return-object p0
.end method

.method public P3(Landroid/graphics/drawable/Drawable;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->i1:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method protected Q0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->b2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public Q2(Z)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public Q3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public R2(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public R3()Lcom/kongzue/dialogx/dialogs/a;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->f2:Z

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
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->g2:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a$e;->f()Lcom/kongzue/dialogx/interfaces/g;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_bottom_material:I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_bottom_material_dark:I

    .line 80
    .line 81
    :goto_1
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->b(Z)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    :cond_3
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    new-instance v1, Lcom/kongzue/dialogx/dialogs/a$e;

    .line 108
    .line 109
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/a$e;-><init>(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->e2:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 113
    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 130
    .line 131
    .line 132
    :goto_2
    return-object p0
.end method

.method public S2(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->V:Lcom/kongzue/dialogx/interfaces/a;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public T1(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public T2(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->V:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public U1(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->f(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public U2(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public V1()Lcom/kongzue/dialogx/dialogs/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/a;->K3(I)Lcom/kongzue/dialogx/dialogs/a;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public V2(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->V:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public W2(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->V:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public X2(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public Y2(Z)Lcom/kongzue/dialogx/dialogs/a;
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->p0:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public Z1(I)Lcom/kongzue/dialogx/dialogs/a;
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

.method public Z2(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->T:Z

    .line 2
    .line 3
    return v0
.end method

.method public a2()Lcom/kongzue/dialogx/dialogs/a;
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

.method public a3(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/a;
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

.method public b2()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/a$b;-><init>(Lcom/kongzue/dialogx/dialogs/a;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public b3(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->g:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 2
    .line 3
    return-object p0
.end method

.method public c2()I
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

.method public c3(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->c2:Lcom/kongzue/dialogx/interfaces/f;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/interfaces/f;->b(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method

.method public d2()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 2
    .line 3
    return v0
.end method

.method public d3(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->l1:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public d4(Landroid/app/Activity;)V
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_bottom_material:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_bottom_material_dark:I

    .line 20
    .line 21
    :goto_0
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->b(Z)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :cond_1
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lcom/kongzue/dialogx/dialogs/a$e;

    .line 48
    .line 49
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/a$e;-><init>(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->e2:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N0(Landroid/app/Activity;Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N0(Landroid/app/Activity;Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    return-void
.end method

.method public e2()Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 2
    .line 3
    return-object v0
.end method

.method public e3(Z)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public f0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->p0:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

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
    sget-object v0, Lcom/kongzue/dialogx/dialogs/a;->j2:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

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

.method public f2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public f3(J)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-object p0
.end method

.method public g2()Lcom/kongzue/dialogx/interfaces/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->V:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    check-cast v0, Lcom/kongzue/dialogx/interfaces/t;

    .line 4
    .line 5
    return-object v0
.end method

.method public g3(J)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-object p0
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->b2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public h2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public h3(Z)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->d:I

    .line 2
    .line 3
    return-object p0
.end method

.method public i2()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

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

.method public i3(I)Lcom/kongzue/dialogx/dialogs/a;
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public j2()Lcom/kongzue/dialogx/dialogs/a$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->e2:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 2
    .line 3
    return-object v0
.end method

.method public j3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->z:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

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
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->c2:Lcom/kongzue/dialogx/interfaces/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a$c;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/a$c;-><init>(Lcom/kongzue/dialogx/dialogs/a;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object v0
.end method

.method public k3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->y:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public l2()Lcom/kongzue/dialogx/interfaces/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->l1:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public l3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public m2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public m3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

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

.method public n2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public n3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public o2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public o3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->B:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public p2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public p3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->A:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public q2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public q3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public r2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public r3(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->W:Lcom/kongzue/dialogx/interfaces/a;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public s2()Lcom/kongzue/dialogx/interfaces/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->Z:Lcom/kongzue/dialogx/interfaces/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public s3(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->W:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public t2()Lcom/kongzue/dialogx/interfaces/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->Y:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public t3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public u2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->R:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public u3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->W:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public v2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public v3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public w2()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 2
    .line 3
    return v0
.end method

.method public w3(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Z:Lcom/kongzue/dialogx/interfaces/p;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public x0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

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
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a$a;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/a$a;-><init>(Lcom/kongzue/dialogx/dialogs/a;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public x2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public x3(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Y:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
    return-object p0
.end method

.method public y2()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->i1:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public y3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->R:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public z2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public z3(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->R:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->X:Lcom/kongzue/dialogx/interfaces/a;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
