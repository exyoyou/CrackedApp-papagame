.class Lcom/beizi/fusion/work/splash/a$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/splash/a;->aI()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/work/splash/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/splash/a$17;->a:Lcom/beizi/fusion/work/splash/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a$17;->a:Lcom/beizi/fusion/work/splash/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/beizi/fusion/work/splash/a;->ax(Lcom/beizi/fusion/work/splash/a;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a$17;->a:Lcom/beizi/fusion/work/splash/a;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/beizi/fusion/work/splash/a;->ay(Lcom/beizi/fusion/work/splash/a;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a$17;->a:Lcom/beizi/fusion/work/splash/a;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {p1, v0}, Lcom/beizi/fusion/work/splash/a;->f(Lcom/beizi/fusion/work/splash/a;Z)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a$17;->a:Lcom/beizi/fusion/work/splash/a;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/beizi/fusion/work/splash/a;->az(Lcom/beizi/fusion/work/splash/a;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a$17;->a:Lcom/beizi/fusion/work/splash/a;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/beizi/fusion/work/splash/a;->d(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/ad/v2/g/a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a$17;->a:Lcom/beizi/fusion/work/splash/a;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/beizi/fusion/work/splash/a;->d(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/ad/v2/g/a;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/beizi/ad/v2/a/a;->e()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a$17;->a:Lcom/beizi/fusion/work/splash/a;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/beizi/fusion/work/splash/a;->aA(Lcom/beizi/fusion/work/splash/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method
