.class Lnet/lucode/hackware/magicindicator/b$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lucode/hackware/magicindicator/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lnet/lucode/hackware/magicindicator/b;


# direct methods
.method constructor <init>(Lnet/lucode/hackware/magicindicator/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/b$a;->b:Lnet/lucode/hackware/magicindicator/b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/b$a;->b:Lnet/lucode/hackware/magicindicator/b;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lnet/lucode/hackware/magicindicator/b;->a(Lnet/lucode/hackware/magicindicator/b;I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/b$a;->b:Lnet/lucode/hackware/magicindicator/b;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Lnet/lucode/hackware/magicindicator/b;->b(Lnet/lucode/hackware/magicindicator/b;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    .line 13
    return-void
.end method
