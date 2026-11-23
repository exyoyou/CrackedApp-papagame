.class public Lcom/kongzue/dialogx/dialogs/l;
.super Lcom/kongzue/dialogx/interfaces/BaseDialog;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/dialogs/l$h;
    }
.end annotation


# static fields
.field public static final d2:I = -0x1

.field protected static e2:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;"
        }
    .end annotation
.end field

.field public static f2:J = -0x1L

.field public static g2:J = -0x1L

.field public static h2:I = 0x0

.field public static i2:I = 0x0

.field public static j2:I = 0x7fffffff

.field public static k2:Lcom/kongzue/dialogx/interfaces/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/a0<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected L1:Lcom/kongzue/dialogx/util/TextInfo;

.field protected M:Lcom/kongzue/dialogx/interfaces/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;"
        }
    .end annotation
.end field

.field protected N:Lcom/kongzue/dialogx/interfaces/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;"
        }
    .end annotation
.end field

.field protected O:Lcom/kongzue/dialogx/dialogs/l;

.field protected P:Lcom/kongzue/dialogx/dialogs/l$h;

.field protected Q:I

.field protected R:I

.field protected R1:[I

.field protected S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

.field protected T:Lcom/kongzue/dialogx/interfaces/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;"
        }
    .end annotation
.end field

.field protected U:Lcom/kongzue/dialogx/interfaces/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;"
        }
    .end annotation
.end field

.field protected V:Z

.field protected V1:Ljava/util/Timer;

.field protected W:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

.field protected X:F

.field protected Y:Lcom/kongzue/dialogx/interfaces/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;"
        }
    .end annotation
.end field

.field protected Z:I

.field protected a2:J

.field protected b1:Landroid/graphics/drawable/Drawable;

.field private b2:F

.field protected c2:Z

.field protected f1:Ljava/lang/CharSequence;

.field protected i1:Ljava/lang/CharSequence;

.field protected l1:Ljava/lang/CharSequence;

.field protected p0:Landroid/graphics/Bitmap;

.field protected p1:I

.field protected q1:Z

.field protected r1:Lcom/kongzue/dialogx/util/TextInfo;

