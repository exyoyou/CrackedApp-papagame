.class public Lnotchtools/geek/com/notchtools/core/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lnotchtools/geek/com/notchtools/core/c;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lnotchtools/geek/com/notchtools/core/c;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnotchtools/geek/com/notchtools/core/c;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnotchtools/geek/com/notchtools/core/c;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnotchtools/geek/com/notchtools/core/c;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnotchtools/geek/com/notchtools/core/c;->a:I

    .line 2
    .line 3
    return-void
.end method
