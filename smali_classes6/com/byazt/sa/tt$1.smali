.class public Lcom/byazt/sa/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sz/a;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x31b,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sa/tt;->c(Lcom/byazt/sz/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/sa/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/sa/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sa/tt$1;->c:Lcom/byazt/sa/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/xj/ve;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/pm/a$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p1, "tap"

    .line 2
    .line 3
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-string p1, "slide"

    .line 10
    .line 11
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p1, "touchStart"

    .line 18
    .line 19
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const-string p1, "touchEnd"

    .line 26
    .line 27
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/byazt/sa/tt$1;->c:Lcom/byazt/sa/tt;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/byazt/sa/tt;->c(Lcom/byazt/sa/tt;)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/byazt/sa/tt$1;->c:Lcom/byazt/sa/tt;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/byazt/sa/tt;->tt(Lcom/byazt/sa/tt;)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/byazt/nw/Swiper;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/byazt/nw/BaseSwiper;->n()V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method
