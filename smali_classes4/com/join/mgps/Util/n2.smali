.class public final Lcom/join/mgps/Util/n2;
.super Lcom/join/mgps/Util/m2;
.source "SourceFile"


# static fields
.field private static d:Lcom/join/mgps/Util/n2;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/Object;


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
    invoke-direct {p0}, Lcom/join/mgps/Util/m2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/Util/n2;->b:Landroid/content/Context;

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

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/Util/m2;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/Util/n2;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/Util/n2;->c:Ljava/lang/Object;

    return-void
.end method

.method static synthetic e(Lcom/join/mgps/Util/n2;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/Util/m2;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcom/join/mgps/Util/n2;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/Util/m2;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static g(Landroid/content/Context;)Lcom/join/mgps/Util/n2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/Util/n2;->d:Lcom/join/mgps/Util/n2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/join/mgps/Util/n2;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/Util/n2;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/join/mgps/Util/n2;->d:Lcom/join/mgps/Util/n2;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/join/mgps/Util/n2;->h()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-object p0, Lcom/join/mgps/Util/n2;->d:Lcom/join/mgps/Util/n2;

    .line 28
    .line 29
    return-object p0
.end method

.method private h()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/Util/n2$a;

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
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move-object v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/Util/n2$a;-><init>(Lcom/join/mgps/Util/n2;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/Util/n2$b;

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
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move-object v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/Util/n2$b;-><init>(Lcom/join/mgps/Util/n2;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
