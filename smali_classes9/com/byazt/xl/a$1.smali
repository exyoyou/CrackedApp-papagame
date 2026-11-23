.class public Lcom/byazt/xl/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xl/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5b3,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xl/a;->c(Lcom/byazt/xl/da$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xl/da$c;

.field public final synthetic tt:Lcom/byazt/xl/a;


# direct methods
.method public constructor <init>(Lcom/byazt/xl/a;Lcom/byazt/xl/da$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xl/a$1;->tt:Lcom/byazt/xl/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/xl/a$1;->c:Lcom/byazt/xl/da$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 0

    .line 5
    iget-object p2, p0, Lcom/byazt/xl/a$1;->c:Lcom/byazt/xl/da$c;

    invoke-interface {p2}, Lcom/byazt/xl/da$c;->tt()Lcom/byazt/xl/z;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    invoke-interface {p2, p1}, Lcom/byazt/xl/z;->a_(I)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Lcom/byazt/xl/yp;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/xl/a$1;->c:Lcom/byazt/xl/da$c;

    invoke-interface {p1}, Lcom/byazt/xl/da$c;->ve()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/byazt/xl/a$1;->c:Lcom/byazt/xl/da$c;

    invoke-interface {p1}, Lcom/byazt/xl/da$c;->tt()Lcom/byazt/xl/z;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/byazt/xl/a$1;->tt:Lcom/byazt/xl/a;

    invoke-static {v0}, Lcom/byazt/xl/a;->c(Lcom/byazt/xl/a;)Lcom/byazt/xl/c;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/byazt/xl/z;->c(Lcom/byazt/xl/uj;Lcom/byazt/xl/yp;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/byazt/xl/a$1;->c:Lcom/byazt/xl/da$c;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/byazt/xl/da$c;->c(Z)V

    return-void
.end method
