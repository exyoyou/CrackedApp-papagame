.class Lorg/aspectj/runtime/internal/cflowstack/f$a;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"

# interfaces
.implements Lorg/aspectj/runtime/internal/cflowstack/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aspectj/runtime/internal/cflowstack/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aspectj/runtime/internal/cflowstack/f$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/aspectj/runtime/internal/cflowstack/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/cflowstack/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/aspectj/runtime/internal/cflowstack/f$a;->e()Lorg/aspectj/runtime/internal/cflowstack/f$a$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lorg/aspectj/runtime/internal/cflowstack/f$a$a;->a:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    iput v1, v0, Lorg/aspectj/runtime/internal/cflowstack/f$a$a;->a:I

    .line 10
    .line 11
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/aspectj/runtime/internal/cflowstack/f$a;->e()Lorg/aspectj/runtime/internal/cflowstack/f$a$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lorg/aspectj/runtime/internal/cflowstack/f$a$a;->a:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iput v1, v0, Lorg/aspectj/runtime/internal/cflowstack/f$a$a;->a:I

    .line 10
    .line 11
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/aspectj/runtime/internal/cflowstack/f$a;->e()Lorg/aspectj/runtime/internal/cflowstack/f$a$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lorg/aspectj/runtime/internal/cflowstack/f$a$a;->a:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public e()Lorg/aspectj/runtime/internal/cflowstack/f$a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/aspectj/runtime/internal/cflowstack/f$a$a;

    .line 6
    .line 7
    return-object v0
.end method

.method public initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/f$a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/f$a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
