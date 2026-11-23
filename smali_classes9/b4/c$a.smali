.class public Lb4/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public e:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public f:Landroid/net/Uri;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public g:I

.field public h:I

.field public i:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public j:F

.field public k:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lb4/c$a;->g:I

    .line 6
    .line 7
    iput v0, p0, Lb4/c$a;->h:I

    .line 8
    .line 9
    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    .line 11
    iput v0, p0, Lb4/c$a;->j:F

    .line 12
    .line 13
    iput v0, p0, Lb4/c$a;->k:F

    .line 14
    .line 15
    return-void
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Lcom/facebook/infer/annotation/PropagatesNullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static c(Ljava/util/Map;)Lb4/c$a;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentExtras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lb4/c$a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb4/c$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lb4/c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lb4/c$a;->a:Ljava/util/Map;

    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public b()Lb4/c$a;
    .locals 2

    .line 1
    new-instance v0, Lb4/c$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lb4/c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lb4/c$a;->a:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {v1}, Lb4/c$a;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lb4/c$a;->a:Ljava/util/Map;

    .line 13
    .line 14
    iget-object v1, p0, Lb4/c$a;->b:Ljava/util/Map;

    .line 15
    .line 16
    invoke-static {v1}, Lb4/c$a;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lb4/c$a;->b:Ljava/util/Map;

    .line 21
    .line 22
    iget-object v1, p0, Lb4/c$a;->c:Ljava/util/Map;

    .line 23
    .line 24
    invoke-static {v1}, Lb4/c$a;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lb4/c$a;->c:Ljava/util/Map;

    .line 29
    .line 30
    iget-object v1, p0, Lb4/c$a;->d:Ljava/util/Map;

    .line 31
    .line 32
    invoke-static {v1}, Lb4/c$a;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lb4/c$a;->d:Ljava/util/Map;

    .line 37
    .line 38
    iget-object v1, p0, Lb4/c$a;->e:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object v1, v0, Lb4/c$a;->e:Ljava/lang/Object;

    .line 41
    .line 42
    iget-object v1, p0, Lb4/c$a;->f:Landroid/net/Uri;

    .line 43
    .line 44
    iput-object v1, v0, Lb4/c$a;->f:Landroid/net/Uri;

    .line 45
    .line 46
    iget v1, p0, Lb4/c$a;->g:I

    .line 47
    .line 48
    iput v1, v0, Lb4/c$a;->g:I

    .line 49
    .line 50
    iget v1, p0, Lb4/c$a;->h:I

    .line 51
    .line 52
    iput v1, v0, Lb4/c$a;->h:I

    .line 53
    .line 54
    iget-object v1, p0, Lb4/c$a;->i:Ljava/lang/Object;

    .line 55
    .line 56
    iput-object v1, v0, Lb4/c$a;->i:Ljava/lang/Object;

    .line 57
    .line 58
    iget v1, p0, Lb4/c$a;->j:F

    .line 59
    .line 60
    iput v1, v0, Lb4/c$a;->j:F

    .line 61
    .line 62
    iget v1, p0, Lb4/c$a;->k:F

    .line 63
    .line 64
    iput v1, v0, Lb4/c$a;->k:F

    .line 65
    .line 66
    return-object v0
.end method
