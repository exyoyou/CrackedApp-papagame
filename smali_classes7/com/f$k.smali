.class final Lcom/f$k;
.super Lcom/l$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# instance fields
.field private final a:Ldagger/hilt/android/internal/modules/c;

.field private final b:Lcom/f$k;


# direct methods
.method constructor <init>(Ldagger/hilt/android/internal/modules/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "applicationContextModuleParam"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/l$i;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/f$k;->b:Lcom/f$k;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/f$k;->a:Ldagger/hilt/android/internal/modules/c;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic e(Lcom/f$k;)Ldagger/hilt/android/internal/modules/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/f$k;->a:Ldagger/hilt/android/internal/modules/c;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()Lgb/d;
    .locals 3

    .line 1
    new-instance v0, Lcom/f$i;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/f$k;->b:Lcom/f$k;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/f$i;-><init>(Lcom/f$k;Lcom/f$a;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c(Lcom/MApplication;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mApplication"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public d()Lgb/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/f$d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/f$k;->b:Lcom/f$k;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/f$d;-><init>(Lcom/f$k;Lcom/f$a;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
