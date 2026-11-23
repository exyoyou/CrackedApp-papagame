.class final Lcom/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/l$c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/f$k;

.field private b:Ldagger/hilt/android/internal/managers/n;


# direct methods
.method private constructor <init>(Lcom/f$k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singletonCImpl"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/f$d;->a:Lcom/f$k;

    return-void
.end method

.method synthetic constructor <init>(Lcom/f$k;Lcom/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/f$d;-><init>(Lcom/f$k;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ldagger/hilt/android/internal/managers/n;)Lgb/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "savedStateHandleHolder"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/f$d;->c(Ldagger/hilt/android/internal/managers/n;)Lcom/f$d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b()Lcom/l$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/f$d;->b:Ldagger/hilt/android/internal/managers/n;

    .line 2
    .line 3
    const-class v1, Ldagger/hilt/android/internal/managers/n;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ldagger/internal/k;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/f$e;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/f$d;->a:Lcom/f$k;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/f$d;->b:Ldagger/hilt/android/internal/managers/n;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lcom/f$e;-><init>(Lcom/f$k;Ldagger/hilt/android/internal/managers/n;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public bridge synthetic build()Leb/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/f$d;->b()Lcom/l$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c(Ldagger/hilt/android/internal/managers/n;)Lcom/f$d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedStateHandleHolder"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ldagger/internal/k;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ldagger/hilt/android/internal/managers/n;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/f$d;->b:Ldagger/hilt/android/internal/managers/n;

    .line 8
    .line 9
    return-object p0
.end method
