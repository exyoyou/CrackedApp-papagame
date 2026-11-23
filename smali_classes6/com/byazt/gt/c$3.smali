.class public Lcom/byazt/gt/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc3,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gt/c;->c(Lcom/byazt/vn/RoundImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/vn/RoundImageView;

.field public final synthetic tt:Lcom/byazt/gt/c;


# direct methods
.method public constructor <init>(Lcom/byazt/gt/c;Lcom/byazt/vn/RoundImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/byazt/gt/c$3;->tt:Lcom/byazt/gt/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/gt/c$3;->c:Lcom/byazt/vn/RoundImageView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/gt/c$3;->tt:Lcom/byazt/gt/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/gt/c;->z(Lcom/byazt/gt/c;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/gt/c$3;->tt:Lcom/byazt/gt/c;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/gt/c;->m(Lcom/byazt/gt/c;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/byazt/gt/YogaLayout;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/byazt/gt/c$3;->c:Lcom/byazt/vn/RoundImageView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout;->c(Landroid/view/View;)Lcom/byazt/bj/da;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/byazt/gt/c$3;->tt:Lcom/byazt/gt/c;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/byazt/gt/c;->nu(Lcom/byazt/gt/c;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    int-to-float v2, v1

    .line 38
    invoke-virtual {v0, v2}, Lcom/byazt/bj/da;->uj(F)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/byazt/gt/c$3;->tt:Lcom/byazt/gt/c;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/byazt/gt/c;->rh(Lcom/byazt/gt/c;)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    int-to-float v3, v2

    .line 52
    invoke-virtual {v0, v3}, Lcom/byazt/bj/da;->a(F)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/byazt/gt/c$3;->c:Lcom/byazt/vn/RoundImageView;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/byazt/gt/c$3;->tt:Lcom/byazt/gt/c;

    .line 58
    .line 59
    invoke-static {v3}, Lcom/byazt/gt/c;->my(Lcom/byazt/gt/c;)F

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {v0, v3}, Lcom/byazt/vn/RoundImageView;->setCornerRadius(F)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/byazt/gt/c$3;->tt:Lcom/byazt/gt/c;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/byazt/gt/c;->gt(Lcom/byazt/gt/c;)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 73
    .line 74
    .line 75
    if-gtz v1, :cond_2

    .line 76
    .line 77
    if-lez v2, :cond_3

    .line 78
    .line 79
    :cond_2
    iget-object v0, p0, Lcom/byazt/gt/c$3;->tt:Lcom/byazt/gt/c;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/byazt/gt/c;->rl(Lcom/byazt/gt/c;)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    return-void
.end method
