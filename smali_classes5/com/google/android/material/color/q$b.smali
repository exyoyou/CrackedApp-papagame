.class public Lcom/google/android/material/color/q$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:[I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Lcom/google/android/material/color/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:I
    .annotation build Landroidx/annotation/AttrRes;
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
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/material/color/q$b;->a:[I

    .line 8
    .line 9
    sget v0, Lcom/google/android/material/R$attr;->colorPrimary:I

    .line 10
    .line 11
    iput v0, p0, Lcom/google/android/material/color/q$b;->c:I

    .line 12
    .line 13
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/color/q$b;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/q$b;->a:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/color/q$b;)Lcom/google/android/material/color/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/color/q$b;->b:Lcom/google/android/material/color/o;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/color/q$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/color/q$b;->c:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public d()Lcom/google/android/material/color/q;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/color/q;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/color/q;-><init>(Lcom/google/android/material/color/q$b;Lcom/google/android/material/color/q$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public e(I)Lcom/google/android/material/color/q$b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/q$b;->c:I

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Lcom/google/android/material/color/o;)Lcom/google/android/material/color/q$b;
    .locals 0
    .param p1    # Lcom/google/android/material/color/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/color/q$b;->b:Lcom/google/android/material/color/o;

    .line 2
    .line 3
    return-object p0
.end method

.method public g([I)Lcom/google/android/material/color/q$b;
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/color/q$b;->a:[I

    .line 2
    .line 3
    return-object p0
.end method
