.class public Lcom/join/mgps/customview/wheel/picker/DateTimePicker;
.super Lcom/join/mgps/customview/wheel/picker/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;,
        Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;,
        Lcom/join/mgps/customview/wheel/picker/DateTimePicker$m;,
        Lcom/join/mgps/customview/wheel/picker/DateTimePicker$o;,
        Lcom/join/mgps/customview/wheel/picker/DateTimePicker$j;,
        Lcom/join/mgps/customview/wheel/picker/DateTimePicker$k;,
        Lcom/join/mgps/customview/wheel/picker/DateTimePicker$i;,
        Lcom/join/mgps/customview/wheel/picker/DateTimePicker$n;,
        Lcom/join/mgps/customview/wheel/picker/DateTimePicker$TimeMode;,
        Lcom/join/mgps/customview/wheel/picker/DateTimePicker$DateMode;
    }
.end annotation


# static fields
.field public static final t2:I = -0x1

.field public static final u2:I = 0x0

.field public static final v2:I = 0x1

.field public static final w2:I = 0x2

.field public static final x2:I = 0x3

.field public static final y2:I = 0x4


# instance fields
.field private L1:I

.field private R1:Ljava/lang/String;

.field private V:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private V1:Ljava/lang/String;

.field private W:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private X:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a2:Ljava/lang/String;

.field private b1:Ljava/lang/String;

.field private b2:Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;

.field private c2:Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;

.field private d2:I

.field private e2:I

.field private f1:Ljava/lang/String;

.field private f2:I

.field private g2:I

.field private h2:I

.field private i1:Ljava/lang/String;

.field private i2:I

.field private j2:I

.field private k2:I

.field private l1:Ljava/lang/String;

.field private l2:I

.field private m2:I

.field private n2:I

.field private o2:I

.field private p0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p1:Ljava/lang/String;

.field private p2:I

.field private q1:Ljava/lang/String;

.field private q2:I

.field private r1:I

.field private r2:I

.field private s2:Z

