.class public Lcom/google/android/material/color/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/q$b;
    }
.end annotation


# instance fields
.field private final a:[I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/google/android/material/color/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/material/color/q$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/material/color/q$b;->a(Lcom/google/android/material/color/q$b;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/q;->a:[I

    .line 4
    invoke-static {p1}, Lcom/google/android/material/color/q$b;->b(Lcom/google/android/material/color/q$b;)Lcom/google/android/material/color/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/q;->b:Lcom/google/android/material/color/o;

    .line 5
    invoke-static {p1}, Lcom/google/android/material/color/q$b;->c(Lcom/google/android/material/color/q$b;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/color/q;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/color/q$b;Lcom/google/android/material/color/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/q;-><init>(Lcom/google/android/material/color/q$b;)V

    return-void
.end method

.method public static a()Lcom/google/android/material/color/q;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/color/q$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/material/color/q$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/material/color/o;->c()Lcom/google/android/material/color/o;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/q$b;->f(Lcom/google/android/material/color/o;)Lcom/google/android/material/color/q$b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/material/color/q$b;->d()Lcom/google/android/material/color/q;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/color/q;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Lcom/google/android/material/color/o;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/q;->b:Lcom/google/android/material/color/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()[I
    .locals 1
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/q;->a:[I

    .line 2
    .line 3
    return-object v0
.end method

.method e(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/q;->b:Lcom/google/android/material/color/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/color/o;->e()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/material/color/q;->b:Lcom/google/android/material/color/o;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/material/color/o;->e()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :cond_0
    return p1
.end method
