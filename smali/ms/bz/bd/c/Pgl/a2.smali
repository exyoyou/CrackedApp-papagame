.class public final Lms/bz/bd/c/Pgl/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final c:Landroid/content/Context;

.field private tt:Ljava/lang/Class;

.field private uj:Ljava/lang/reflect/Method;

.field private ve:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms/bz/bd/c/Pgl/a2;->c:Landroid/content/Context;

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    const-string v4, "6fd825"

    const/16 p1, 0x22

    new-array v5, p1, [B

    fill-array-data v5, :array_0

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lms/bz/bd/c/Pgl/a2;->tt:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lms/bz/bd/c/Pgl/a2;->ve:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object p1, p0, Lms/bz/bd/c/Pgl/a2;->tt:Ljava/lang/Class;

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "589b43"

    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lms/bz/bd/c/Pgl/a2;->uj:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    nop

    :array_0
    .array-data 1
        0x24t
        0x6bt
        0x1at
        0x2t
        0xct
        0x2ct
        0x31t
        0x55t
        0x3at
        0x61t
        0x23t
        0x2at
        0x1et
        0x48t
        0x43t
        0x2bt
        0x38t
        0x57t
        0x39t
        0x26t
        0xet
        0x60t
        0x27t
        0x5et
        0x2t
        0x34t
        0x3ct
        0x43t
        0x30t
        0x7at
        0xet
        0x69t
        0x7t
        0x40t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x23t
        0x3ft
        0x5et
        0x39t
        0x2at
        0xdt
        0x12t
    .end array-data
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lms/bz/bd/c/Pgl/a2;->c:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lms/bz/bd/c/Pgl/a2;->uj:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    iget-object v2, p0, Lms/bz/bd/c/Pgl/a2;->ve:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v0, v3, v4

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    return-object v0
.end method