.field private v1:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "timeMode"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;-><init>(Landroid/app/Activity;II)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "dateMode",
            "timeMode"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/wheel/picker/c;-><init>(Landroid/app/Activity;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Y:Ljava/util/ArrayList;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Z:Ljava/util/ArrayList;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p0:Ljava/util/ArrayList;

    const-string p1, "\u5e74"

    .line 9
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->b1:Ljava/lang/String;

    const-string p1, "\u6708"

    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->f1:Ljava/lang/String;

    const-string p1, "\u65e5"

    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i1:Ljava/lang/String;

    const-string p1, "\u65f6"

    .line 10
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->l1:Ljava/lang/String;

    const-string p1, "\u5206"

    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p1:Ljava/lang/String;

    const-string p1, "\u79d2"

    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->q1:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r1:I

    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->v1:I

    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->L1:I

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->R1:Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V1:Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->a2:Ljava/lang/String;

    .line 13
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->e2:I

    const/16 v0, 0x7da

    .line 14
    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->f2:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->g2:I

    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->h2:I

    const/16 v1, 0x7e4

    .line 15
    iput v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i2:I

    const/16 v1, 0xc

    iput v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->j2:I

    const/16 v2, 0x1f

    iput v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->k2:I

    .line 16
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->n2:I

    const/16 v2, 0x3b

    .line 17
    iput v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p2:I

    iput v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->q2:I

    const/16 v2, 0x10

    .line 18
    iput v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r2:I

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->s2:Z

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    if-eq p3, v2, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The modes are NONE at the same time"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    if-eq p3, v2, :cond_3

    .line 21
    iget v2, p0, Lcom/join/mgps/customview/popup/a;->c:I

    const/16 v3, 0x2d0

    if-ge v2, v3, :cond_2

    const/16 v2, 0xe

    .line 22
    iput v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r2:I

    goto :goto_1

    :cond_2
    const/16 v3, 0x1e0

    if-ge v2, v3, :cond_3

    .line 23
    iput v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r2:I

    .line 24
    :cond_3
    :goto_1
    iput p2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    const/4 p2, 0x4

    if-ne p3, p2, :cond_4

    .line 25
    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->l2:I

    .line 26
    iput v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->o2:I

    goto :goto_2

    .line 27
    :cond_4
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->l2:I

    const/16 p1, 0x17

    .line 28
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->o2:I

    .line 29
    :goto_2
    iput p3, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->e2:I

    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r1:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic I0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r1:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic J0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic K0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic L0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->R1:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic M0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->R1:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic N0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Y:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic O0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->h1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Z:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Q0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V1:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic R0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V1:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic S0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->a2:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic T0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->a2:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic U0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->j1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p0:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic W0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->b2:Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic X0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->s2:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Y0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->v1:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Z0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->v1:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic a1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->L1:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->L1:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->g1(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method private g1(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectedYear",
            "selectedMonth"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->b(II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->s2:Z

    .line 6
    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->L1:I

    .line 10
    .line 11
    if-lt v1, v0, :cond_0

    .line 12
    .line 13
    add-int/lit8 v1, v0, -0x1

    .line 14
    .line 15
    iput v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->L1:I

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->L1:I

    .line 24
    .line 25
    if-le v1, v2, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x5

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string v1, ""

    .line 51
    .line 52
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 55
    .line 56
    .line 57
    iget v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->f2:I

    .line 58
    .line 59
    if-ne p1, v2, :cond_3

    .line 60
    .line 61
    iget v3, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->g2:I

    .line 62
    .line 63
    if-ne p2, v3, :cond_3

    .line 64
    .line 65
    iget v3, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i2:I

    .line 66
    .line 67
    if-ne p1, v3, :cond_3

    .line 68
    .line 69
    iget v3, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->j2:I

    .line 70
    .line 71
    if-ne p2, v3, :cond_3

    .line 72
    .line 73
    iget p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->h2:I

    .line 74
    .line 75
    :goto_1
    iget p2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->k2:I

    .line 76
    .line 77
    if-gt p1, p2, :cond_6

    .line 78
    .line 79
    iget-object p2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    add-int/lit8 p1, p1, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    if-ne p1, v2, :cond_4

    .line 92
    .line 93
    iget v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->g2:I

    .line 94
    .line 95
    if-ne p2, v2, :cond_4

    .line 96
    .line 97
    iget p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->h2:I

    .line 98
    .line 99
    :goto_2
    if-gt p1, v0, :cond_6

    .line 100
    .line 101
    iget-object p2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    add-int/lit8 p1, p1, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    iget v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i2:I

    .line 114
    .line 115
    const/4 v3, 0x1

    .line 116
    if-ne p1, v2, :cond_5

    .line 117
    .line 118
    iget p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->j2:I

    .line 119
    .line 120
    if-ne p2, p1, :cond_5

    .line 121
    .line 122
    :goto_3
    iget p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->k2:I

    .line 123
    .line 124
    if-gt v3, p1, :cond_6

    .line 125
    .line 126
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-static {v3}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    add-int/lit8 v3, v3, 0x1

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_5
    :goto_4
    if-gt v3, v0, :cond_6

    .line 139
    .line 140
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-static {v3}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    add-int/lit8 v3, v3, 0x1

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_6
    iget-boolean p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->s2:Z

    .line 153
    .line 154
    if-nez p1, :cond_8

    .line 155
    .line 156
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    const/4 p2, -0x1

    .line 163
    if-ne p1, p2, :cond_7

    .line 164
    .line 165
    const/4 p1, 0x0

    .line 166
    :cond_7
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->L1:I

    .line 167
    .line 168
    :cond_8
    return-void
.end method

.method private h1(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedHour"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Z:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->l2:I

    .line 7
    .line 8
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->o2:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->m2:I

    .line 14
    .line 15
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p2:I

    .line 16
    .line 17
    if-le p1, v0, :cond_0

    .line 18
    .line 19
    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->m2:I

    .line 20
    .line 21
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p2:I

    .line 22
    .line 23
    :cond_0
    iget p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->m2:I

    .line 24
    .line 25
    :goto_0
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p2:I

    .line 26
    .line 27
    if-gt p1, v0, :cond_4

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Z:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    add-int/lit8 p1, p1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/16 v3, 0x3b

    .line 42
    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    .line 45
    iget p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->m2:I

    .line 46
    .line 47
    :goto_1
    if-gt p1, v3, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Z:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 p1, p1, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    if-ne p1, v1, :cond_3

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    :goto_2
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p2:I

    .line 65
    .line 66
    if-gt p1, v0, :cond_4

    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Z:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    add-int/lit8 p1, p1, 0x1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    const/4 p1, 0x0

    .line 81
    :goto_3
    if-gt p1, v3, :cond_4

    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Z:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    add-int/lit8 p1, p1, 0x1

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Z:Ljava/util/ArrayList;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V1:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    const/4 v0, -0x1

    .line 104
    if-ne p1, v0, :cond_5

    .line 105
    .line 106
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Z:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Ljava/lang/String;

    .line 113
    .line 114
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V1:Ljava/lang/String;

    .line 115
    .line 116
    :cond_5
    return-void
.end method

.method private i1(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedYear"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->s2:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->v1:I

    .line 13
    .line 14
    if-le v0, v2, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    add-int/2addr v0, v1

    .line 35
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string v0, ""

    .line 41
    .line 42
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 45
    .line 46
    .line 47
    iget v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->g2:I

    .line 48
    .line 49
    if-lt v2, v1, :cond_9

    .line 50
    .line 51
    iget v3, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->j2:I

    .line 52
    .line 53
    if-lt v3, v1, :cond_9

    .line 54
    .line 55
    const/16 v4, 0xc

    .line 56
    .line 57
    if-gt v2, v4, :cond_9

    .line 58
    .line 59
    if-gt v3, v4, :cond_9

    .line 60
    .line 61
    iget v5, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->f2:I

    .line 62
    .line 63
    iget v6, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i2:I

    .line 64
    .line 65
    if-ne v5, v6, :cond_3

    .line 66
    .line 67
    if-le v2, v3, :cond_2

    .line 68
    .line 69
    :goto_1
    iget p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->g2:I

    .line 70
    .line 71
    if-lt v3, p1, :cond_6

    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-static {v3}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    add-int/lit8 v3, v3, -0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    :goto_2
    iget p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->j2:I

    .line 86
    .line 87
    if-gt v2, p1, :cond_6

    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-static {v2}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    add-int/lit8 v2, v2, 0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    if-ne p1, v5, :cond_4

    .line 102
    .line 103
    :goto_3
    if-gt v2, v4, :cond_6

    .line 104
    .line 105
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-static {v2}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_4
    if-ne p1, v6, :cond_5

    .line 118
    .line 119
    :goto_4
    iget p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->j2:I

    .line 120
    .line 121
    if-gt v1, p1, :cond_6

    .line 122
    .line 123
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-static {v1}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_5
    :goto_5
    if-gt v1, v4, :cond_6

    .line 136
    .line 137
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-static {v1}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_6
    iget-boolean p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->s2:Z

    .line 150
    .line 151
    if-nez p1, :cond_8

    .line 152
    .line 153
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    const/4 v0, -0x1

    .line 160
    if-ne p1, v0, :cond_7

    .line 161
    .line 162
    const/4 p1, 0x0

    .line 163
    :cond_7
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->v1:I

    .line 164
    .line 165
    :cond_8
    return-void

    .line 166
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 167
    .line 168
    const-string v0, "Month out of range [1-12]"

    .line 169
    .line 170
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1
.end method

.method private j1(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p0:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    const/16 v2, 0x3b

    .line 9
    .line 10
    if-gt v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p0:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p0:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v1, -0x1

    .line 35
    if-ne p1, v1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p0:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/String;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->a2:Ljava/lang/String;

    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method private k1(Ljava/util/ArrayList;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "items",
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$g;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$g;-><init>(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-ltz p1, :cond_0

    .line 15
    .line 16
    return p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "Item["

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p2, "] out of range"

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method private r1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Y:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->s2:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->e2:I

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/16 v2, 0xb

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/16 v2, 0xa

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->l2:I

    .line 40
    .line 41
    :goto_1
    iget v3, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->o2:I

    .line 42
    .line 43
    if-gt v2, v3, :cond_3

    .line 44
    .line 45
    invoke-static {v2}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iget-boolean v4, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->s2:Z

    .line 50
    .line 51
    if-nez v4, :cond_2

    .line 52
    .line 53
    if-ne v2, v0, :cond_2

    .line 54
    .line 55
    iput-object v3, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->R1:Ljava/lang/String;

    .line 56
    .line 57
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Y:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Y:Ljava/util/ArrayList;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->R1:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const/4 v2, -0x1

    .line 74
    if-ne v0, v2, :cond_4

    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Y:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/String;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->R1:Ljava/lang/String;

    .line 85
    .line 86
    :cond_4
    iget-boolean v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->s2:Z

    .line 87
    .line 88
    if-nez v0, :cond_5

    .line 89
    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const/16 v1, 0xc

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V1:Ljava/lang/String;

    .line 105
    .line 106
    :cond_5
    return-void
.end method

.method private s1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->f2:I

    .line 7
    .line 8
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i2:I

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    if-ge v0, v1, :cond_1

    .line 23
    .line 24
    :goto_0
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i2:I

    .line 25
    .line 26
    if-gt v0, v1, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i2:I

    .line 41
    .line 42
    if-lt v0, v1, :cond_2

    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    add-int/lit8 v0, v0, -0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->s2:Z

    .line 57
    .line 58
    if-nez v0, :cond_5

    .line 59
    .line 60
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    if-ne v0, v1, :cond_5

    .line 66
    .line 67
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-static {v1}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/4 v1, -0x1

    .line 86
    if-ne v0, v1, :cond_4

    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r1:I

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r1:I

    .line 93
    .line 94
    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public A1(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startYear",
            "endYear"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->f2:I

    .line 7
    .line 8
    iput p2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i2:I

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->s1()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string p2, "Date mode invalid"

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public B1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resetWhileWheel"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->s2:Z

    .line 2
    .line 3
    return-void
.end method

.method public C1(IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "yearOrMonth",
            "monthOrDay",
            "hour",
            "minute"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i2:I

    .line 20
    .line 21
    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->f2:I

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i1(I)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->g1(II)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->k1(Ljava/util/ArrayList;I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->v1:I

    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->k1(Ljava/util/ArrayList;I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->L1:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    if-ne v0, v2, :cond_1

    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i1(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->k1(Ljava/util/ArrayList;I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r1:I

    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->k1(Ljava/util/ArrayList;I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->v1:I

    .line 66
    .line 67
    :cond_1
    :goto_0
    iget p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->e2:I

    .line 68
    .line 69
    const/4 p2, -0x1

    .line 70
    if-eq p1, p2, :cond_2

    .line 71
    .line 72
    invoke-static {p3}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->R1:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {p4}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V1:Ljava/lang/String;

    .line 83
    .line 84
    :cond_2
    return-void

    .line 85
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string p2, "Date mode invalid"

    .line 88
    .line 89
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1
.end method

.method public D1(IIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "year",
            "month",
            "day",
            "hour",
            "minute"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i1(I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->g1(II)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->k1(Ljava/util/ArrayList;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r1:I

    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->k1(Ljava/util/ArrayList;I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->v1:I

    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p0, p1, p3}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->k1(Ljava/util/ArrayList;I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->L1:I

    .line 34
    .line 35
    iget p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->e2:I

    .line 36
    .line 37
    const/4 p2, -0x1

    .line 38
    if-eq p1, p2, :cond_0

    .line 39
    .line 40
    invoke-static {p4}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->R1:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p5}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->o(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V1:Ljava/lang/String;

    .line 51
    .line 52
    :cond_0
    return-void

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    const-string p2, "Date mode invalid"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public E1(III)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "endHour",
            "endMinute",
            "endSecond"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->e2:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_6

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ltz p1, :cond_1

    .line 8
    .line 9
    if-ltz p2, :cond_1

    .line 10
    .line 11
    const/16 v2, 0x3b

    .line 12
    .line 13
    if-le p2, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 19
    :goto_1
    const/4 v3, 0x4

    .line 20
    if-ne v0, v3, :cond_3

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    const/16 v3, 0xc

    .line 25
    .line 26
    if-le p1, v3, :cond_3

    .line 27
    .line 28
    :cond_2
    const/4 v2, 0x1

    .line 29
    :cond_3
    const/4 v3, 0x3

    .line 30
    if-ne v0, v3, :cond_4

    .line 31
    .line 32
    const/16 v0, 0x18

    .line 33
    .line 34
    if-lt p1, v0, :cond_4

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_4
    move v1, v2

    .line 38
    :goto_2
    if-nez v1, :cond_5

    .line 39
    .line 40
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->o2:I

    .line 41
    .line 42
    iput p2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p2:I

    .line 43
    .line 44
    iput p3, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->q2:I

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r1()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string p2, "Time out of range"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string p2, "Time mode invalid"

    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public F1(III)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startHour",
            "startMinute",
            "startSecond"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->e2:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_6

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ltz p1, :cond_1

    .line 8
    .line 9
    if-ltz p2, :cond_1

    .line 10
    .line 11
    const/16 v2, 0x3b

    .line 12
    .line 13
    if-le p2, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 19
    :goto_1
    const/4 v3, 0x4

    .line 20
    if-ne v0, v3, :cond_3

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    const/16 v3, 0xc

    .line 25
    .line 26
    if-le p1, v3, :cond_3

    .line 27
    .line 28
    :cond_2
    const/4 v2, 0x1

    .line 29
    :cond_3
    const/4 v3, 0x3

    .line 30
    if-ne v0, v3, :cond_4

    .line 31
    .line 32
    const/16 v0, 0x18

    .line 33
    .line 34
    if-lt p1, v0, :cond_4

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_4
    move v1, v2

    .line 38
    :goto_2
    if-nez v1, :cond_5

    .line 39
    .line 40
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->l2:I

    .line 41
    .line 42
    iput p2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->m2:I

    .line 43
    .line 44
    iput p3, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->n2:I

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r1()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string p2, "Time out of range"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string p2, "Time mode invalid"

    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method protected G()Landroid/view/View;
    .locals 14
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->s1()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    if-eq v0, v2, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->q1()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->u(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i1(I)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    if-ne v0, v3, :cond_5

    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_5

    .line 57
    .line 58
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 59
    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->q1()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->u(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 72
    .line 73
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->o1()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-static {v4}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->u(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-direct {p0, v0, v4}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->g1(II)V

    .line 90
    .line 91
    .line 92
    :cond_5
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->e2:I

    .line 93
    .line 94
    if-eq v0, v2, :cond_6

    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Y:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_6

    .line 103
    .line 104
    invoke-direct {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r1()V

    .line 105
    .line 106
    .line 107
    :cond_6
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->e2:I

    .line 108
    .line 109
    if-eq v0, v2, :cond_7

    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Z:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_7

    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->R1:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->u(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->h1(I)V

    .line 126
    .line 127
    .line 128
    :cond_7
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->e2:I

    .line 129
    .line 130
    if-eq v0, v2, :cond_8

    .line 131
    .line 132
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p0:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_8

    .line 139
    .line 140
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V1:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v0}, Lcom/join/mgps/customview/wheel/picker/util/DateUtils;->u(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->j1(I)V

    .line 147
    .line 148
    .line 149
    :cond_8
    new-instance v0, Landroid/widget/LinearLayout;

    .line 150
    .line 151
    iget-object v4, p0, Lcom/join/mgps/customview/popup/a;->b:Landroid/app/Activity;

    .line 152
    .line 153
    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    const/4 v4, 0x0

    .line 157
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 158
    .line 159
    .line 160
    const/16 v5, 0x11

    .line 161
    .line 162
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/c;->l0()Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/c;->l0()Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/c;->l0()Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/c;->l0()Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/c;->l0()Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/c;->l0()Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    iget v11, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 190
    .line 191
    const/high16 v12, 0x3f800000    # 1.0f

    .line 192
    .line 193
    const/4 v13, -0x2

    .line 194
    if-eqz v11, :cond_9

    .line 195
    .line 196
    if-ne v11, v1, :cond_a

    .line 197
    .line 198
    :cond_9
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 199
    .line 200
    invoke-direct {v1, v4, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V:Ljava/util/ArrayList;

    .line 207
    .line 208
    iget v11, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r1:I

    .line 209
    .line 210
    invoke-virtual {v5, v1, v11}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setItems(Ljava/util/List;I)V

    .line 211
    .line 212
    .line 213
    new-instance v1, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$a;

    .line 214
    .line 215
    invoke-direct {v1, p0, v6, v7}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$a;-><init>(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;Lcom/join/mgps/customview/wheel/picker/WheelView;Lcom/join/mgps/customview/wheel/picker/WheelView;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setOnItemSelectListener(Lcom/join/mgps/customview/wheel/picker/WheelView$g;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->b1:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-nez v1, :cond_a

    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/c;->k0()Landroid/widget/TextView;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    iget v5, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r2:I

    .line 237
    .line 238
    int-to-float v5, v5

    .line 239
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 240
    .line 241
    .line 242
    iget-object v5, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->b1:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 248
    .line 249
    .line 250
    :cond_a
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 251
    .line 252
    if-eq v1, v2, :cond_b

    .line 253
    .line 254
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 255
    .line 256
    invoke-direct {v1, v4, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    .line 261
    .line 262
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 263
    .line 264
    iget v5, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->v1:I

    .line 265
    .line 266
    invoke-virtual {v6, v1, v5}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setItems(Ljava/util/List;I)V

    .line 267
    .line 268
    .line 269
    new-instance v1, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;

    .line 270
    .line 271
    invoke-direct {v1, p0, v7}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$b;-><init>(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;Lcom/join/mgps/customview/wheel/picker/WheelView;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v6, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setOnItemSelectListener(Lcom/join/mgps/customview/wheel/picker/WheelView$g;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 278
    .line 279
    .line 280
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->f1:Ljava/lang/String;

    .line 281
    .line 282
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-nez v1, :cond_b

    .line 287
    .line 288
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/c;->k0()Landroid/widget/TextView;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    iget v5, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r2:I

    .line 293
    .line 294
    int-to-float v5, v5

    .line 295
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 296
    .line 297
    .line 298
    iget-object v5, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->f1:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 304
    .line 305
    .line 306
    :cond_b
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 307
    .line 308
    if-eqz v1, :cond_c

    .line 309
    .line 310
    if-ne v1, v3, :cond_d

    .line 311
    .line 312
    :cond_c
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 313
    .line 314
    invoke-direct {v1, v4, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    .line 319
    .line 320
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X:Ljava/util/ArrayList;

    .line 321
    .line 322
    iget v3, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->L1:I

    .line 323
    .line 324
    invoke-virtual {v7, v1, v3}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setItems(Ljava/util/List;I)V

    .line 325
    .line 326
    .line 327
    new-instance v1, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$c;

    .line 328
    .line 329
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$c;-><init>(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v7, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setOnItemSelectListener(Lcom/join/mgps/customview/wheel/picker/WheelView$g;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 336
    .line 337
    .line 338
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i1:Ljava/lang/String;

    .line 339
    .line 340
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-nez v1, :cond_d

    .line 345
    .line 346
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/c;->k0()Landroid/widget/TextView;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    iget v3, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r2:I

    .line 351
    .line 352
    int-to-float v3, v3

    .line 353
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 354
    .line 355
    .line 356
    iget-object v3, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i1:Ljava/lang/String;

    .line 357
    .line 358
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 362
    .line 363
    .line 364
    :cond_d
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->e2:I

    .line 365
    .line 366
    if-eq v1, v2, :cond_10

    .line 367
    .line 368
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 369
    .line 370
    invoke-direct {v1, v4, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v8, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    .line 375
    .line 376
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Y:Ljava/util/ArrayList;

    .line 377
    .line 378
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->R1:Ljava/lang/String;

    .line 379
    .line 380
    invoke-virtual {v8, v1, v2}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setItems(Ljava/util/List;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    new-instance v1, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$d;

    .line 384
    .line 385
    invoke-direct {v1, p0, v9}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$d;-><init>(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;Lcom/join/mgps/customview/wheel/picker/WheelView;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v8, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setOnItemSelectListener(Lcom/join/mgps/customview/wheel/picker/WheelView$g;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 392
    .line 393
    .line 394
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->l1:Ljava/lang/String;

    .line 395
    .line 396
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-nez v1, :cond_e

    .line 401
    .line 402
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/c;->k0()Landroid/widget/TextView;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    iget v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r2:I

    .line 407
    .line 408
    int-to-float v2, v2

    .line 409
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 410
    .line 411
    .line 412
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->l1:Ljava/lang/String;

    .line 413
    .line 414
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 418
    .line 419
    .line 420
    :cond_e
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 421
    .line 422
    invoke-direct {v1, v4, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v9, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    .line 427
    .line 428
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->Z:Ljava/util/ArrayList;

    .line 429
    .line 430
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V1:Ljava/lang/String;

    .line 431
    .line 432
    invoke-virtual {v9, v1, v2}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setItems(Ljava/util/List;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    new-instance v1, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$e;

    .line 436
    .line 437
    invoke-direct {v1, p0, v10}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$e;-><init>(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;Lcom/join/mgps/customview/wheel/picker/WheelView;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v9, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setOnItemSelectListener(Lcom/join/mgps/customview/wheel/picker/WheelView$g;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 444
    .line 445
    .line 446
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p1:Ljava/lang/String;

    .line 447
    .line 448
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-nez v1, :cond_f

    .line 453
    .line 454
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/c;->k0()Landroid/widget/TextView;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    iget v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r2:I

    .line 459
    .line 460
    int-to-float v2, v2

    .line 461
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 462
    .line 463
    .line 464
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p1:Ljava/lang/String;

    .line 465
    .line 466
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 470
    .line 471
    .line 472
    :cond_f
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 473
    .line 474
    invoke-direct {v1, v4, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v10, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    .line 479
    .line 480
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p0:Ljava/util/ArrayList;

    .line 481
    .line 482
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->a2:Ljava/lang/String;

    .line 483
    .line 484
    invoke-virtual {v10, v1, v2}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setItems(Ljava/util/List;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    new-instance v1, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$f;

    .line 488
    .line 489
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$f;-><init>(Lcom/join/mgps/customview/wheel/picker/DateTimePicker;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v10, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setOnItemSelectListener(Lcom/join/mgps/customview/wheel/picker/WheelView$g;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 496
    .line 497
    .line 498
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->q1:Ljava/lang/String;

    .line 499
    .line 500
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    if-nez v1, :cond_10

    .line 505
    .line 506
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/c;->k0()Landroid/widget/TextView;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    iget v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r2:I

    .line 511
    .line 512
    int-to-float v2, v2

    .line 513
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 514
    .line 515
    .line 516
    iget-object v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->q1:Ljava/lang/String;

    .line 517
    .line 518
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 522
    .line 523
    .line 524
    :cond_10
    return-object v0
.end method

.method protected K()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->c2:Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->q1()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->o1()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->l1()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->m1()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->n1()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p1()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 31
    .line 32
    const/4 v7, -0x1

    .line 33
    if-eq v1, v7, :cond_4

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    if-eq v1, v0, :cond_2

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    if-eq v1, v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->c2:Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;

    .line 45
    .line 46
    check-cast v0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$j;

    .line 47
    .line 48
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->c2:Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;

    .line 53
    .line 54
    check-cast v0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$o;

    .line 55
    .line 56
    invoke-interface {v0, v2, v3, v5, v6}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->c2:Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;

    .line 61
    .line 62
    move-object v1, v0

    .line 63
    check-cast v1, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$m;

    .line 64
    .line 65
    invoke-interface/range {v1 .. v6}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->c2:Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;

    .line 70
    .line 71
    check-cast v1, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$k;

    .line 72
    .line 73
    invoke-interface {v1, v5, v6, v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker$k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method public l1()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->L1:I

    .line 19
    .line 20
    if-gt v0, v1, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->L1:I

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->X:Ljava/util/ArrayList;

    .line 33
    .line 34
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->L1:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/String;

    .line 41
    .line 42
    return-object v0
.end method

.method public m1()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->e2:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->R1:Ljava/lang/String;

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const-string v0, ""

    .line 10
    .line 11
    return-object v0
.end method

.method public n1()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->e2:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V1:Ljava/lang/String;

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const-string v0, ""

    .line 10
    .line 11
    return-object v0
.end method

.method public o1()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->v1:I

    .line 13
    .line 14
    if-gt v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->v1:I

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->W:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->v1:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/String;

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_1
    const-string v0, ""

    .line 38
    .line 39
    return-object v0
.end method

.method public p1()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->e2:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->a2:Ljava/lang/String;

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const-string v0, ""

    .line 10
    .line 11
    return-object v0
.end method

.method public q1()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r1:I

    .line 19
    .line 20
    if-gt v0, v2, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sub-int/2addr v0, v1

    .line 29
    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r1:I

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->V:Ljava/util/ArrayList;

    .line 32
    .line 33
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->r1:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/String;

    .line 40
    .line 41
    return-object v0
.end method

.method public t1(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "endYearOrMonth",
            "endMonthOrDay"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i2:I

    .line 12
    .line 13
    iput p2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->j2:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x2

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->j2:I

    .line 20
    .line 21
    iput p2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->k2:I

    .line 22
    .line 23
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->s1()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string p2, "Not support year/month/day mode"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p2, "Date mode invalid"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public u1(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "endYear",
            "endMonth",
            "endDay"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i2:I

    .line 7
    .line 8
    iput p2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->j2:I

    .line 9
    .line 10
    iput p3, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->k2:I

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->s1()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string p2, "Date mode invalid"

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public v1(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startYearOrMonth",
            "startMonthOrDay"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->f2:I

    .line 12
    .line 13
    iput p2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->g2:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x2

    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i2:I

    .line 30
    .line 31
    iput v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->f2:I

    .line 32
    .line 33
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->g2:I

    .line 34
    .line 35
    iput p2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->h2:I

    .line 36
    .line 37
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->s1()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string p2, "Not support year/month/day mode"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p2, "Date mode invalid"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public w1(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startYear",
            "startMonth",
            "startDay"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->d2:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->f2:I

    .line 7
    .line 8
    iput p2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->g2:I

    .line 9
    .line 10
    iput p3, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->h2:I

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->s1()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string p2, "Date mode invalid"

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public x1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "yearLabel",
            "monthLabel",
            "dayLabel",
            "hourLabel",
            "minuteLabel",
            "secondLabel"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->b1:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->f1:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->i1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->l1:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->p1:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->q1:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public y1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->c2:Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;

    .line 2
    .line 3
    return-void
.end method

.method public z1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onWheelListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->b2:Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;

    .line 2
    .line 3
    return-void
.end method
