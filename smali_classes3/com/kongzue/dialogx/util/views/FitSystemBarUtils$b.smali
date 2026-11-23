.class Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->q(Landroid/view/View;ZZZZ)Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Z


# direct methods
.method constructor <init>(ZZZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$b;->a:Z

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$b;->b:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$b;->c:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$b;->d:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$f;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_0
    iget-boolean p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$b;->d:Z

    .line 24
    .line 25
    return p1

    .line 26
    :cond_1
    iget-boolean p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$b;->c:Z

    .line 27
    .line 28
    return p1

    .line 29
    :cond_2
    iget-boolean p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$b;->b:Z

    .line 30
    .line 31
    return p1

    .line 32
    :cond_3
    iget-boolean p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$b;->a:Z

    .line 33
    .line 34
    return p1
.end method
