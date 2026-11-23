.class public Lcom/byazt/uo/tt$4;
.super Lcom/byazt/ouz/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x5f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uo/tt;->ve(Lcom/byazt/gat/uj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gat/uj;

.field public final synthetic tt:Lcom/byazt/uo/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/uo/tt;Lcom/byazt/gat/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/uo/tt$4;->c:Lcom/byazt/gat/uj;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/ouz/c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;FF)V
    .locals 2

    const-string v0, "Splash_FullLink"

    const-string v1, "CSJSplashExpressRender- onRenderSuccess"

    .line 9
    invoke-static {v0, v1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/byazt/uo/tt$4$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/byazt/uo/tt$4$3;-><init>(Lcom/byazt/uo/tt$4;Landroid/view/View;FF)V

    .line 11
    new-instance p1, Lcom/byazt/uo/tt$4$4;

    invoke-direct {p1, p0, v0}, Lcom/byazt/uo/tt$4$4;-><init>(Lcom/byazt/uo/tt$4;Ljava/lang/Runnable;)V

    invoke-static {p1}, Lcom/byazt/cc/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    invoke-virtual {p1}, Lcom/byazt/uo/c;->i()V

    .line 2
    iget-object p1, p0, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    iget-wide v0, p1, Lcom/byazt/uo/c;->m:J

    iget-object p1, p1, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0, v1, p1}, Lcom/byazt/ddx/uj;->tt(JLcom/byazt/ete/ic;)V

    .line 3
    iget-object p1, p0, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    iget-object p2, p1, Lcom/byazt/uo/c;->x:Lcom/byazt/vw/c;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Lcom/byazt/vw/c;->tt(Lcom/byazt/nc/tt;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    invoke-virtual {p1}, Lcom/byazt/uo/c;->tt()V

    .line 6
    iget-object p1, p0, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    invoke-virtual {p1}, Lcom/byazt/uo/tt;->a()V

    return-void
.end method

.method public c(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 7
    new-instance p1, Lcom/byazt/uo/tt$4$1;

    invoke-direct {p1, p0, p2}, Lcom/byazt/uo/tt$4$1;-><init>(Lcom/byazt/uo/tt$4;Ljava/lang/String;)V

    .line 8
    new-instance p2, Lcom/byazt/uo/tt$4$2;

    invoke-direct {p2, p0, p1}, Lcom/byazt/uo/tt$4$2;-><init>(Lcom/byazt/uo/tt$4;Ljava/lang/Runnable;)V

    invoke-static {p2}, Lcom/byazt/cc/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method