.field protected v1:Lcom/kongzue/dialogx/util/TextInfo;


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
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 4
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 6
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 7
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 8
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 9
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 10
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 11
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 49
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 50
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 52
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 53
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 54
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 55
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 56
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 57
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 58
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 59
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 60
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 61
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 62
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 64
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 65
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 66
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 67
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 68
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 69
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 70
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 71
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 72
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .line 101
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 102
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 104
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 105
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 106
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 107
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 108
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 109
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 110
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 111
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 112
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l;->Z:I

    .line 113
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 114
    invoke-virtual {p0, p3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3

    .line 213
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 214
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 215
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 216
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 217
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 218
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 219
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 220
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 221
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 222
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 223
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 224
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l;->Z:I

    .line 225
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 226
    invoke-virtual {p0, p3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

    .line 227
    invoke-virtual {p0, p4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->l1:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(IIIILcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)V"
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 229
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 231
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 232
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 233
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 234
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 235
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 236
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 237
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 238
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 239
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l;->Z:I

    .line 240
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 241
    invoke-virtual {p0, p3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

    .line 242
    invoke-virtual {p0, p4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->l1:Ljava/lang/CharSequence;

    .line 243
    iput-object p5, p0, Lcom/kongzue/dialogx/dialogs/l;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(IIILcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)V"
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 199
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 201
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 202
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 203
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 204
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 205
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 206
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 207
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 208
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 209
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l;->Z:I

    .line 210
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 211
    invoke-virtual {p0, p3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

    .line 212
    iput-object p4, p0, Lcom/kongzue/dialogx/dialogs/l;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(IILcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 156
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 158
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 159
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 160
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 161
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 162
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 163
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 164
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 165
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 166
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 167
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

    .line 168
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/l;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(ILcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 143
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 145
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 146
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 147
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 148
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 149
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 150
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 151
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 152
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 153
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 154
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/l;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 3

    .line 74
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 75
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 77
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 79
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 80
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 81
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 82
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 83
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 84
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 85
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l;->Z:I

    .line 86
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)V"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 170
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 172
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 173
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 174
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 175
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 176
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 177
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 178
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 179
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 180
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l;->Z:I

    .line 181
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 182
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/l;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .line 87
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 88
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 90
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 92
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 93
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 94
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 95
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 96
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 97
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 98
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l;->Z:I

    .line 99
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 100
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

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
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)V"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 184
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 185
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 186
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 187
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 188
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 189
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 190
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 191
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 192
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 193
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 194
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l;->Z:I

    .line 195
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 196
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

    .line 197
    iput-object p4, p0, Lcom/kongzue/dialogx/dialogs/l;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .line 244
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 245
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 246
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 247
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 248
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 249
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 250
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 251
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 252
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 253
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 254
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 255
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l;->Z:I

    .line 256
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 257
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

    .line 258
    iput-object p4, p0, Lcom/kongzue/dialogx/dialogs/l;->l1:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)V"
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 260
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 261
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 262
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 263
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 264
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 265
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 266
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 267
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 268
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 269
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 270
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l;->Z:I

    .line 271
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 272
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

    .line 273
    iput-object p4, p0, Lcom/kongzue/dialogx/dialogs/l;->l1:Ljava/lang/CharSequence;

    .line 274
    iput-object p5, p0, Lcom/kongzue/dialogx/dialogs/l;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 13
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 15
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 17
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 18
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 19
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 20
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 21
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 22
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 23
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 25
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 27
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 29
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 30
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 31
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 32
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 33
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 34
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 35
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 116
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 118
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 119
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 120
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 121
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 122
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 123
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 124
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 125
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 126
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 127
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/l;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 37
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 39
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 40
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 41
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 42
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 43
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 44
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 45
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 46
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 47
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 48
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

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
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 129
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 131
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    const/4 v1, 0x1

    .line 132
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 133
    sget v2, Lcom/kongzue/dialogx/DialogX;->S:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 134
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 135
    new-instance v2, Lcom/kongzue/dialogx/util/TextInfo;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    const/4 v1, -0x1

    .line 136
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    const-wide/high16 v1, -0x8000000000000000L

    .line 137
    iput-wide v1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 138
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

    .line 139
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 140
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

    .line 141
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/l;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method static synthetic A1(Lcom/kongzue/dialogx/dialogs/l;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic B1(Lcom/kongzue/dialogx/dialogs/l;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic C1(Lcom/kongzue/dialogx/dialogs/l;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic D1(Lcom/kongzue/dialogx/dialogs/l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic E1(Lcom/kongzue/dialogx/dialogs/l;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic F1(Lcom/kongzue/dialogx/dialogs/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/l;->n4()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic G1(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E0(Ljava/lang/Runnable;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic H1(Lcom/kongzue/dialogx/dialogs/l;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/dialogs/l;->N2(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic I1(Lcom/kongzue/dialogx/dialogs/l;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic J1(Lcom/kongzue/dialogx/dialogs/l;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic K1(Lcom/kongzue/dialogx/dialogs/l;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private K2()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 2
    .line 3
    const-wide/high16 v2, -0x8000000000000000L

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method static synthetic L1(Lcom/kongzue/dialogx/dialogs/l;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic M1(Lcom/kongzue/dialogx/dialogs/l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p0
.end method

.method private M2(I)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->k2()Lcom/kongzue/dialogx/dialogs/l$h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->k2()Lcom/kongzue/dialogx/dialogs/l$h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz v0, :cond_b

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->k2()Lcom/kongzue/dialogx/dialogs/l$h;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->k2()Lcom/kongzue/dialogx/dialogs/l$h;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_b

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->a()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 50
    .line 51
    :cond_1
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    sget-object v1, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;->TOP:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 56
    .line 57
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 58
    .line 59
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    instance-of v2, v2, Lcom/kongzue/dialogx/util/o;

    .line 68
    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/kongzue/dialogx/util/o;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/kongzue/dialogx/util/o;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/kongzue/dialogx/util/o;->a()F

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    :cond_3
    sget-object v2, Lcom/kongzue/dialogx/dialogs/l$g;->a:[I

    .line 91
    .line 92
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    aget v2, v2, v3

    .line 99
    .line 100
    const v3, 0x3f8ccccd    # 1.1f

    .line 101
    .line 102
    .line 103
    const/4 v4, 0x2

    .line 104
    const/4 v5, 0x1

    .line 105
    if-eq v2, v5, :cond_6

    .line 106
    .line 107
    if-eq v2, v4, :cond_5

    .line 108
    .line 109
    const/4 v6, 0x3

    .line 110
    if-eq v2, v6, :cond_5

    .line 111
    .line 112
    const/4 v6, 0x4

    .line 113
    if-eq v2, v6, :cond_4

    .line 114
    .line 115
    const/4 v6, 0x5

    .line 116
    if-eq v2, v6, :cond_5

    .line 117
    .line 118
    const/4 p1, 0x0

    .line 119
    const/4 v10, 0x0

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    int-to-float p1, p1

    .line 122
    add-float/2addr v1, p1

    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    int-to-float p1, p1

    .line 128
    goto :goto_0

    .line 129
    :cond_5
    int-to-float p1, p1

    .line 130
    mul-float p1, p1, v3

    .line 131
    .line 132
    :goto_0
    sub-float p1, v1, p1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_6
    int-to-float p1, p1

    .line 136
    mul-float p1, p1, v3

    .line 137
    .line 138
    add-float/2addr p1, v1

    .line 139
    :goto_1
    move v10, p1

    .line 140
    :goto_2
    sget-object v6, Lcom/kongzue/dialogx/dialogs/l;->k2:Lcom/kongzue/dialogx/interfaces/a0;

    .line 141
    .line 142
    const/4 p1, 0x0

    .line 143
    if-eqz v6, :cond_9

    .line 144
    .line 145
    sget-object v1, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 146
    .line 147
    if-nez v1, :cond_7

    .line 148
    .line 149
    const/4 v7, 0x0

    .line 150
    goto :goto_3

    .line 151
    :cond_7
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    .line 152
    .line 153
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    move v7, v1

    .line 158
    :goto_3
    iget-object v8, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    int-to-float v1, v1

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    div-float/2addr v1, v2

    .line 174
    float-to-int v11, v1

    .line 175
    sget-object v1, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 176
    .line 177
    if-nez v1, :cond_8

    .line 178
    .line 179
    const/4 v12, 0x1

    .line 180
    goto :goto_4

    .line 181
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    move v12, v1

    .line 186
    :goto_4
    const/4 v13, 0x1

    .line 187
    invoke-virtual/range {v6 .. v13}, Lcom/kongzue/dialogx/interfaces/a0;->b(ILcom/kongzue/dialogx/interfaces/BaseDialog;FFIIZ)F

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    new-array v2, v4, [F

    .line 196
    .line 197
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    aput v3, v2, p1

    .line 202
    .line 203
    aput v10, v2, v5

    .line 204
    .line 205
    invoke-static {v2}, Lcom/kongzue/dialogx/util/o;->c([F)Lcom/kongzue/dialogx/util/o;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l$b;

    .line 213
    .line 214
    invoke-direct {v0, p0, v10, v1}, Lcom/kongzue/dialogx/dialogs/l$b;-><init>(Lcom/kongzue/dialogx/dialogs/l;FF)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 218
    .line 219
    .line 220
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 221
    .line 222
    const-wide/16 v2, -0x1

    .line 223
    .line 224
    cmp-long v4, v0, v2

    .line 225
    .line 226
    if-nez v4, :cond_a

    .line 227
    .line 228
    const-wide/16 v0, 0x12c

    .line 229
    .line 230
    :cond_a
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 235
    .line 236
    const/high16 v2, 0x40000000    # 2.0f

    .line 237
    .line 238
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 245
    .line 246
    .line 247
    nop

    .line 248
    :cond_b
    :goto_5
    return-void
.end method

.method static synthetic N1(Lcom/kongzue/dialogx/dialogs/l;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E:Z

    .line 2
    .line 3
    return p1
.end method

.method private N2(I)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->k2()Lcom/kongzue/dialogx/dialogs/l$h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->k2()Lcom/kongzue/dialogx/dialogs/l$h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz v0, :cond_b

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->k2()Lcom/kongzue/dialogx/dialogs/l$h;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->k2()Lcom/kongzue/dialogx/dialogs/l$h;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_b

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->a()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 50
    .line 51
    :cond_1
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    sget-object v1, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;->TOP:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 56
    .line 57
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 58
    .line 59
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    instance-of v2, v2, Lcom/kongzue/dialogx/util/o;

    .line 68
    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/kongzue/dialogx/util/o;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/kongzue/dialogx/util/o;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/kongzue/dialogx/util/o;->a()F

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    :cond_3
    sget-object v2, Lcom/kongzue/dialogx/dialogs/l$g;->a:[I

    .line 91
    .line 92
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    aget v2, v2, v3

    .line 99
    .line 100
    const v3, 0x3f8ccccd    # 1.1f

    .line 101
    .line 102
    .line 103
    const/4 v4, 0x2

    .line 104
    const/4 v5, 0x1

    .line 105
    if-eq v2, v5, :cond_6

    .line 106
    .line 107
    if-eq v2, v4, :cond_5

    .line 108
    .line 109
    const/4 v6, 0x3

    .line 110
    if-eq v2, v6, :cond_5

    .line 111
    .line 112
    const/4 v6, 0x4

    .line 113
    if-eq v2, v6, :cond_4

    .line 114
    .line 115
    const/4 v6, 0x5

    .line 116
    if-eq v2, v6, :cond_5

    .line 117
    .line 118
    const/4 p1, 0x0

    .line 119
    const/4 v10, 0x0

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    int-to-float p1, p1

    .line 122
    sub-float/2addr v1, p1

    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    int-to-float p1, p1

    .line 128
    goto :goto_0

    .line 129
    :cond_5
    int-to-float p1, p1

    .line 130
    mul-float p1, p1, v3

    .line 131
    .line 132
    :goto_0
    add-float/2addr p1, v1

    .line 133
    goto :goto_1

    .line 134
    :cond_6
    int-to-float p1, p1

    .line 135
    mul-float p1, p1, v3

    .line 136
    .line 137
    sub-float p1, v1, p1

    .line 138
    .line 139
    :goto_1
    move v10, p1

    .line 140
    :goto_2
    sget-object v6, Lcom/kongzue/dialogx/dialogs/l;->k2:Lcom/kongzue/dialogx/interfaces/a0;

    .line 141
    .line 142
    const/4 p1, 0x0

    .line 143
    if-eqz v6, :cond_9

    .line 144
    .line 145
    sget-object v1, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 146
    .line 147
    if-nez v1, :cond_7

    .line 148
    .line 149
    const/4 v7, 0x0

    .line 150
    goto :goto_3

    .line 151
    :cond_7
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    .line 152
    .line 153
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    move v7, v1

    .line 158
    :goto_3
    iget-object v8, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    int-to-float v1, v1

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    div-float/2addr v1, v2

    .line 174
    float-to-int v11, v1

    .line 175
    sget-object v1, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 176
    .line 177
    if-nez v1, :cond_8

    .line 178
    .line 179
    const/4 v12, 0x1

    .line 180
    goto :goto_4

    .line 181
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    move v12, v1

    .line 186
    :goto_4
    const/4 v13, 0x0

    .line 187
    invoke-virtual/range {v6 .. v13}, Lcom/kongzue/dialogx/interfaces/a0;->b(ILcom/kongzue/dialogx/interfaces/BaseDialog;FFIIZ)F

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    new-array v2, v4, [F

    .line 196
    .line 197
    aput v1, v2, p1

    .line 198
    .line 199
    aput v10, v2, v5

    .line 200
    .line 201
    invoke-static {v2}, Lcom/kongzue/dialogx/util/o;->c([F)Lcom/kongzue/dialogx/util/o;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l$c;

    .line 209
    .line 210
    invoke-direct {v0, p0, v10, v1}, Lcom/kongzue/dialogx/dialogs/l$c;-><init>(Lcom/kongzue/dialogx/dialogs/l;FF)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 214
    .line 215
    .line 216
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 217
    .line 218
    const-wide/16 v2, -0x1

    .line 219
    .line 220
    cmp-long v4, v0, v2

    .line 221
    .line 222
    if-nez v4, :cond_a

    .line 223
    .line 224
    const-wide/16 v0, 0x12c

    .line 225
    .line 226
    :cond_a
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 231
    .line 232
    const/high16 v2, 0x40000000    # 2.0f

    .line 233
    .line 234
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 241
    .line 242
    .line 243
    nop

    .line 244
    :cond_b
    :goto_5
    return-void
.end method

.method static synthetic O1(Lcom/kongzue/dialogx/dialogs/l;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/l;->d2()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic P1(Lcom/kongzue/dialogx/dialogs/l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Q1(Lcom/kongzue/dialogx/dialogs/l;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Q3(I)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/l;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic R1(Lcom/kongzue/dialogx/dialogs/l;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static R3(II)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/l;-><init>(II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic S1(Lcom/kongzue/dialogx/dialogs/l;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method public static S3(III)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/l;-><init>(III)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic T0(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->H0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic T1(Lcom/kongzue/dialogx/dialogs/l;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static T3(IIII)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/l;-><init>(IIII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic U0(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/View;)Ljava/util/List;
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

.method public static U3(IIIILcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/kongzue/dialogx/dialogs/l;

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
    invoke-direct/range {v0 .. v5}, Lcom/kongzue/dialogx/dialogs/l;-><init>(IIIILcom/kongzue/dialogx/interfaces/r;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 13
    .line 14
    .line 15
    return-object v6
.end method

.method static synthetic V0(Lcom/kongzue/dialogx/dialogs/l;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kongzue/dialogx/dialogs/l;->b2:F

    .line 2
    .line 3
    return p0
.end method

.method public static V3(IIILcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/l;-><init>(IIILcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic W0(Lcom/kongzue/dialogx/dialogs/l;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l;->b2:F

    .line 2
    .line 3
    return p1
.end method

.method public static W3(IILcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/l;-><init>(IILcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic X0(Lcom/kongzue/dialogx/dialogs/l;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/dialogs/l;->M2(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static X3(ILcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/l;-><init>(ILcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic Y0(Lcom/kongzue/dialogx/dialogs/l;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static Y1()Lcom/kongzue/dialogx/dialogs/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static Y3(ILjava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/l;-><init>(ILjava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic Z0(Lcom/kongzue/dialogx/dialogs/l;Ljava/lang/Integer;)Ljava/lang/Integer;
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

.method public static Z1(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/l;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/l;->J3(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static Z3(ILjava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/l;-><init>(ILjava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic a1(Lcom/kongzue/dialogx/dialogs/l;Ljava/lang/Integer;)Ljava/lang/Integer;
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

.method public static a2(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/l;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/l;->h3(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static a4(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/l;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic b1(Lcom/kongzue/dialogx/dialogs/l;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static b4(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/l;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic c1(Lcom/kongzue/dialogx/dialogs/l;Ljava/lang/Float;)Ljava/lang/Float;
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

.method public static c4(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/l;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic d1(Lcom/kongzue/dialogx/dialogs/l;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method private d2()I
    .locals 3

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

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
    sget-object v2, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

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
    sget-object v2, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/kongzue/dialogx/dialogs/l;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-boolean v2, v2, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

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

.method public static d4(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/kongzue/dialogx/dialogs/l;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 13
    .line 14
    .line 15
    return-object v6
.end method

.method static synthetic e1(Lcom/kongzue/dialogx/dialogs/l;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f1(Lcom/kongzue/dialogx/dialogs/l;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static f4(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/l;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic g1(Lcom/kongzue/dialogx/dialogs/l;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static g4(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/l;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic h1(Lcom/kongzue/dialogx/dialogs/l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D:Z

    .line 2
    .line 3
    return p0
.end method

.method public static h4(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/l;-><init>(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic i1(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n0(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static i4(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/l;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic j1(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->Z(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static j4(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/l;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic k1(Lcom/kongzue/dialogx/dialogs/l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l1(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->Z(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m1(Lcom/kongzue/dialogx/dialogs/l;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n1(Lcom/kongzue/dialogx/dialogs/l;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method private n4()V
    .locals 3

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

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
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->c2:Z

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
    sget-object v1, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

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
    new-instance v1, Lcom/kongzue/dialogx/dialogs/k;

    .line 44
    .line 45
    invoke-direct {v1}, Lcom/kongzue/dialogx/dialogs/k;-><init>()V

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

.method static synthetic o1(Lcom/kongzue/dialogx/dialogs/l;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p1(Lcom/kongzue/dialogx/dialogs/l;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q1(Lcom/kongzue/dialogx/dialogs/l;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic r1(Lcom/kongzue/dialogx/dialogs/l;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic s1(Lcom/kongzue/dialogx/dialogs/l;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t1(Lcom/kongzue/dialogx/dialogs/l;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u1(Lcom/kongzue/dialogx/dialogs/l;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v1(Lcom/kongzue/dialogx/dialogs/l;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w1(Lcom/kongzue/dialogx/dialogs/l;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x1(Lcom/kongzue/dialogx/dialogs/l;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic y1(Lcom/kongzue/dialogx/dialogs/l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic z1(Lcom/kongzue/dialogx/dialogs/l;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->k2()Lcom/kongzue/dialogx/dialogs/l$h;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->g:Landroid/widget/RelativeLayout;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->k2()Lcom/kongzue/dialogx/dialogs/l$h;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->g:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    .line 33
    .line 34
    :cond_1
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->m:Z

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    sget-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

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
    sget-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

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
    check-cast v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 v0, 0x0

    .line 64
    :goto_0
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->e2()V

    .line 67
    .line 68
    .line 69
    :cond_3
    sget-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 70
    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 79
    .line 80
    :cond_4
    sget-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_popnotification_material:I

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_popnotification_material_dark:I

    .line 95
    .line 96
    :goto_1
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_e

    .line 103
    .line 104
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->h(Z)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_6

    .line 119
    .line 120
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->h(Z)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    :cond_6
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->a()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 145
    .line 146
    if-nez v1, :cond_7

    .line 147
    .line 148
    sget-object v1, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;->TOP:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 149
    .line 150
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 151
    .line 152
    :cond_7
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->f(Z)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    iget-object v2, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    invoke-virtual {v2, v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->g(Z)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    iget v3, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 181
    .line 182
    if-nez v3, :cond_9

    .line 183
    .line 184
    sget v3, Lcom/kongzue/dialogx/dialogs/l;->h2:I

    .line 185
    .line 186
    if-nez v3, :cond_9

    .line 187
    .line 188
    if-eqz v1, :cond_8

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_8
    sget v1, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_notification_enter:I

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_9
    move v1, v3

    .line 195
    :goto_2
    iput v1, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 196
    .line 197
    iget v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    .line 198
    .line 199
    if-nez v1, :cond_b

    .line 200
    .line 201
    sget v1, Lcom/kongzue/dialogx/dialogs/l;->i2:I

    .line 202
    .line 203
    if-nez v1, :cond_b

    .line 204
    .line 205
    if-eqz v2, :cond_a

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_a
    sget v2, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_notification_exit:I

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_b
    move v2, v1

    .line 212
    :goto_3
    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    .line 213
    .line 214
    iget-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 215
    .line 216
    const-wide/16 v3, -0x1

    .line 217
    .line 218
    cmp-long v5, v1, v3

    .line 219
    .line 220
    if-nez v5, :cond_c

    .line 221
    .line 222
    sget-wide v1, Lcom/kongzue/dialogx/dialogs/l;->f2:J

    .line 223
    .line 224
    :cond_c
    iput-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 225
    .line 226
    iget-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 227
    .line 228
    cmp-long v5, v1, v3

    .line 229
    .line 230
    if-nez v5, :cond_d

    .line 231
    .line 232
    sget-wide v1, Lcom/kongzue/dialogx/dialogs/l;->g2:J

    .line 233
    .line 234
    :cond_d
    iput-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 235
    .line 236
    :cond_e
    const-wide/16 v1, 0x0

    .line 237
    .line 238
    iput-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 239
    .line 240
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    new-instance v1, Lcom/kongzue/dialogx/dialogs/l$h;

    .line 245
    .line 246
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/l$h;-><init>(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/View;)V

    .line 247
    .line 248
    .line 249
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->P:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 250
    .line 251
    if-eqz v0, :cond_f

    .line 252
    .line 253
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    :cond_f
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 259
    .line 260
    .line 261
    return-void
.end method

.method public A2()Lcom/kongzue/dialogx/interfaces/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->U:Lcom/kongzue/dialogx/interfaces/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public A3(I)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public B2()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 2
    .line 3
    return v0
.end method

.method public B3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public C2()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->W:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 2
    .line 3
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;->TRUE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public C3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public D2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public D3(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->T:Lcom/kongzue/dialogx/interfaces/t;

    .line 2
    .line 3
    return-object p0
.end method

.method public E2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public E3(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->U:Lcom/kongzue/dialogx/interfaces/t;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic F0(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/l;->i3(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/l;

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

.method public F3(F)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l;->X:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public G2()Lcom/kongzue/dialogx/dialogs/l;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/l;->M3(Z)Lcom/kongzue/dialogx/dialogs/l;

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
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

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
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->c()I

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
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->c()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :cond_0
    const/high16 v1, 0x41d00000    # 26.0f

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o(F)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p0, v1}, Lcom/kongzue/dialogx/dialogs/l;->u3(I)Lcom/kongzue/dialogx/dialogs/l;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/l;->t3(I)Lcom/kongzue/dialogx/dialogs/l;

    .line 53
    .line 54
    .line 55
    return-object p0
.end method

.method public G3(I)Lcom/kongzue/dialogx/dialogs/l;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public H2()Lcom/kongzue/dialogx/dialogs/l;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/l;->M3(Z)Lcom/kongzue/dialogx/dialogs/l;

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
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

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
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->d()I

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
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->d()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :cond_0
    const/high16 v1, 0x41d00000    # 26.0f

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o(F)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p0, v1}, Lcom/kongzue/dialogx/dialogs/l;->u3(I)Lcom/kongzue/dialogx/dialogs/l;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/l;->t3(I)Lcom/kongzue/dialogx/dialogs/l;

    .line 53
    .line 54
    .line 55
    return-object p0
.end method

.method public H3(IIII)Lcom/kongzue/dialogx/dialogs/l;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public I2()Lcom/kongzue/dialogx/dialogs/l;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/l;->M3(Z)Lcom/kongzue/dialogx/dialogs/l;

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
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

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
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->e()I

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
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->e()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :cond_0
    const/high16 v1, 0x41d00000    # 26.0f

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o(F)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p0, v1}, Lcom/kongzue/dialogx/dialogs/l;->u3(I)Lcom/kongzue/dialogx/dialogs/l;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/l;->t3(I)Lcom/kongzue/dialogx/dialogs/l;

    .line 53
    .line 54
    .line 55
    return-object p0
.end method

.method public I3(Z)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public J2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 2
    .line 3
    return v0
.end method

.method public J3(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public K3(Lcom/kongzue/dialogx/DialogX$THEME;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->t:Lcom/kongzue/dialogx/DialogX$THEME;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic L0(I)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/l;->L3(I)Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public L2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/l;->q1:Z

    .line 2
    .line 3
    return v0
.end method

.method public L3(I)Lcom/kongzue/dialogx/dialogs/l;
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

.method public bridge synthetic M0()Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public M3(Z)Lcom/kongzue/dialogx/dialogs/l;
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->W:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public N3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->f1:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public O2()Lcom/kongzue/dialogx/dialogs/l;
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/kongzue/dialogx/dialogs/l;->V1(J)Lcom/kongzue/dialogx/dialogs/l;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public O3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public P2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m:Lcom/kongzue/dialogx/interfaces/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public P3()Lcom/kongzue/dialogx/dialogs/l;
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
    if-nez v0, :cond_10

    .line 28
    .line 29
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->m:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    sget-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

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
    check-cast v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->e2()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    sget-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    .line 67
    sget-object v2, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 68
    .line 69
    invoke-direct {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-ge v1, v2, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lcom/kongzue/dialogx/dialogs/l;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    sget v4, Lcom/kongzue/dialogx/dialogs/l;->j2:I

    .line 89
    .line 90
    if-lt v3, v4, :cond_2

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    sget v4, Lcom/kongzue/dialogx/dialogs/l;->j2:I

    .line 97
    .line 98
    sub-int/2addr v3, v4

    .line 99
    if-gt v1, v3, :cond_2

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/kongzue/dialogx/dialogs/l;->e2()V

    .line 102
    .line 103
    .line 104
    sget-object v3, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    :goto_1
    sget-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 113
    .line 114
    if-nez v0, :cond_4

    .line 115
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 122
    .line 123
    :cond_4
    sget-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 124
    .line 125
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_popnotification_material:I

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_5
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_popnotification_material_dark:I

    .line 138
    .line 139
    :goto_2
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    if-eqz v1, :cond_e

    .line 146
    .line 147
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->h(Z)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_6

    .line 162
    .line 163
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->h(Z)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    :cond_6
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 178
    .line 179
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->a()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 188
    .line 189
    if-nez v1, :cond_7

    .line 190
    .line 191
    sget-object v1, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;->TOP:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 192
    .line 193
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 194
    .line 195
    :cond_7
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->f(Z)I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    iget-object v2, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 210
    .line 211
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    invoke-virtual {v2, v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->g(Z)I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    iget v3, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 224
    .line 225
    if-nez v3, :cond_9

    .line 226
    .line 227
    sget v3, Lcom/kongzue/dialogx/dialogs/l;->h2:I

    .line 228
    .line 229
    if-nez v3, :cond_9

    .line 230
    .line 231
    if-eqz v1, :cond_8

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_8
    sget v1, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_notification_enter:I

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_9
    move v1, v3

    .line 238
    :goto_3
    iput v1, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 239
    .line 240
    iget v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    .line 241
    .line 242
    if-nez v1, :cond_b

    .line 243
    .line 244
    sget v1, Lcom/kongzue/dialogx/dialogs/l;->i2:I

    .line 245
    .line 246
    if-nez v1, :cond_b

    .line 247
    .line 248
    if-eqz v2, :cond_a

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_a
    sget v2, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_notification_exit:I

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_b
    move v2, v1

    .line 255
    :goto_4
    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    .line 256
    .line 257
    iget-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 258
    .line 259
    const-wide/16 v3, -0x1

    .line 260
    .line 261
    cmp-long v5, v1, v3

    .line 262
    .line 263
    if-nez v5, :cond_c

    .line 264
    .line 265
    sget-wide v1, Lcom/kongzue/dialogx/dialogs/l;->f2:J

    .line 266
    .line 267
    :cond_c
    iput-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 268
    .line 269
    iget-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 270
    .line 271
    cmp-long v5, v1, v3

    .line 272
    .line 273
    if-nez v5, :cond_d

    .line 274
    .line 275
    sget-wide v1, Lcom/kongzue/dialogx/dialogs/l;->g2:J

    .line 276
    .line 277
    :cond_d
    iput-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 278
    .line 279
    :cond_e
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    new-instance v1, Lcom/kongzue/dialogx/dialogs/l$h;

    .line 284
    .line 285
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/l$h;-><init>(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/View;)V

    .line 286
    .line 287
    .line 288
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->P:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 289
    .line 290
    if-eqz v0, :cond_f

    .line 291
    .line 292
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    :cond_f
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 298
    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 306
    .line 307
    .line 308
    :goto_5
    return-object p0
.end method

.method protected Q0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->e2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected Q2(Lcom/kongzue/dialogx/dialogs/l;)V
    .locals 0

    .line 1
    return-void
.end method

.method public R2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
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

.method protected S2(Lcom/kongzue/dialogx/dialogs/l;)V
    .locals 0

    .line 1
    return-void
.end method

.method public T2()Lcom/kongzue/dialogx/dialogs/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->clean()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public U1(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public U2()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/kongzue/dialogx/dialogs/l;->V1(J)Lcom/kongzue/dialogx/dialogs/l;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public V1(J)Lcom/kongzue/dialogx/dialogs/l;
    .locals 3

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/dialogs/l;->a2:J

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->V1:Ljava/util/Timer;

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
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->V1:Ljava/util/Timer;

    .line 23
    .line 24
    new-instance v1, Lcom/kongzue/dialogx/dialogs/l$a;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/l$a;-><init>(Lcom/kongzue/dialogx/dialogs/l;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method public V2(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
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

.method public W1(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->f(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public W2(Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 2
    .line 3
    return-object p0
.end method

.method public X1()Lcom/kongzue/dialogx/dialogs/l;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/l;->L3(I)Lcom/kongzue/dialogx/dialogs/l;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public X2(II)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 2
    .line 3
    iput p2, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    .line 4
    .line 5
    return-object p0
.end method

.method public Y2(Z)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/l;->V:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public Z2(I)Lcom/kongzue/dialogx/dialogs/l;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public a3(I)Lcom/kongzue/dialogx/dialogs/l;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public b2(I)Lcom/kongzue/dialogx/dialogs/l;
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

.method public b3(I)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->l1:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public c2()Lcom/kongzue/dialogx/dialogs/l;
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

.method public c3(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->l1:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/l;->T:Lcom/kongzue/dialogx/interfaces/t;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public d3(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->T:Lcom/kongzue/dialogx/interfaces/t;

    .line 2
    .line 3
    return-object p0
.end method

.method public e2()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/l$e;-><init>(Lcom/kongzue/dialogx/dialogs/l;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public e3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->l1:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public e4(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/l;
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
    if-nez v0, :cond_e

    .line 9
    .line 10
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->m:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

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
    sget-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

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
    check-cast v0, Lcom/kongzue/dialogx/dialogs/l;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->e2()V

    .line 43
    .line 44
    .line 45
    :cond_1
    sget-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 55
    .line 56
    :cond_2
    sget-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_popnotification_material:I

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_popnotification_material_dark:I

    .line 71
    .line 72
    :goto_1
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_c

    .line 79
    .line 80
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->h(Z)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->h(Z)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    :cond_4
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->a()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 121
    .line 122
    if-nez v1, :cond_5

    .line 123
    .line 124
    sget-object v1, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;->TOP:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 125
    .line 126
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 127
    .line 128
    :cond_5
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->f(Z)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    iget-object v2, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-virtual {v2, v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->g(Z)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    iget v3, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 157
    .line 158
    if-nez v3, :cond_7

    .line 159
    .line 160
    sget v3, Lcom/kongzue/dialogx/dialogs/l;->h2:I

    .line 161
    .line 162
    if-nez v3, :cond_7

    .line 163
    .line 164
    if-eqz v1, :cond_6

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_6
    sget v1, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_notification_enter:I

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_7
    move v1, v3

    .line 171
    :goto_2
    iput v1, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 172
    .line 173
    iget v1, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    .line 174
    .line 175
    if-nez v1, :cond_9

    .line 176
    .line 177
    sget v1, Lcom/kongzue/dialogx/dialogs/l;->i2:I

    .line 178
    .line 179
    if-nez v1, :cond_9

    .line 180
    .line 181
    if-eqz v2, :cond_8

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_8
    sget v2, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_notification_exit:I

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_9
    move v2, v1

    .line 188
    :goto_3
    iput v2, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    .line 189
    .line 190
    iget-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 191
    .line 192
    const-wide/16 v3, -0x1

    .line 193
    .line 194
    cmp-long v5, v1, v3

    .line 195
    .line 196
    if-nez v5, :cond_a

    .line 197
    .line 198
    sget-wide v1, Lcom/kongzue/dialogx/dialogs/l;->f2:J

    .line 199
    .line 200
    :cond_a
    iput-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 201
    .line 202
    iget-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 203
    .line 204
    cmp-long v5, v1, v3

    .line 205
    .line 206
    if-nez v5, :cond_b

    .line 207
    .line 208
    sget-wide v1, Lcom/kongzue/dialogx/dialogs/l;->g2:J

    .line 209
    .line 210
    :cond_b
    iput-wide v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 211
    .line 212
    :cond_c
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    new-instance v1, Lcom/kongzue/dialogx/dialogs/l$h;

    .line 217
    .line 218
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/l$h;-><init>(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/View;)V

    .line 219
    .line 220
    .line 221
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->P:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 222
    .line 223
    if-eqz v0, :cond_d

    .line 224
    .line 225
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    :cond_d
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N0(Landroid/app/Activity;Landroid/view/View;)V

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_e
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N0(Landroid/app/Activity;Landroid/view/View;)V

    .line 239
    .line 240
    .line 241
    :goto_4
    return-object p0
.end method

.method public f0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public f2()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 2
    .line 3
    return-object v0
.end method

.method public f3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->l1:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/l;->T:Lcom/kongzue/dialogx/interfaces/t;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public g2()I
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

.method public g3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->e2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public h2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->l1:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public h3(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public i2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public i3(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/l;
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

.method public j2()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->M:Lcom/kongzue/dialogx/interfaces/r;

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

.method public j3(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->g:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 2
    .line 3
    return-object p0
.end method

.method public k2()Lcom/kongzue/dialogx/dialogs/l$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->P:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 2
    .line 3
    return-object v0
.end method

.method public k3(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->N:Lcom/kongzue/dialogx/interfaces/f;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/interfaces/f;->b(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method

.method public k4()Lcom/kongzue/dialogx/dialogs/l;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->O2()Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public l2()Lcom/kongzue/dialogx/interfaces/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->N:Lcom/kongzue/dialogx/interfaces/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l$f;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/l$f;-><init>(Lcom/kongzue/dialogx/dialogs/l;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object v0
.end method

.method public l3(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/l;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->Y:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public l4()Lcom/kongzue/dialogx/dialogs/l;
    .locals 2

    .line 1
    const-wide/16 v0, 0xdac

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/kongzue/dialogx/dialogs/l;->V1(J)Lcom/kongzue/dialogx/dialogs/l;

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public m2()Lcom/kongzue/dialogx/interfaces/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Y:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public m3(J)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-object p0
.end method

.method public m4()Lcom/kongzue/dialogx/dialogs/l;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/l;->K2()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x7d0

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/kongzue/dialogx/dialogs/l;->V1(J)Lcom/kongzue/dialogx/dialogs/l;

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->P3()Lcom/kongzue/dialogx/dialogs/l;

    .line 21
    .line 22
    .line 23
    :cond_1
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
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public n3(I)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l;->Q:I

    .line 2
    .line 3
    return-object p0
.end method

.method public o2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public o3(J)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-object p0
.end method

.method public p2()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->p0:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public p3(I)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l;->R:I

    .line 2
    .line 3
    return-object p0
.end method

.method public q2()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->b1:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public q3(Z)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->d:I

    .line 2
    .line 3
    return-object p0
.end method

.method public r2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/l;->Z:I

    .line 2
    .line 3
    return v0
.end method

.method public r3(Landroid/graphics/Bitmap;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->p0:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public s2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/l;->p1:I

    .line 2
    .line 3
    return v0
.end method

.method public s3(Landroid/graphics/drawable/Drawable;)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l;->b1:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public t2()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public t3(I)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l;->Z:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public u2()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public u3(I)Lcom/kongzue/dialogx/dialogs/l;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/l;->p1:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public v2()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public v3(IIII)Lcom/kongzue/dialogx/dialogs/l;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public w2()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public w3(I)Lcom/kongzue/dialogx/dialogs/l;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public x0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->k2()Lcom/kongzue/dialogx/dialogs/l$h;

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
    new-instance v0, Lcom/kongzue/dialogx/dialogs/l$d;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/l$d;-><init>(Lcom/kongzue/dialogx/dialogs/l;)V

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->i1:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public x3(I)Lcom/kongzue/dialogx/dialogs/l;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public y2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public y3(I)Lcom/kongzue/dialogx/dialogs/l;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public z2()Lcom/kongzue/dialogx/interfaces/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->T:Lcom/kongzue/dialogx/interfaces/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public z3(I)Lcom/kongzue/dialogx/dialogs/l;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/l;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method
