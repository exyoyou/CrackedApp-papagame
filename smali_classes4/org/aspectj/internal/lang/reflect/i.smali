.class public Lorg/aspectj/internal/lang/reflect/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/o;


# instance fields
.field private a:Lad/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lad/c<",
            "*>;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field private c:Lad/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lad/c<",
            "*>;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(Lad/c;Lad/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lad/c<",
            "*>;",
            "Lad/c<",
            "*>;I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/i;->a:Lad/c;

    .line 8
    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/i;->c:Lad/c;

    .line 9
    invoke-interface {p2}, Lad/c;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/i;->b:Ljava/lang/String;

    .line 10
    iput p3, p0, Lorg/aspectj/internal/lang/reflect/i;->d:I

    return-void
.end method

.method public constructor <init>(Lad/c;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lad/c<",
            "*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/i;->a:Lad/c;

    .line 3
    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/i;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lorg/aspectj/internal/lang/reflect/i;->d:I

    .line 5
    :try_start_0
    invoke-interface {p1}, Lad/c;->H()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/aspectj/internal/lang/reflect/q;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Lad/c;

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/i;->c:Lad/c;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a()Lad/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lad/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/i;->a:Lad/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/aspectj/internal/lang/reflect/i;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public h()Lad/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lad/c<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/i;->c:Lad/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/ClassNotFoundException;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/i;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method
