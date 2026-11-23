.class public final Lcom/f$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field private a:Ldagger/hilt/android/internal/modules/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/f$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldagger/hilt/android/internal/modules/c;)Lcom/f$f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "applicationContextModule"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ldagger/internal/k;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ldagger/hilt/android/internal/modules/c;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/f$f;->a:Ldagger/hilt/android/internal/modules/c;

    .line 8
    .line 9
    return-object p0
.end method

.method public b()Lcom/l$i;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/f$f;->a:Ldagger/hilt/android/internal/modules/c;

    .line 2
    .line 3
    const-class v1, Ldagger/hilt/android/internal/modules/c;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ldagger/internal/k;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/f$k;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/f$f;->a:Ldagger/hilt/android/internal/modules/c;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/f$k;-><init>(Ldagger/hilt/android/internal/modules/c;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
