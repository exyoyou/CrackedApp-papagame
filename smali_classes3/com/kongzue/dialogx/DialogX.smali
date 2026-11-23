.class public Lcom/kongzue/dialogx/DialogX;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/DialogX$IMPL_MODE;,
        Lcom/kongzue/dialogx/DialogX$THEME;
    }
.end annotation


# static fields
.field public static A:Ljava/lang/String; = null

.field public static B:Lcom/kongzue/dialogx/util/TextInfo; = null

.field public static C:J = 0x0L

.field public static D:J = 0x0L

.field public static E:Lcom/kongzue/dialogx/interfaces/f; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/interfaces/BaseDialog;",
            ">;"
        }
    .end annotation
.end field

.field public static F:Z = false

.field public static G:Z = false

.field public static H:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static I:I = 0x0

.field public static J:I = 0x0

.field public static K:Z = false

.field public static L:[Ljava/lang/String; = null

.field public static M:I = 0x0

.field public static N:I = 0x0

.field public static O:I = 0x0

.field public static P:I = 0x0

.field public static Q:I = 0x0

.field public static R:I = 0x0

.field public static S:I = 0x0

.field public static T:Z = false

.field public static U:Z = false

.field public static V:Ljava/lang/CharSequence; = null

.field public static W:Ljava/lang/CharSequence; = null

.field public static X:Ljava/lang/CharSequence; = null

.field public static Y:Ljava/lang/CharSequence; = null

.field public static Z:Ljava/lang/CharSequence; = null

.field public static final a:Ljava/lang/String; = "DialogX.init: \u521d\u59cb\u5316\u5f02\u5e38\uff0ccontext \u4e3a null \u6216\u672a\u521d\u59cb\u5316\uff0c\u8be6\u60c5\u8bf7\u67e5\u770b https://github.com/kongzue/DialogX/wiki"

.field public static b:Z = true

.field public static c:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

.field public static d:Lcom/kongzue/dialogx/DialogX$THEME;

.field public static e:Lcom/kongzue/dialogx/DialogX$THEME;

.field public static f:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:Z

.field public static l:Z

.field public static m:Z

.field public static n:Lcom/kongzue/dialogx/util/TextInfo;

.field public static o:Lcom/kongzue/dialogx/util/TextInfo;

.field public static p:Lcom/kongzue/dialogx/util/TextInfo;

.field public static q:Lcom/kongzue/dialogx/util/TextInfo;

.field public static r:Lcom/kongzue/dialogx/util/TextInfo;

.field public static s:Lcom/kongzue/dialogx/util/j;

.field public static t:Lcom/kongzue/dialogx/util/TextInfo;

.field public static u:Lcom/kongzue/dialogx/util/TextInfo;

.field public static v:Ljava/lang/Integer;

.field public static w:Ljava/lang/Integer;

.field public static x:Ljava/lang/Integer;

.field public static y:Z

.field public static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/style/a;->q()Lcom/kongzue/dialogx/style/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/kongzue/dialogx/DialogX;->c:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 6
    .line 7
    sget-object v0, Lcom/kongzue/dialogx/DialogX$THEME;->LIGHT:Lcom/kongzue/dialogx/DialogX$THEME;

    .line 8
    .line 9
    sput-object v0, Lcom/kongzue/dialogx/DialogX;->d:Lcom/kongzue/dialogx/DialogX$THEME;

    .line 10
    .line 11
    sget-object v0, Lcom/kongzue/dialogx/DialogX$IMPL_MODE;->VIEW:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 12
    .line 13
    sput-object v0, Lcom/kongzue/dialogx/DialogX;->f:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    sput-boolean v0, Lcom/kongzue/dialogx/DialogX;->k:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    sput-boolean v1, Lcom/kongzue/dialogx/DialogX;->l:Z

    .line 20
    .line 21
    sput-boolean v0, Lcom/kongzue/dialogx/DialogX;->m:Z

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    sput-object v2, Lcom/kongzue/dialogx/DialogX;->v:Ljava/lang/Integer;

    .line 25
    .line 26
    sput-object v2, Lcom/kongzue/dialogx/DialogX;->w:Ljava/lang/Integer;

    .line 27
    .line 28
    sput-object v2, Lcom/kongzue/dialogx/DialogX;->x:Ljava/lang/Integer;

    .line 29
    .line 30
    sput-boolean v0, Lcom/kongzue/dialogx/DialogX;->y:Z

    .line 31
    .line 32
    sput-boolean v1, Lcom/kongzue/dialogx/DialogX;->z:Z

    .line 33
    .line 34
    const-wide/16 v2, -0x1

    .line 35
    .line 36
    sput-wide v2, Lcom/kongzue/dialogx/DialogX;->C:J

    .line 37
    .line 38
    sput-wide v2, Lcom/kongzue/dialogx/DialogX;->D:J

    .line 39
    .line 40
    sput-boolean v0, Lcom/kongzue/dialogx/DialogX;->F:Z

    .line 41
    .line 42
    sput-boolean v0, Lcom/kongzue/dialogx/DialogX;->G:Z

    .line 43
    .line 44
    sput-boolean v1, Lcom/kongzue/dialogx/DialogX;->H:Z

    .line 45
    .line 46
    sput v1, Lcom/kongzue/dialogx/DialogX;->I:I

    .line 47
    .line 48
    const/high16 v2, 0x420c0000    # 35.0f

    .line 49
    .line 50
    invoke-static {v2}, Lcom/kongzue/dialogx/DialogX;->a(F)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    sput v2, Lcom/kongzue/dialogx/DialogX;->J:I

    .line 55
    .line 56
    sput-boolean v1, Lcom/kongzue/dialogx/DialogX;->K:Z

    .line 57
    .line 58
    const-string v2, "com.mobile.auth.gatewayauth"

    .line 59
    .line 60
    const-string v3, "com.google.android.gms.ads"

    .line 61
    .line 62
    const-string v4, "com.bytedance.sdk.openadsdk.stub.activity"

    .line 63
    .line 64
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    sput-object v2, Lcom/kongzue/dialogx/DialogX;->L:[Ljava/lang/String;

    .line 69
    .line 70
    const/4 v2, -0x1

    .line 71
    sput v2, Lcom/kongzue/dialogx/DialogX;->M:I

    .line 72
    .line 73
    sput v2, Lcom/kongzue/dialogx/DialogX;->N:I

    .line 74
    .line 75
    sput v2, Lcom/kongzue/dialogx/DialogX;->O:I

    .line 76
    .line 77
    sput v2, Lcom/kongzue/dialogx/DialogX;->P:I

    .line 78
    .line 79
    sput v2, Lcom/kongzue/dialogx/DialogX;->Q:I

    .line 80
    .line 81
    sput v2, Lcom/kongzue/dialogx/DialogX;->R:I

    .line 82
    .line 83
    sput v2, Lcom/kongzue/dialogx/DialogX;->S:I

    .line 84
    .line 85
    sput-boolean v0, Lcom/kongzue/dialogx/DialogX;->T:Z

    .line 86
    .line 87
    sput-boolean v1, Lcom/kongzue/dialogx/DialogX;->U:Z

    .line 88
    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(F)I
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float p0, p0, v0

    .line 12
    .line 13
    const/high16 v0, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p0, v0

    .line 16
    float-to-int p0, p0

    .line 17
    return p0
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "DialogX.init: \u521d\u59cb\u5316\u5f02\u5e38\uff0ccontext \u4e3a null \u6216\u672a\u521d\u59cb\u5316\uff0c\u8be6\u60c5\u8bf7\u67e5\u770b https://github.com/kongzue/DialogX/wiki"

    .line 4
    .line 5
    invoke-static {p0}, Lcom/kongzue/dialogx/DialogX;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->b0(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static varargs d([Lcom/kongzue/dialogx/interfaces/BaseDialog;)Lcom/kongzue/dialogx/util/d;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/util/d;->c([Lcom/kongzue/dialogx/interfaces/BaseDialog;)Lcom/kongzue/dialogx/util/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/d;->e()Lcom/kongzue/dialogx/util/d;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
