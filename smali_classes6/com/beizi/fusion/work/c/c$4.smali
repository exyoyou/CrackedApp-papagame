.class Lcom/beizi/fusion/work/c/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/c/c;->a(Lcom/beizi/ad/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/work/c/c;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/c/c$4;->a:Lcom/beizi/fusion/work/c/c;

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
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/beizi/fusion/work/c/c$4;->a:Lcom/beizi/fusion/work/c/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/beizi/fusion/work/c/a;->aD()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/beizi/fusion/work/c/c$4;->a:Lcom/beizi/fusion/work/c/c;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p1, Lcom/beizi/fusion/work/c/a;->U:Z

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    new-array v1, v1, [Ljava/lang/String;

    .line 16
    .line 17
    iget p1, p1, Lcom/beizi/fusion/work/c/a;->F:F

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    aput-object p1, v1, v0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/beizi/fusion/work/c/c$4;->a:Lcom/beizi/fusion/work/c/c;

    .line 26
    .line 27
    iget p1, p1, Lcom/beizi/fusion/work/c/a;->G:F

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v2, 0x1

    .line 34
    aput-object p1, v1, v2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/beizi/fusion/work/c/c$4;->a:Lcom/beizi/fusion/work/c/c;

    .line 37
    .line 38
    iget p1, p1, Lcom/beizi/fusion/work/c/a;->H:F

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v2, 0x2

    .line 45
    aput-object p1, v1, v2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/beizi/fusion/work/c/c$4;->a:Lcom/beizi/fusion/work/c/c;

    .line 48
    .line 49
    iget p1, p1, Lcom/beizi/fusion/work/c/a;->I:F

    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/4 v2, 0x3

    .line 56
    aput-object p1, v1, v2

    .line 57
    .line 58
    iget-object p1, p0, Lcom/beizi/fusion/work/c/c$4;->a:Lcom/beizi/fusion/work/c/c;

    .line 59
    .line 60
    invoke-virtual {p1, v1, v0}, Lcom/beizi/fusion/work/c/a;->a([Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/beizi/fusion/work/c/c$4;->a:Lcom/beizi/fusion/work/c/c;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/beizi/fusion/work/c/a;->aE()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method
