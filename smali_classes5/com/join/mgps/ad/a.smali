.class public Lcom/join/mgps/ad/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static o:Lcom/join/mgps/ad/a; = null

.field public static final p:I = 0x1

.field public static final q:I = 0x2

.field public static final r:I = 0x3

.field public static final s:I = 0x4

.field public static final t:I = 0x5

.field public static final u:I = 0x7

.field public static final v:I = 0x8

.field public static final w:I = 0x9

.field public static final x:I = 0xa


# instance fields
.field private a:Lcom/join/mgps/ad/a0;

.field private b:Lcom/join/mgps/ad/h;

.field private c:Lcom/join/mgps/ad/l;

.field private d:Lcom/join/mgps/ad/s;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Z

.field private n:Lcom/join/mgps/ad/n;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/ad/a;->l:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/ad/a;->m:Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/join/mgps/ad/a;->e:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ad/a;->n:Lcom/join/mgps/ad/n;

    .line 2
    .line 3
    return-object p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "adId",
            "showAd"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ad/a;->b:Lcom/join/mgps/ad/h;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/ad/a;->f:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/ad/a;->b:Lcom/join/mgps/ad/h;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/ad/d;->c()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/join/mgps/ad/a;->f:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v6, Lcom/join/mgps/ad/a$b;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/ad/a;->e:Landroid/content/Context;

    .line 40
    .line 41
    move-object v0, v6

    .line 42
    move-object v1, p0

    .line 43
    move-object v3, p1

    .line 44
    move-object v4, p2

    .line 45
    move v5, p3

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/ad/a$b;-><init>(Lcom/join/mgps/ad/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    iput-object v6, p0, Lcom/join/mgps/ad/a;->b:Lcom/join/mgps/ad/h;

    .line 50
    .line 51
    invoke-virtual {v6}, Lcom/join/mgps/ad/h;->a()V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_1
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "adId",
            "showAd"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ad/a;->c:Lcom/join/mgps/ad/l;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/ad/a;->j:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/ad/a;->c:Lcom/join/mgps/ad/l;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/ad/d;->c()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/join/mgps/ad/a;->j:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v6, Lcom/join/mgps/ad/a$c;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/ad/a;->e:Landroid/content/Context;

    .line 40
    .line 41
    move-object v0, v6

    .line 42
    move-object v1, p0

    .line 43
    move-object v3, p1

    .line 44
    move-object v4, p2

    .line 45
    move v5, p3

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/ad/a$c;-><init>(Lcom/join/mgps/ad/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    iput-object v6, p0, Lcom/join/mgps/ad/a;->c:Lcom/join/mgps/ad/l;

    .line 50
    .line 51
    invoke-virtual {v6}, Lcom/join/mgps/ad/l;->a()V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_1
    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "adId",
            "showAd"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ad/a;->d:Lcom/join/mgps/ad/s;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/ad/a;->k:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/ad/a;->d:Lcom/join/mgps/ad/s;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/ad/d;->c()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/join/mgps/ad/a;->k:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v6, Lcom/join/mgps/ad/a$d;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/ad/a;->e:Landroid/content/Context;

    .line 40
    .line 41
    move-object v0, v6

    .line 42
    move-object v1, p0

    .line 43
    move-object v3, p1

    .line 44
    move-object v4, p2

    .line 45
    move v5, p3

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/ad/a$d;-><init>(Lcom/join/mgps/ad/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    iput-object v6, p0, Lcom/join/mgps/ad/a;->d:Lcom/join/mgps/ad/s;

    .line 50
    .line 51
    invoke-virtual {v6}, Lcom/join/mgps/ad/s;->a()V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_1
    return-void
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "adId",
            "showAd"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ad/a;->a:Lcom/join/mgps/ad/a0;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/ad/a;->g:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/ad/a;->a:Lcom/join/mgps/ad/a0;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/ad/d;->c()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/join/mgps/ad/a;->g:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v6, Lcom/join/mgps/ad/a$a;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/ad/a;->e:Landroid/content/Context;

    .line 40
    .line 41
    move-object v0, v6

    .line 42
    move-object v1, p0

    .line 43
    move-object v3, p1

    .line 44
    move-object v4, p2

    .line 45
    move v5, p3

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/ad/a$a;-><init>(Lcom/join/mgps/ad/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    iput-object v6, p0, Lcom/join/mgps/ad/a;->a:Lcom/join/mgps/ad/a0;

    .line 50
    .line 51
    invoke-virtual {v6}, Lcom/join/mgps/ad/a0;->a()V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_1
    return-void
.end method

.method public static g(Landroid/content/Context;)Lcom/join/mgps/ad/a;
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
    sget-object v0, Lcom/join/mgps/ad/a;->o:Lcom/join/mgps/ad/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/ad/a;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/ad/a;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/join/mgps/ad/a;->o:Lcom/join/mgps/ad/a;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lcom/join/mgps/ad/a;->o:Lcom/join/mgps/ad/a;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/ad/a;->n:Lcom/join/mgps/ad/n;

    .line 3
    .line 4
    return-void
.end method

.method public h(ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/ad/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adType",
            "appId",
            "adId",
            "listener"
        }
    .end annotation

    .line 1
    iput-object p4, p0, Lcom/join/mgps/ad/a;->n:Lcom/join/mgps/ad/n;

    .line 2
    .line 3
    const/4 p4, 0x2

    .line 4
    const/4 v0, 0x0

    .line 5
    if-ne p1, p4, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p2, p3, v0}, Lcom/join/mgps/ad/a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p4, 0x3

    .line 12
    if-ne p1, p4, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p4, 0x4

    .line 16
    if-ne p1, p4, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 p4, 0x7

    .line 20
    if-ne p1, p4, :cond_3

    .line 21
    .line 22
    invoke-direct {p0, p2, p3, v0}, Lcom/join/mgps/ad/a;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_3
    const/16 p4, 0x9

    .line 27
    .line 28
    if-ne p1, p4, :cond_4

    .line 29
    .line 30
    invoke-direct {p0, p2, p3, v0}, Lcom/join/mgps/ad/a;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_4
    invoke-direct {p0, p2, p3, v0}, Lcom/join/mgps/ad/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iput p1, p0, Lcom/join/mgps/ad/a;->l:I

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/join/mgps/ad/a;->m:Z

    .line 41
    .line 42
    return-void
.end method

.method public i(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/ad/a;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/ad/a;->l:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/ad/a;->a:Lcom/join/mgps/ad/a0;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/join/mgps/ad/d;->p(Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x2

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/ad/a;->b:Lcom/join/mgps/ad/h;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Lcom/join/mgps/ad/d;->p(Landroid/app/Activity;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x7

    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/ad/a;->c:Lcom/join/mgps/ad/l;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Lcom/join/mgps/ad/d;->p(Landroid/app/Activity;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/16 v1, 0x9

    .line 41
    .line 42
    if-ne v0, v1, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/ad/a;->d:Lcom/join/mgps/ad/s;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/join/mgps/ad/d;->p(Landroid/app/Activity;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v0, "please call method load before show"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    :goto_0
    return-void
.end method
