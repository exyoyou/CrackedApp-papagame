.class Lcom/facebook/rebound/ui/SpringConfiguratorView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/rebound/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/ui/SpringConfiguratorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/rebound/ui/SpringConfiguratorView;


# direct methods
.method private constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$c;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/rebound/ui/SpringConfiguratorView$c;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/rebound/i;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/facebook/rebound/i;->f()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    double-to-float p1, v0

    .line 6
    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$c;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->d(Lcom/facebook/rebound/ui/SpringConfiguratorView;)F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$c;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->e(Lcom/facebook/rebound/ui/SpringConfiguratorView;)F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-float/2addr v1, v0

    .line 19
    mul-float p1, p1, v1

    .line 20
    .line 21
    add-float/2addr p1, v0

    .line 22
    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$c;->b:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public b(Lcom/facebook/rebound/i;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/facebook/rebound/i;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Lcom/facebook/rebound/i;)V
    .locals 0

    .line 1
    return-void
.end method
