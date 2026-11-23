.class public Lcn/fly/tools/xcrash/XCrash$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/tools/xcrash/XCrash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:I

.field i:I

.field j:I

.field k:I

.field l:Z

.field m:Z

.field n:Z

.field o:I

.field p:[Ljava/lang/String;

.field q:Lcn/fly/tools/xcrash/ICrashCallback;

.field r:Z

.field s:Z

.field t:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcn/fly/tools/xcrash/XCrash$a;->a:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcn/fly/tools/xcrash/XCrash$a;->b:Ljava/lang/String;

    .line 8
    .line 9
    const/16 v1, 0x1388

    .line 10
    .line 11
    iput v1, p0, Lcn/fly/tools/xcrash/XCrash$a;->c:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lcn/fly/tools/xcrash/XCrash$a;->d:I

    .line 15
    .line 16
    const/16 v2, 0x80

    .line 17
    .line 18
    iput v2, p0, Lcn/fly/tools/xcrash/XCrash$a;->e:I

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    iput-boolean v2, p0, Lcn/fly/tools/xcrash/XCrash$a;->f:Z

    .line 22
    .line 23
    iput-boolean v2, p0, Lcn/fly/tools/xcrash/XCrash$a;->g:Z

    .line 24
    .line 25
    const/16 v3, 0xa

    .line 26
    .line 27
    iput v3, p0, Lcn/fly/tools/xcrash/XCrash$a;->h:I

    .line 28
    .line 29
    iput v3, p0, Lcn/fly/tools/xcrash/XCrash$a;->i:I

    .line 30
    .line 31
    iput v3, p0, Lcn/fly/tools/xcrash/XCrash$a;->j:I

    .line 32
    .line 33
    const/16 v4, 0x1e

    .line 34
    .line 35
    iput v4, p0, Lcn/fly/tools/xcrash/XCrash$a;->k:I

    .line 36
    .line 37
    iput-boolean v1, p0, Lcn/fly/tools/xcrash/XCrash$a;->l:Z

    .line 38
    .line 39
    iput-boolean v1, p0, Lcn/fly/tools/xcrash/XCrash$a;->m:Z

    .line 40
    .line 41
    iput-boolean v2, p0, Lcn/fly/tools/xcrash/XCrash$a;->n:Z

    .line 42
    .line 43
    iput v1, p0, Lcn/fly/tools/xcrash/XCrash$a;->o:I

    .line 44
    .line 45
    iput-object v0, p0, Lcn/fly/tools/xcrash/XCrash$a;->p:[Ljava/lang/String;

    .line 46
    .line 47
    iput-object v0, p0, Lcn/fly/tools/xcrash/XCrash$a;->q:Lcn/fly/tools/xcrash/ICrashCallback;

    .line 48
    .line 49
    iput-boolean v2, p0, Lcn/fly/tools/xcrash/XCrash$a;->r:Z

    .line 50
    .line 51
    iput-boolean v2, p0, Lcn/fly/tools/xcrash/XCrash$a;->s:Z

    .line 52
    .line 53
    iput v3, p0, Lcn/fly/tools/xcrash/XCrash$a;->t:I

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public a(I)Lcn/fly/tools/xcrash/XCrash$a;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    iput p1, p0, Lcn/fly/tools/xcrash/XCrash$a;->c:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcn/fly/tools/xcrash/XCrash$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/xcrash/XCrash$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcn/fly/tools/xcrash/XCrash$a;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcn/fly/tools/xcrash/XCrash$a;->g:Z

    return-object p0
.end method

.method public b(I)Lcn/fly/tools/xcrash/XCrash$a;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    iput p1, p0, Lcn/fly/tools/xcrash/XCrash$a;->d:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcn/fly/tools/xcrash/XCrash$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/xcrash/XCrash$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcn/fly/tools/xcrash/XCrash$a;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcn/fly/tools/xcrash/XCrash$a;->s:Z

    return-object p0
.end method

.method public c(I)Lcn/fly/tools/xcrash/XCrash$a;
    .locals 0

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    :cond_0
    iput p1, p0, Lcn/fly/tools/xcrash/XCrash$a;->e:I

    .line 5
    .line 6
    return-object p0
.end method

.method public d(I)Lcn/fly/tools/xcrash/XCrash$a;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    :cond_0
    iput p1, p0, Lcn/fly/tools/xcrash/XCrash$a;->h:I

    .line 6
    .line 7
    return-object p0
.end method

.method public e(I)Lcn/fly/tools/xcrash/XCrash$a;
    .locals 0

    .line 1
    iput p1, p0, Lcn/fly/tools/xcrash/XCrash$a;->i:I

    .line 2
    .line 3
    return-object p0
.end method

.method public f(I)Lcn/fly/tools/xcrash/XCrash$a;
    .locals 0

    .line 1
    iput p1, p0, Lcn/fly/tools/xcrash/XCrash$a;->j:I

    .line 2
    .line 3
    return-object p0
.end method

.method public g(I)Lcn/fly/tools/xcrash/XCrash$a;
    .locals 0

    .line 1
    iput p1, p0, Lcn/fly/tools/xcrash/XCrash$a;->k:I

    .line 2
    .line 3
    return-object p0
.end method

.method public h(I)Lcn/fly/tools/xcrash/XCrash$a;
    .locals 0

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    :cond_0
    iput p1, p0, Lcn/fly/tools/xcrash/XCrash$a;->o:I

    .line 5
    .line 6
    return-object p0
.end method

.method public i(I)Lcn/fly/tools/xcrash/XCrash$a;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    :cond_0
    iput p1, p0, Lcn/fly/tools/xcrash/XCrash$a;->t:I

    .line 6
    .line 7
    return-object p0
.end method
