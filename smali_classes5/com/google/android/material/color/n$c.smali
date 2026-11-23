.class public Lcom/google/android/material/color/n$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private b:Lcom/google/android/material/color/m$f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/google/android/material/color/m$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private d:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/material/color/n;->a()Lcom/google/android/material/color/m$f;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/material/color/n$c;->b:Lcom/google/android/material/color/m$f;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/material/color/n;->b()Lcom/google/android/material/color/m$e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/material/color/n$c;->c:Lcom/google/android/material/color/m$e;

    .line 15
    .line 16
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/color/n$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/color/n$c;->a:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/google/android/material/color/n$c;)Lcom/google/android/material/color/m$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/n$c;->b:Lcom/google/android/material/color/m$f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/color/n$c;)Lcom/google/android/material/color/m$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/n$c;->c:Lcom/google/android/material/color/m$e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/color/n$c;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/n$c;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/color/n$c;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/n$c;->d:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public f()Lcom/google/android/material/color/n;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/color/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/color/n;-><init>(Lcom/google/android/material/color/n$c;Lcom/google/android/material/color/n$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public g(I)Lcom/google/android/material/color/n$c;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/color/n$c;->d:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/material/color/n$c;->e:Ljava/lang/Integer;

    .line 9
    .line 10
    return-object p0
.end method

.method public h(Landroid/graphics/Bitmap;)Lcom/google/android/material/color/n$c;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/color/n$c;->d:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/material/color/n$c;->e:Ljava/lang/Integer;

    .line 5
    .line 6
    return-object p0
.end method

.method public i(Lcom/google/android/material/color/m$e;)Lcom/google/android/material/color/n$c;
    .locals 0
    .param p1    # Lcom/google/android/material/color/m$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/color/n$c;->c:Lcom/google/android/material/color/m$e;

    .line 2
    .line 3
    return-object p0
.end method

.method public j(Lcom/google/android/material/color/m$f;)Lcom/google/android/material/color/n$c;
    .locals 0
    .param p1    # Lcom/google/android/material/color/m$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/color/n$c;->b:Lcom/google/android/material/color/m$f;

    .line 2
    .line 3
    return-object p0
.end method

.method public k(I)Lcom/google/android/material/color/n$c;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/n$c;->a:I

    .line 2
    .line 3
    return-object p0
.end method
