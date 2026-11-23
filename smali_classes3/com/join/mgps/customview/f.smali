.class public final Lcom/join/mgps/customview/f;
.super Lcom/join/mgps/customview/e;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/Object;

.field private z:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/e;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/f;->z:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/f;->B()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "rootFragment"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/e;-><init>(Landroid/content/Context;)V

    .line 5
    iput-object p1, p0, Lcom/join/mgps/customview/f;->z:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/join/mgps/customview/f;->A:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/customview/f;->B()V

    return-void
.end method

.method public static A(Landroid/content/Context;Ljava/lang/Object;)Lcom/join/mgps/customview/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "rootFragment"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/f;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private B()V
    .locals 0

    .line 1
    return-void
.end method

.method static synthetic s(Lcom/join/mgps/customview/f;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/e;->j(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t(Lcom/join/mgps/customview/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u(Lcom/join/mgps/customview/f;IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/customview/e;->i(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v(Lcom/join/mgps/customview/f;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/e;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w(Lcom/join/mgps/customview/f;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/e;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x(Lcom/join/mgps/customview/f;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/e;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic y(Lcom/join/mgps/customview/f;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/e;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static z(Landroid/content/Context;)Lcom/join/mgps/customview/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/f;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public C(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/f;->z:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/f;->B()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method c()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/customview/f$g;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/customview/f$g;-><init>(Lcom/join/mgps/customview/f;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method d()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/customview/f$e;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/customview/f$e;-><init>(Lcom/join/mgps/customview/f;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method e()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/customview/f$d;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/customview/f$d;-><init>(Lcom/join/mgps/customview/f;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method f()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/customview/f$f;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/customview/f$f;-><init>(Lcom/join/mgps/customview/f;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method i(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pid",
            "success"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/f$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/customview/f$c;-><init>(Lcom/join/mgps/customview/f;IZ)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method j(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/f$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/f$a;-><init>(Lcom/join/mgps/customview/f;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method r(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/f$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/f$b;-><init>(Lcom/join/mgps/customview/f;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
