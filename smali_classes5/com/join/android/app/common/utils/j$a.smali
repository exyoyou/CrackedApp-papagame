.class public Lcom/join/android/app/common/utils/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/utils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "swDp",
            "wBaseDp"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/android/app/common/utils/j$a;->a:I

    .line 5
    .line 6
    iput p2, p0, Lcom/join/android/app/common/utils/j$a;->b:I

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Lcom/join/android/app/common/utils/j$a;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/utils/j$a;->c()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic b(Lcom/join/android/app/common/utils/j$a;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/utils/j$a;->d()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/utils/j$a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method private d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/utils/j$a;->b:I

    .line 2
    .line 3
    return v0
.end method
